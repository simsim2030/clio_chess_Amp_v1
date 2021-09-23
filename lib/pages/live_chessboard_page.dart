// Live chessboard page after pressing connect

import 'dart:async';
import 'dart:convert' show utf8;
import 'package:flutter/foundation.dart';

import 'package:flutter/material.dart';
import 'package:flutter_blue/flutter_blue.dart';

import 'dart:math';
import 'package:flutter_stateless_chessboard/flutter_stateless_chessboard.dart'
    as cb;
import '../chess/utils.dart';

class LiveChessboardPage extends StatefulWidget {
  const LiveChessboardPage({Key key, this.device}) : super(key: key);
  final BluetoothDevice device;

  @override
  _LiveChessboardPageState createState() => _LiveChessboardPageState();
}

class _LiveChessboardPageState extends State<LiveChessboardPage> {
  final String SERVICE_UUID = "0000ffe0-0000-1000-8000-00805f9b34fb";
  final String CHARACTERISTIC_UUID = "0000ffe1-0000-1000-8000-00805f9b34fb";
  bool isReady;
  Stream<List<int>> stream;
  // List<double> traceDust = List();

  @override
  void initState() {
    super.initState();
    isReady = false;
    connectToDevice();
  }

  connectToDevice() async {
    if (widget.device == null) {
      _Pop();
      return;
    }

    new Timer(const Duration(seconds: 15), () {
      if (!isReady) {
        disconnectFromDevice();
        _Pop();
      }
    });

    await widget.device.connect();
    discoverServices();
  }

  disconnectFromDevice() {
    if (widget.device == null) {
      _Pop();
      return;
    }

    widget.device.disconnect();
  }

  discoverServices() async {
    if (widget.device == null) {
      _Pop();
      return;
    }

    List<BluetoothService> services = await widget.device.discoverServices();
    services.forEach((service) {
      if (service.uuid.toString() == SERVICE_UUID) {
        service.characteristics.forEach((characteristic) {
          if (characteristic.uuid.toString() == CHARACTERISTIC_UUID) {
            characteristic.setNotifyValue(!characteristic.isNotifying);
            stream = characteristic.value;

            setState(() {
              isReady = true;
            });
          }
        });
      }
    });

    if (!isReady) {
      _Pop();
    }
  }

  Future<bool> _onWillPop() {
    return showDialog(
        context: context,
        builder: (context) =>
            new AlertDialog(
              title: Text('Are you sure?'),
              content: Text('Do you want to disconnect device and go back?'),
              actions: <Widget>[
                new FlatButton(
                    onPressed: () => Navigator.of(context).pop(false),
                    child: new Text('No')),
                new FlatButton(
                    onPressed: () {
                      disconnectFromDevice();
                      Navigator.of(context).pop(true);
                    },
                    child: new Text('Yes')),
              ],
            ) ??
            false);
  }

  _Pop() {
    Navigator.of(context).pop(true);
  }

  String _dataParser(List<int> dataFromDevice) {
    return utf8.decode(dataFromDevice);
  }

  String _fen = 'rnbqkbnr/pppppppp/8/8/8/8/PPPPPPPP/RNBQKBNR w KQkq - 0 1';

  @override
  Widget build(BuildContext context) {
    final viewport = MediaQuery.of(context).size;
    final size = min(viewport.height, viewport.width);

    return WillPopScope(
      onWillPop: _onWillPop,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Live Chessboard'),
        ),
        body: Container(
            child: !isReady
                ? Center(
                    child: Text(
                      "Waiting...",
                      style: TextStyle(fontSize: 24, color: Colors.red),
                    ),
                  )
                : Container(
                    child: StreamBuilder<List<int>>(
                      stream: stream,
                      builder: (BuildContext context,
                          AsyncSnapshot<List<int>> snapshot) {
                        if (snapshot.hasError)
                          return Text('Error: ${snapshot.error}');

                        if (snapshot.connectionState ==
                            ConnectionState.active) {
                          var currentValue = _dataParser(snapshot.data);
                          final _nextmove = '${currentValue}';
                          var _from = '';
                          var _to = '';
                          if (currentValue.length == 5) {
                            _from = _nextmove.substring(0, 2);
                            _to = _nextmove.substring(2, 4);
                          }
                          final nextFen = makeMove(_fen, {
                            'from': _from,
                            'to': _to,
                            'promotion': 'q',
                          });
                          // if condition met -> board update
                          if (nextFen != null) {
                            _fen = nextFen;
                          }
                          return Center(
                            child: ListView(
                              children: <Widget>[
                                Expanded(
                                  flex: 1,
                                  child: cb.Chessboard(
                                    fen: _fen,
                                    size: size,
                                    orientation: cb.Color.WHITE,
                                    onMove: (move) {},
                                  ),
                                ),
                                Expanded(
                                  flex: 1,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Padding(
                                        padding: const EdgeInsets.all(32),
                                        child: Text(
                                          '${currentValue}, ${_from}, ${_to}',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 24),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          );
                        } else {
                          return Text('Check the stream');
                        }
                      },
                    ),
                  )),
      ),
    );
  }
}

// import 'package:flutter/material.dart';
// class scanQR extends StatefulWidget {
//   const scanQR({super.key});
//
//   @override
//   State<scanQR> createState() => _scanQRState();
// }
//
// class _scanQRState extends State<scanQR> {
//   @override
//   Widget build(BuildContext context) {
//     return  SafeArea(
//       child: Scaffold(body: Column(children: [
//         Text("Scan QR Code"),
//       ],),),
//     );
//   }
// }


import 'package:flutter/material.dart';
import 'package:flutter_qr_bar_scanner/qr_bar_scanner_camera.dart';



class MyHomeP extends StatefulWidget {
  MyHomeP({Key? key, this.title}) : super(key: key);
  final String? title;
  @override
  _MyHomePState createState() => _MyHomePState();
}

class _MyHomePState extends State<MyHomeP> {
  String? _qrInfo = 'Scan a QR/Bar code';
  bool _camState = false;

  _qrCallback(String? code) {
    setState(() {
      _camState = false;
      _qrInfo = code;
    });
  }

  _scanCode() {
    setState(() {
      _camState = true;
    });
  }

  @override
  void initState() {
    super.initState();
    _scanCode();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
       // title: Text(widget.title),
      ),
      body: _camState
          ? Center(
        child: SizedBox(
          height: 300,
          width: 300,
          child: QRBarScannerCamera(
            onError: (context, error) => Text(
              error.toString(),
              style: TextStyle(color: Colors.red),
            ),
            qrCodeCallback: (code) {
              _qrCallback(code);
            },
          ),
        ),
      )
          : Center(
        child: Text(_qrInfo!),
      ),
    );
  }
}
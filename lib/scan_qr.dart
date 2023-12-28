import 'package:barcode_scan2/platform_wrapper.dart';
import 'package:flutter/material.dart';

class ScanQR extends StatefulWidget {
  @override
  _ScanQRState createState() => _ScanQRState();
}

class _ScanQRState extends State<ScanQR> {
  String qrCodeResult = "Not Yet Scanned";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Scan QR Code"),
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text(
              "Result",
              style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            Text(
              qrCodeResult,
              style: const TextStyle(
                fontSize: 20.0,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 20.0,
            ),
            TextButton(
              onPressed: () async {
                var codeSanner = await BarcodeScanner.scan(); //barcode scanner
                setState(() {
                  qrCodeResult = codeSanner as String;
                });
                TextButton.styleFrom(
                  padding: EdgeInsets.all(15),
                  shape: RoundedRectangleBorder(
                    side: BorderSide(color: Colors.indigo[900]!),
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                );
              },
              child: Text(
                "Open Scanner",
                style: TextStyle(color: Colors.indigo[900]),
              ),
              //Button having rounded rectangle border
            ),
          ],
        ),
      ),
    );
  }
}

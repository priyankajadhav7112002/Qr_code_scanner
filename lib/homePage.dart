import 'package:flutter/material.dart';
import 'package:qr_code_scanner/scan_qr.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      width: 500,
      height: 500,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          //Display Image
          Image(
              image: NetworkImage(
                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQQyYwscUPOH_qPPe8Hp0HAbFNMx-TxRFubpg&usqp=CAU")),

          //First Button
          TextButton(
            onPressed: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => ScanQR()));
            },
            style: TextButton.styleFrom(
              padding: EdgeInsets.all(15),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
                side: BorderSide(color: Colors.indigo[900]!),
              ),
            ),
            child: Text(
              "Scan QR Code",
              style: TextStyle(color: Colors.indigo[900]),
            ),
          ),
        ],
      ),
    ));
  }
}

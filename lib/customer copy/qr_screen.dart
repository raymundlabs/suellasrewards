import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';
import 'package:suellas/branch/scan.dart'; // Import the barcode scanner screen

class QRScreen extends StatelessWidget {
  final String qrData = "ABC123";
  final int rewardPoints = 40; // Replace with the actual user's reward points

  const QRScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.grey[200], // Set the background color
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              QrImage(
                data: qrData,
                version: QrVersions.auto,
                size: 250.0,
              ),
              const SizedBox(height: 16.0),
              const Text('Scan this QR code to pay using Rewards'),
              if (rewardPoints > 50)
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => BarcodeScannerScreen()),
                    );
                  },
                  child: Text('Scan to Pay with Rewards'),
                ),
            ],
          ),
        ),
      ),
    );
  }
}

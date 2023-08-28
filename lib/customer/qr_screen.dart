import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

class QRScreen extends StatelessWidget {
  final String qrData = "ABC123";

  const QRScreen({super.key}); // Replace with your unique data

  @override
  Widget build(BuildContext context) {
    return Scaffold(
  
      body: Container(
        color: Colors.grey[200], // Set the background color
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              QrImageView(
                data: qrData,
                version: QrVersions.auto,
                size: 250.0,
              ),
              const SizedBox(height: 16.0),
              const Text('Scan this QR code to pay using Rewards'),
            ],
          ),
        ),
      ),
    );
  }
}

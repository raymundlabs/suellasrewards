import 'package:flutter/material.dart';

class TransactionScreen extends StatelessWidget {
  const TransactionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Container(
       color: Colors.grey[200], // Set the background color
        child: ListView(
          padding: const EdgeInsets.all(8.0),
          children: const [
            TransactionContainer(
              color: Colors.white,
              shoeName: 'Nike Air Max 90',
              imageUrl: 'https://www.suellastheshoelaundry.com/wp-content/uploads/2020/02/basic-clean.png',
            ),
            TransactionContainer(
              color: Colors.white,
              shoeName: 'Adidas Ultraboost',
              imageUrl: 'https://www.suellastheshoelaundry.com/wp-content/uploads/2020/02/basic-clean.png',
            ),
            TransactionContainer(
              color: Colors.white,
              shoeName: 'Puma RS-X',
              imageUrl: 'https://www.suellastheshoelaundry.com/wp-content/uploads/2020/02/basic-clean.png',
            ),
          ],
        ),
      ),
    );
  }
}

class TransactionContainer extends StatelessWidget {
  final Color color;
  final String shoeName;
  final String imageUrl;

  const TransactionContainer({super.key, 
    required this.color,
    required this.shoeName,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 5.0),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(1.0),
      ),
      child: Row(
        children: [
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(10.0), // Padding for description
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    shoeName,
                    style: const TextStyle(
                      fontSize: 18,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(width: 16.0),
          Expanded(
            child: Image.network(
              imageUrl,
              width: double.infinity,
              height: 120,
              fit: BoxFit.cover,
            ),
          ),
        ],
      ),
    );
  }
}

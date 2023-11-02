import 'package:flutter/material.dart';

class BranchTransactionsScreen extends StatelessWidget {
  const BranchTransactionsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //  appBar: AppBar(
      //   title: const Text('Profile'),
      //   backgroundColor: const Color(0xFF1E464A),
      // ),
      body: Container(
        color: Colors.grey[200],
        child: ListView.builder(
          itemCount: branchTransactions.length,
          itemBuilder: (context, index) {
            return TransactionContainer(transaction: branchTransactions[index]);
          },
        ),
      ),
    );
  }
}

class TransactionContainer extends StatelessWidget {
  final Transaction transaction;

  const TransactionContainer({Key? key, required this.transaction}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 5.0),
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10.0),
        border: Border.all(color: Colors.grey[300]!),
      ),
      child: Row(
        children: [
          Icon(
            transaction.shoeIcon,
            color: transaction.shoeIconColor,
            size: 36,
          ),
          const SizedBox(width: 16.0),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Job Order: ${transaction.jobOrder}',
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text('Shoe Type: ${transaction.shoeType}'),
                Text('Shoe Brand: ${transaction.shoeBrand}'),
                Text('Number of Shoes: ${transaction.numShoes}'),
                Text('Type of Cleaning: ${transaction.cleaningType}'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class Transaction {
  final String jobOrder;
  final String shoeType;
  final String shoeBrand;
  final int numShoes;
  final String cleaningType;
  final IconData shoeIcon;
  final Color shoeIconColor;

  Transaction({
    required this.jobOrder,
    required this.shoeType,
    required this.shoeBrand,
    required this.numShoes,
    required this.cleaningType,
    required this.shoeIcon,
    required this.shoeIconColor,
  });
}

// Dummy transaction data
List<Transaction> branchTransactions = [
  Transaction(
    jobOrder: 'JO123456',
    shoeType: 'Sneakers',
    shoeBrand: 'Nike',
    numShoes: 2,
    cleaningType: 'Basic Cleaning',
    shoeIcon: Icons.fiber_manual_record,
    shoeIconColor: Colors.blue,
  ),
  Transaction(
    jobOrder: 'JO987654',
    shoeType: 'Boots',
    shoeBrand: 'Timberland',
    numShoes: 1,
    cleaningType: 'Basic Clean',
    shoeIcon: Icons.fiber_manual_record,
    shoeIconColor: Colors.brown,
  ),
  Transaction(
    jobOrder: 'JO234567',
    shoeType: 'Running Shoes',
    shoeBrand: 'Adidas',
    numShoes: 2,
    cleaningType: 'Deep Clean',
    shoeIcon: Icons.fiber_manual_record,
    shoeIconColor: Colors.red,
  ),
  Transaction(
    jobOrder: 'JO345678',
    shoeType: 'Dress Shoes',
    shoeBrand: 'Gucci',
    numShoes: 1,
    cleaningType: 'Deep Clean',
    shoeIcon: Icons.fiber_manual_record,
    shoeIconColor: Colors.purple,
  ),
  Transaction(
    jobOrder: 'JO456789',
    shoeType: 'Sandals',
    shoeBrand: 'Birkenstock',
    numShoes: 2,
    cleaningType: 'Basic Clean',
    shoeIcon: Icons.fiber_manual_record,
    shoeIconColor: Colors.orange,
  ),
  Transaction(
    jobOrder: 'JO567890',
    shoeType: 'High Heels',
    shoeBrand: 'Jimmy Choo',
    numShoes: 1,
    cleaningType: 'Basic Clean',
    shoeIcon: Icons.fiber_manual_record,
    shoeIconColor: Colors.pink,
  ),

  // Add more dummy transactions here
];

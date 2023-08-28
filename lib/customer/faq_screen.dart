import 'package:flutter/material.dart';

class FAQScreen extends StatelessWidget {
  const FAQScreen({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'SHOE CLEANING',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8.0),
            FAQItem(
              title: 'Basic Clean',
              content: 'Loose dirt removal for upper, midsole, outsole, insole & laces\nTurnaround time: 3 days',
            ),
            FAQItem(
              title: 'Deep Clean',
              content: 'Dirt removal and loosen up stains for upper, midsole, outsole, insole & laces\nTurnaround time: 3 days',
            ),
            SizedBox(height: 16.0),
            Text(
              'SHOE CARE',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8.0),
            FAQItem(
              title: 'Deodorize',
              content: 'Deodorize the inside of your shoes keeping it fresh and odor-free\nTurnaround time: 3 days',
            ),
            FAQItem(
              title: 'Shoe Polish',
              content: 'Leather buffing and polishing\nTurnaround time: 3 days',
            ),
            FAQItem(
              title: 'Re-Glue',
              content: 'Fix sole separation / attach falling parts of shoes\nTurnaround time: 7-14 days',
            ),
            SizedBox(height: 16.0),
            Text(
              'SHOE RESTORATION / CUSTOMIZATION',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8.0),
            FAQItem(
              title: 'Midsole Un-yellowing',
              content: 'Deoxidizing yellow soles giving them a brand-new look\nTurnaround time: 5 days',
            ),
            FAQItem(
              title: 'Repaint',
              content: 'Restore/customize the color of shoes\nTurnaround time: 7-14 days',
            ),
            SizedBox(height: 16.0),
            Text(
              'PRICELIST',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8.0),
            FAQItem(
              title: 'BAGUIO CITY',
              content: '... (Add the content for Baguio City pricelist here)',
            ),
            FAQItem(
              title: 'ANGELES CITY',
              content: '... (Add the content for Angeles City pricelist here)',
            ),
            FAQItem(
              title: 'URDANETA',
              content: '... (Add the content for Urdaneta pricelist here)',
            ),
            FAQItem(
              title: 'SMALL PORTION per shoe',
              content: 'Upper (minimum) ₱ 300.00\nAdditional portion +₱ 150.00\nHALF SOLE ₱ 600.00\nFULL SOLE ₱ 1,000.00\nTurnaround Time 7-14 Days',
            ),
            FAQItem(
              title: 'REPAINT (FULL)',
              content: '... (Add the content for repaint full pricelist here)',
            ),
            FAQItem(
              title: 'REPAINT (PORTION)',
              content: '... (Add the content for repaint portion pricelist here)',
            ),
          ],
        ),
      ),
    );
  }
}

class FAQItem extends StatelessWidget {
  final String title;
  final String content;

  const FAQItem({Key? key, required this.title, required this.content});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 4.0),
        Text(content),
        const Divider(thickness: 1.0),
      ],
    );
  }
}

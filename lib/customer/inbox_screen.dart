import 'package:flutter/material.dart';

class InboxScreen extends StatelessWidget {
   const InboxScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Inbox'),
        backgroundColor: const Color(0xFF1E464A), // Set the app bar color
      ),
      body: Container(
        color: Colors.grey[200], // Set the background color
        padding: const EdgeInsets.all(16.0),
        child:  Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            InboxItem(
              sender: 'John Doe',
              subject: 'Important Message',
              message: 'Lorem ipsum dolor sit amet...',
              time: '10:30 AM',
            ),
            InboxItem(
              sender: 'Jane Smith',
              subject: 'Meeting Reminder',
              message: 'Lorem ipsum dolor sit amet...',
              time: '2:15 PM',
            ),
            // Add more InboxItem widgets for other messages
          ],
        ),
      ),
    );
  }
}

class InboxItem extends StatelessWidget {
  final String sender;
  final String subject;
  final String message;
  final String time;

  const InboxItem({super.key, 
    required this.sender,
    required this.subject,
    required this.message,
    required this.time,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8.0),
      padding: const EdgeInsets.all(12.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            sender,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            subject,
            style: const TextStyle(
              fontSize: 14,
              color: Colors.grey,
            ),
          ),
          const Divider(),
          Text(
            message,
            style: const TextStyle(fontSize: 14),
          ),
          const SizedBox(height: 8.0),
          Text(
            time,
            style: const TextStyle(
              fontSize: 12,
              color: Colors.grey,
            ),
          ),
        ],
      ),
    );
  }
}

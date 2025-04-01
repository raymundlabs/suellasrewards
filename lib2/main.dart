import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:suellas/design/start.dart';
import 'firebase_options.dart';
void main() async {
  
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  FirebaseMessaging.onBackgroundMessage(_firebaseMessagingBackgroundHandler);

  final fcmToken = await FirebaseMessaging.instance.getToken();
  print("FCM Token: $fcmToken");

  // Enable automatic FCM initialization
  await FirebaseMessaging.instance.setAutoInitEnabled(true);

  runApp(const MaterialApp(
    home: MyApp(),
  ));
}

Future<void> _firebaseMessagingBackgroundHandler(RemoteMessage message) async {
  print("Handling a background message: ${message.messageId}");
  // You can handle the background message here
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  void initState() {
    super.initState();

    // Set up a callback to handle messages when the app is in the foreground
    FirebaseMessaging.onMessage.listen((RemoteMessage message) {
      print("FCM Message Data: ${message.data}");
      // Show the FCMHandlerWidget using a dialog
      _showFCMHandlerDialog(context, message);
    });

    // Set up a callback to handle messages when the app is in the background and opened
    FirebaseMessaging.onMessageOpenedApp.listen((RemoteMessage message) {
      print("A new onMessageOpenedApp event was published!");
      // Handle the notification when the app is opened from the background
      _handleNotification(message);
    });
  }

  void _handleNotification(RemoteMessage message) {
    showDialog(
      context: context,
      builder: (context) => FCMHandlerWidget(message: message),
    );
  }

  // Function to show FCMHandlerWidget in a dialog
  void _showFCMHandlerDialog(BuildContext context, RemoteMessage message) {
    showDialog(
      context: context,
      builder: (context) => FCMHandlerWidget(message: message),
    );
  }

  @override
  Widget build(BuildContext context) {
    return StartScreen();
  }
}

class FCMHandlerWidget extends StatelessWidget {
  final RemoteMessage message;

  const FCMHandlerWidget({Key? key, required this.message}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text("FCM Message"),
      content: Text(message.data.toString()),
      actions: [
        TextButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text('OK'),
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:suellas/branch/branch_profile_screen.dart';
import 'package:suellas/branch/scan.dart';
import 'package:suellas/branch/branch_transactions.dart';
import 'package:suellas/customer/archived/profile_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BranchHomeScreen(),
    );
  }
}

class BranchHomeScreen extends StatefulWidget {

  @override
  _BranchHomeScreenState createState() => _BranchHomeScreenState();
}

class _BranchHomeScreenState extends State<BranchHomeScreen> {
  int _currentIndex = 0;

  final List<Widget> _screens = [
    const HomeScreen(),
    BranchQRScannerScreen(),
    const BranchTransactionsScreen(),
    const BranchProfileScreen(),
  ];

  final String _greetMessage = GreetingWidget._getGreetMessage();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        
        titleSpacing: 0,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
       Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                   '$_greetMessage', // First line of text
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  Text(
                    'SM Baguio City', // Change to your branch name
                    style: const TextStyle(
                      fontSize: 26,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  children: [
                    IconButton(
                      icon: const Icon(
                        Icons.person,
                        color: Colors.grey,
                        size: 20,
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const BranchProfileScreen()), // Use BranchProfileScreen
                        );
                      },
                    ),
                    const Text(
                      'Profile',
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
                const SizedBox(width: 20),
                Row(
                  children: [
                    IconButton(
                      icon: const Icon(
                        Icons.mail,
                        color: Colors.grey,
                        size: 20,
                      ),
                      onPressed: () {
                        // Navigate to inbox screen
                      },
                    ),
                    const Text(
                      'Inbox',
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
        toolbarHeight: 120,
      ),
      body: Container(
        color: Colors.grey[200],
        child: Column(
          children: [
            // const RewardPointsContainer(),
            Expanded(
              child: IndexedStack(
                index: _currentIndex,
                children: _screens,
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.qr_code),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.list),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: '',
          ),
        ],
        type: BottomNavigationBarType.fixed,
      ),
    );
  }
}

// class GreetingWidget {
//   // ... Your existing GreetingWidget code ...
// }

// class RewardPointsContainer extends StatelessWidget {
//   // ... Your existing RewardPointsContainer code ...
// }

// class HomeScreen extends StatelessWidget {
//   // ... Your existing HomeScreen code ...
// }

// class PromoContainer extends StatelessWidget {
//   // ... Your existing PromoContainer code ...
// }



class GreetingWidget {
  static String _getGreetMessage() {
    final currentTime = DateTime.now();
    if (currentTime.hour < 12) {
      return 'Welcome';
    } else if (currentTime.hour < 17) {
      return 'Welcome';
    } else {
      return 'Welcome';
    }
  }
}

class RewardPointsContainer extends StatelessWidget {
  final int totalPoints = 86;
  final int maxPoints = 150;

  const RewardPointsContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      color: const Color(0xFF1E464A),
      child: Row(
        children: [
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text(
                  'Suellas Rewards',
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(height: 8.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      '$totalPoints/$maxPoints',
                      style: const TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                      ),
                    ),
                    const Icon(
                      Icons.star,
                      color: Colors.yellow,
                    ),
                  ],
                ),
                const SizedBox(height: 8.0),
                LinearProgressIndicator(
                  value: totalPoints / maxPoints,
                  backgroundColor: Colors.grey[300],
                  valueColor: const AlwaysStoppedAnimation<Color>(Colors.yellow),
                ),
                const SizedBox(height: 8.0),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: ElevatedButton(
                    onPressed: () {
                      // Handle reward details button tap
                    },
                    style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.white,
                      backgroundColor: Colors.transparent,
                      side: const BorderSide(color: Colors.white),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                    child: const Text(
                      'Reward Details',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                RichText(
                  text: TextSpan(
                    style: const TextStyle(
                      fontSize: 12,
                      color: Colors.white,
                    ),
                    children: [
                      TextSpan(
                        text: '${maxPoints - totalPoints} ',
                      ),
                      const WidgetSpan(
                        child: Icon(
                          Icons.star,
                          size: 12,
                          color: Colors.yellow,
                        ),
                      ),
                      const TextSpan(
                        text: ' to a free clean',
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(8.0),
      children: const [
        PromoContainer(
          color: Colors.white,
          text: 'FREE DISCOUNT',
          imageUrl: 'https://www.suellastheshoelaundry.com/wp-content/uploads/2020/02/basic-clean.png',
          description: '20% discount',
        ),
        PromoContainer(
          color: Colors.white,
          text: 'Promo 2',
          imageUrl: 'https://www.suellastheshoelaundry.com/wp-content/uploads/2020/02/basic-clean.png',
          description: 'Free cleaning for every 10 pairs',
        ),
        PromoContainer(
          color: Colors.white,
          text: 'Promo 3',
          imageUrl: 'https://www.suellastheshoelaundry.com/wp-content/uploads/2020/02/basic-clean.png',
          description: 'Free Lace',
        ),
      ],
    );
  }
}

class PromoContainer extends StatelessWidget {
  final Color color;
  final String text;
  final String imageUrl;
  final String description;

  const PromoContainer({
    super.key,
    required this.color,
    required this.text,
    required this.imageUrl,
    required this.description,
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
              padding: const EdgeInsets.all(10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    text,
                    style: const TextStyle(
                      fontSize: 18,
                      color: Colors.black,
                    ),
                  ),
                  const SizedBox(height: 8.0),
                  Text(
                    description,
                    style: const TextStyle(
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
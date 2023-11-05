import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'dart:convert';
import 'package:suellas/customer/archived/faq_screen.dart';
import 'package:suellas/customer/qr_screen.dart';
import 'package:suellas/customer/archived/transaction_screen.dart';
import 'package:suellas/customer/archived/profile_screen.dart';
import 'package:suellas/customer/archived/inbox_screen.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:suellas/utils.dart';
void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: CustomerHomeScreen(),
    );
  }
}

class CustomerHomeScreen extends StatefulWidget {
  @override
  _CustomerHomeScreenState createState() => _CustomerHomeScreenState();
}

class _CustomerHomeScreenState extends State<CustomerHomeScreen> {
  int _currentIndex = 0;
  String _name = '';
  String _rewardPoints = '';
  Map<String, dynamic> userDetails = {};

  @override
  void initState() {
    super.initState();
    _loadUserDetails();
  }

  Future<void> _loadUserDetails() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String userDetailsString = prefs.getString('userDetails') ?? '';
    setState(() {
      userDetails = jsonDecode(userDetailsString);
    });

    _name = userDetails['user']['first_name'].trim();
    _rewardPoints =
        (userDetails['user']['reward_points']).toString().trim();
  }

  final List<Widget Function(BuildContext)> _screens = [
    (context) => const HomeScreen(),
    (context) => QRScreen(),
    (context) => const TransactionScreen(),
    (context) => const FAQScreen(),
  ];

  final String _greetMessage = GreetingWidget._getGreetMessage();

  @override
  Widget build(BuildContext context) {
    double baseWidth = 414;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    final String qrData = "ABC123";
    
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        titleSpacing: 0,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                '$_greetMessage, $_name',
                style: const TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                                     Container(
                          // btnbackZeH (4:30442)
                          margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 115 * fem, 0 * fem),
                          width: 30 * fem,
                          height: 30 * fem,
                          child: Image.asset(
                            'assets/design/images/btn-back-xkh.png',
                            width: 30 * fem,
                            height: 30 * fem,
                          ),
                        ),
                        Container(
                          // scanqrfxD (4:30479)
                          margin: EdgeInsets.fromLTRB(0 * fem, 4 * fem, 112 * fem, 0 * fem),
                          child: Text(
                            'Scan QR',
                            style: SafeGoogleFont(
                              'Inter',
                              fontSize: 16 * ffem,
                              fontWeight: FontWeight.w600,
                              height: 1.2125 * ffem / fem,
                              color: Color(0xff000000),
                            ),
                          ),
                        ),
                        Container(
                          // iconlycurvedoutlineeditsquareN (4:30441)
                          margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 4 * fem),
                          width: 20 * fem,
                          height: 20 * fem,
                          child: Image.asset(
                            'assets/design/images/iconly-curved-outline-edit-square-Bww.png',
                            width: 20 * fem,
                            height: 20 * fem,
                          ),
                        ),
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
                          MaterialPageRoute(
                            builder: (context) => const ProfileScreen(),
                          ),
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
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const InboxScreen(),
                          ),
                        );
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
        toolbarHeight: 100,
      ),
      body: Container(
        color: Colors.grey[200],
        child: Column(
          children: [
            RewardPointsContainer(
                rewardPoints: _rewardPoints), // Pass the rewardPoints value
            Expanded(
              child: IndexedStack(
                index: _currentIndex,
                children: List.generate(
                  _screens.length,
                  (index) => _screens[index](context),
                ),
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
            icon: Icon(Icons.help),
            label: '',
          ),
        ],
        type: BottomNavigationBarType.fixed,
      ),
    );
  }
}

class GreetingWidget {
  static String _getGreetMessage() {
    final currentTime = DateTime.now();
    if (currentTime.hour < 12) {
      return 'Good Morning';
    } else if (currentTime.hour < 17) {
      return 'Good Afternoon';
    } else {
      return 'Good Evening';
    }
  }
}

class RewardPointsContainer extends StatelessWidget {
  final int maxPoints = 150;

  final String rewardPoints;

  const RewardPointsContainer({
    Key? key,
    required this.rewardPoints,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int _rewardPoints = int.tryParse(rewardPoints) ?? 0;

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
                      '$_rewardPoints/$maxPoints',
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
                  value: _rewardPoints / maxPoints,
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
                        text: '${maxPoints - _rewardPoints} ',
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
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(8.0),
      children: const [
        PromoContainer(
          color: Colors.white,
          text: 'FREE DISCOUNT',
          imageUrl:
              'https://www.suellastheshoelaundry.com/wp-content/uploads/2020/02/basic-clean.png',
          description: '20% discount',
        ),
        PromoContainer(
          color: Colors.white,
          text: 'Promo 2',
          imageUrl:
              'https://www.suellastheshoelaundry.com/wp-content/uploads/2020/02/basic-clean.png',
          description: 'Free cleaning for every 10 pairs',
        ),
        PromoContainer(
          color: Colors.white,
          text: 'Promo 3',
          imageUrl:
              'https://www.suellastheshoelaundry.com/wp-content/uploads/2020/02/basic-clean.png',
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
    Key? key,
    required this.color,
    required this.text,
    required this.imageUrl,
    required this.description,
  }) : super(key: key);

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

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'dart:convert';
import 'package:suellas/customer/faq_screen.dart';
import 'package:suellas/customer/qr_screen.dart';
import 'package:suellas/customer/transaction_screen.dart';
import 'package:suellas/customer/profile_screen.dart';
import 'package:suellas/customer/inbox_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Rewards(),
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
    _rewardPoints = (userDetails['user']['reward_points']).toString().trim();
  }

  final List<Widget> _screens = [
    const HomeScreen(),
    const QRScreen(),
    const TransactionScreen(),
    const FAQScreen(),
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
            RewardPointsContainer(rewardPoints: _rewardPoints),
            Expanded(
              child: IndexedStack(
                index: _currentIndex,
                children: _screens,
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: RoundedCornerBottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
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

class RoundedCornerBottomNavigationBar extends StatelessWidget {
  final int currentIndex;
  final ValueChanged<int> onTap;

  RoundedCornerBottomNavigationBar({
    required this.currentIndex,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
     padding: const EdgeInsets.fromLTRB(16.0, 0, 16.0, 20.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(600.0),
          topRight: Radius.circular(40.0),
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.1),
            spreadRadius: 2,
            blurRadius: 5,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: onTap,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Color.fromARGB(255, 135, 34, 34),
        showSelectedLabels: false,
        showUnselectedLabels: false,
        type: BottomNavigationBarType.fixed,
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
      ),
    );
  }
}


class Group48095457 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 333,
          height: 56,
          child: Stack(
            children: [
              Positioned(
                left: 0,
                top: 0,
                child: Container(
                  width: 333,
                  height: 56,
                  decoration: ShapeDecoration(
                    color: Color(0xFFF0F0F3),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    shadows: [
                      BoxShadow(
                        color: Color(0x7FAEAEC0),
                        blurRadius: 20,
                        offset: Offset(5, 5),
                        spreadRadius: 0,
                      )BoxShadow(
                        color: Color(0xFFFFFFFF),
                        blurRadius: 20,
                        offset: Offset(-5, -5),
                        spreadRadius: 0,
                      )
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 30,
                top: 16,
                child: Container(
                  width: 24,
                  height: 24,
                  padding: const EdgeInsets.only(
                    top: 3.75,
                    left: 2.75,
                    right: 2.75,
                    bottom: 3.58,
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        width: 18.50,
                        height: 16.67,
                        child: Stack(children: [
                        ,
                        ]),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 88,
                top: 16,
                child: Container(
                  width: 24,
                  height: 24,
                  padding: const EdgeInsets.symmetric(horizontal: 2, vertical: 3),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        width: 20,
                        height: 18,
                        child: Stack(children: [
                        ,
                        ]),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 154,
                top: 13,
                child: Container(
                  width: 30,
                  height: 30,
                  padding: const EdgeInsets.only(
                    top: 4.19,
                    left: 1.88,
                    right: 1.88,
                    bottom: 4.24,
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        width: 26.25,
                        height: 21.58,
                        child: Stack(children: [
                        ,
                        ]),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 280,
                top: 16,
                child: Container(
                  width: 24,
                  height: 24,
                  padding: const EdgeInsets.only(
                    top: 2.81,
                    left: 4.81,
                    right: 4.85,
                    bottom: 2.78,
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        width: 14.34,
                        child: Stack(children: [
                        ,
                        ]),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 221,
                top: 16,
                child: Container(
                  width: 24,
                  height: 24,
                  padding: const EdgeInsets.symmetric(horizontal: 4.50, vertical: 3),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        width: 15,
                        height: 18,
                        child: Stack(children: [
                        ,
                        ]),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}



class Rewards extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 414,
          height: 896,
          child: Stack(
            children: [
              Positioned(
                left: 0,
                top: 0,
                child: Container(
                  width: 414,
                  height: 896,
                  clipBehavior: Clip.antiAlias,
                  decoration: BoxDecoration(color: Colors.white),
                  child: Stack(
                    children: [
                      Positioned(
                        left: -4,
                        top: -3,
                        child: Container(
                          width: 421,
                          height: 410,
                          decoration: BoxDecoration(color: Color(0xFF2F6E53)),
                        ),
                      ),
                      Positioned(
                        left: 18,
                        top: 40,
                        child: Container(
                          width: 362.73,
                          height: 42.57,
                          child: Stack(
                            children: [
                              Positioned(
                                left: 325.33,
                                top: 16.77,
                                child: Container(
                                  width: 23.53,
                                  height: 10.97,
                                  child: Stack(
                                    children: [
                                      Positioned(
                                        left: 0,
                                        top: 0,
                                        child: Opacity(
                                          opacity: 0.35,
                                          child: Container(
                                            width: 21.28,
                                            height: 10.97,
                                            decoration: ShapeDecoration(
                                              shape: RoundedRectangleBorder(
                                                side: BorderSide(width: 0.50, color: Colors.white),
                                                borderRadius: BorderRadius.circular(2.67),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Positioned(
                                        left: 1.93,
                                        top: 1.94,
                                        child: Container(
                                          width: 17.41,
                                          height: 7.10,
                                          decoration: ShapeDecoration(
                                            color: Colors.white,
                                            shape: RoundedRectangleBorder(
                                              borderRadius: BorderRadius.circular(1.33),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 305.66,
                                top: 16.77,
                                child: Container(
                                  width: 14.83,
                                  height: 10.64,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: NetworkImage("https://via.placeholder.com/15x11"),
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 284.38,
                                top: 17.09,
                                child: Container(
                                  width: 16.44,
                                  height: 10.32,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: NetworkImage("https://via.placeholder.com/16x10"),
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 20.31,
                                top: 6.77,
                                child: Container(
                                  width: 52.23,
                                  padding: const EdgeInsets.only(top: 5),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      SizedBox(
                                        width: 52.23,
                                        child: Text(
                                          '9:41',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 15,
                                            fontFamily: 'Inter',
                                            fontWeight: FontWeight.w400,
                                            height: 1.33,
                                            letterSpacing: -0.24,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        left: 82,
                        top: 210,
                        child: Container(
                          width: 250,
                          height: 152,
                          decoration: ShapeDecoration(
                            color: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 224.66,
                        top: 227.91,
                        child: Transform(
                          transform: Matrix4.identity()..translate(0.0, 0.0)..rotateZ(-0.32),
                          child: Container(
                            width: 72.94,
                            height: 147.31,
                            clipBehavior: Clip.antiAlias,
                            decoration: BoxDecoration(),
                            child: Stack(
                              children: [
                                Positioned(
                                  left: 19.76,
                                  top: 101.20,
                                  child: Container(
                                    width: 31.53,
                                    height: 35.65,
                                    child: Stack(children: [
                                    ,
                                    ]),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 105,
                        top: 219,
                        child: SizedBox(
                          width: 170,
                          height: 26,
                          child: Text(
                            'SUELLAS REWARD',
                            style: TextStyle(
                              color: Color(0xFF00613A),
                              fontSize: 11,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w700,
                              height: 1.82,
                              letterSpacing: 1.25,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 104,
                        top: 298,
                        child: Container(
                          width: 133,
                          height: 18.34,
                          child: Stack(
                            children: [
                              Positioned(
                                left: 3,
                                top: 0,
                                child: Container(
                                  width: 130,
                                  height: 18,
                                  decoration: ShapeDecoration(
                                    color: Color(0xC9D7D7D7),
                                    shape: RoundedRectangleBorder(
                                      side: BorderSide(
                                        width: 0.25,
                                        color: Colors.black.withOpacity(0.03999999910593033),
                                      ),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 0,
                                top: 0,
                                child: Container(
                                  width: 73.82,
                                  height: 18.34,
                                  decoration: ShapeDecoration(
                                    color: Color(0xFF57CC99),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        left: 91,
                        top: 326,
                        child: SizedBox(
                          width: 143,
                          height: 27,
                          child: Text(
                            '65 Stars to Next Rewards',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Color(0xFF00613A),
                              fontSize: 9,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w600,
                              height: 2.22,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 105,
                        top: 257,
                        child: Container(
                          width: 90,
                          height: 26,
                          child: Stack(
                            children: [
                              Positioned(
                                left: 0,
                                top: 0,
                                child: SizedBox(
                                  width: 43,
                                  height: 26,
                                  child: Text(
                                    '35',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 26,
                                      fontFamily: 'Inter',
                                      fontWeight: FontWeight.w700,
                                      height: 0.77,
                                      letterSpacing: 1,
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 40,
                                top: 1,
                                child: Text(
                                  '/150',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 21,
                                    fontFamily: 'Inter',
                                    fontWeight: FontWeight.w700,
                                    height: 0.95,
                                    letterSpacing: 1,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        left: 257,
                        top: 245,
                        child: Container(
                          width: 36,
                          height: 36,
                          decoration: ShapeDecoration(
                            color: Color(0xFFFCD581),
                            shape: StarBorder(
                              points: 5,
                              innerRadiusRatio: 0.38,
                              pointRounding: 0,
                              valleyRounding: 0,
                              rotation: 0,
                              squash: 0,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 343,
                        top: 97,
                        child: Container(
                          width: 24,
                          height: 24,
                          padding: const EdgeInsets.only(
                            top: 3,
                            left: 2,
                            right: 2,
                            bottom: 3.22,
                          ),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                width: 20,
                                height: 17.78,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: NetworkImage("https://via.placeholder.com/20x18"),
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        left: 143,
                        top: 86,
                        child: Container(
                          width: 127,
                          height: 50,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: NetworkImage("https://via.placeholder.com/127x50"),
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 29,
                        top: 96,
                        child: Container(
                          width: 30,
                          height: 30,
                          child: Stack(
                            children: [
                              Positioned(
                                left: 0,
                                top: 0,
                                child: Container(
                                  width: 30,
                                  height: 30,
                                  child: Stack(children: [
                                  ,
                                  ]),
                                ),
                              ),
                              Positioned(
                                left: 3,
                                top: 3,
                                child: Container(
                                  width: 24,
                                  height: 24,
                                  padding: const EdgeInsets.only(
                                    top: 1,
                                    left: 3,
                                    right: 2.50,
                                    bottom: 1.50,
                                  ),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        width: 18.50,
                                        child: Stack(
                                          children: [
                                            Positioned(
                                              left: 0,
                                              top: 0,
                                              child: Container(
                                                width: 18.50,
                                                height: 17.35,
                                                child: Stack(
                                                  children: [
                                                    Positioned(
                                                      left: 0,
                                                      top: 0,
                                                      child: Container(
                                                        width: 18.50,
                                                        height: 17.35,
                                                        decoration: BoxDecoration(
                                                          image: DecorationImage(
                                                            image: NetworkImage("https://via.placeholder.com/18x17"),
                                                            fit: BoxFit.fill,
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        left: 169,
                        top: 168,
                        child: Text(
                          'Rewards',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w700,
                            height: 1.25,
                            letterSpacing: 1,
                          ),
                        ),
                      ),
                      Positioned(
                        left: 47,
                        top: 569,
                        child: Container(
                          width: 320,
                          height: 82,
                          child: Stack(
                            children: [
                              Positioned(
                                left: 54,
                                top: 23,
                                child: SizedBox(
                                  width: 261,
                                  child: Text(
                                    'Plus collect double stars on deep clean service',
                                    style: TextStyle(
                                      color: Colors.black.withOpacity(0.5699999928474426),
                                      fontSize: 12,
                                      fontFamily: 'Inter',
                                      fontWeight: FontWeight.w400,
                                      height: 1.67,
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 55,
                                top: 62,
                                child: Text(
                                  'Valid: September 1 - 15, 2023',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 10,
                                    fontFamily: 'Inter',
                                    fontWeight: FontWeight.w600,
                                    height: 2,
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 0,
                                top: 0,
                                child: Container(
                                  width: 40,
                                  height: 40,
                                  padding: const EdgeInsets.symmetric(horizontal: 3.33, vertical: 6.67),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        width: 33.33,
                                        child: Stack(children: [
                                        ,
                                        ]),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 55,
                                top: 0,
                                child: Text(
                                  '10% Off on your 2nd Pair of Deep Clean',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 14,
                                    fontFamily: 'Inter',
                                    fontWeight: FontWeight.w600,
                                    height: 1.43,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        left: 47,
                        top: 692,
                        child: Container(
                          width: 315,
                          height: 66,
                          child: Stack(
                            children: [
                              Positioned(
                                left: 54,
                                top: 23,
                                child: SizedBox(
                                  width: 261,
                                  child: Text(
                                    'Open to SM Baguio and SM Urdaneta b',
                                    style: TextStyle(
                                      color: Colors.black.withOpacity(0.5699999928474426),
                                      fontSize: 12,
                                      fontFamily: 'Inter',
                                      fontWeight: FontWeight.w400,
                                      height: 1.67,
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 55,
                                top: 46,
                                child: Text(
                                  'Valid: September 1 - 15, 2023',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 10,
                                    fontFamily: 'Inter',
                                    fontWeight: FontWeight.w600,
                                    height: 2,
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 0,
                                top: 0,
                                child: Container(
                                  width: 40,
                                  height: 40,
                                  padding: const EdgeInsets.symmetric(horizontal: 3.33, vertical: 6.67),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        width: 33.33,
                                        child: Stack(children: [
                                        ,
                                        ]),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 55,
                                top: 0,
                                child: Text(
                                  '5% Off on Shoe Restoration',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 14,
                                    fontFamily: 'Inter',
                                    fontWeight: FontWeight.w600,
                                    height: 1.43,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        left: 47,
                        top: 798,
                        child: Container(
                          width: 315,
                          height: 66,
                          child: Stack(
                            children: [
                              Positioned(
                                left: 54,
                                top: 23,
                                child: SizedBox(
                                  width: 261,
                                  child: Text(
                                    'Open to SM Baguio and SM Urdaneta b',
                                    style: TextStyle(
                                      color: Colors.black.withOpacity(0.5699999928474426),
                                      fontSize: 12,
                                      fontFamily: 'Inter',
                                      fontWeight: FontWeight.w400,
                                      height: 1.67,
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 55,
                                top: 46,
                                child: Text(
                                  'Valid: September 1 - 15, 2023',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 10,
                                    fontFamily: 'Inter',
                                    fontWeight: FontWeight.w600,
                                    height: 2,
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 0,
                                top: 0,
                                child: Container(
                                  width: 40,
                                  height: 40,
                                  padding: const EdgeInsets.symmetric(horizontal: 3.33, vertical: 6.67),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        width: 33.33,
                                        child: Stack(children: [
                                        ,
                                        ]),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 55,
                                top: 0,
                                child: Text(
                                  '5% Off on Re-Glue',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 14,
                                    fontFamily: 'Inter',
                                    fontWeight: FontWeight.w600,
                                    height: 1.43,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        left: 38,
                        top: 813,
                        child: Container(
                          width: 333,
                          height: 56,
                          child: Stack(
                            children: [
                              Positioned(
                                left: 0,
                                top: 0,
                                child: Container(
                                  width: 333,
                                  height: 56,
                                  decoration: ShapeDecoration(
                                    color: Color(0xFFF0F0F3),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(30),
                                    ),
                                    shadows: [
                                      BoxShadow(
                                        color: Color(0x7FAEAEC0),
                                        blurRadius: 20,
                                        offset: Offset(5, 5),
                                        spreadRadius: 0,
                                      )BoxShadow(
                                        color: Color(0xFFFFFFFF),
                                        blurRadius: 20,
                                        offset: Offset(-5, -5),
                                        spreadRadius: 0,
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 30,
                                top: 16,
                                child: Container(
                                  width: 24,
                                  height: 24,
                                  padding: const EdgeInsets.only(
                                    top: 3.75,
                                    left: 2.75,
                                    right: 2.75,
                                    bottom: 3.58,
                                  ),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        width: 18.50,
                                        height: 16.67,
                                        child: Stack(children: [
                                        ,
                                        ]),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 88,
                                top: 16,
                                child: Container(
                                  width: 24,
                                  height: 24,
                                  padding: const EdgeInsets.symmetric(horizontal: 2, vertical: 3),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        width: 20,
                                        height: 18,
                                        child: Stack(children: [
                                        ,
                                        ]),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 154,
                                top: 13,
                                child: Container(
                                  width: 30,
                                  height: 30,
                                  padding: const EdgeInsets.only(
                                    top: 4.19,
                                    left: 1.88,
                                    right: 1.88,
                                    bottom: 4.24,
                                  ),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        width: 26.25,
                                        height: 21.58,
                                        child: Stack(children: [
                                        ,
                                        ]),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 280,
                                top: 16,
                                child: Container(
                                  width: 24,
                                  height: 24,
                                  padding: const EdgeInsets.only(
                                    top: 2.81,
                                    left: 4.81,
                                    right: 4.85,
                                    bottom: 2.78,
                                  ),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        width: 14.34,
                                        child: Stack(children: [
                                        ,
                                        ]),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 221,
                                top: 16,
                                child: Container(
                                  width: 24,
                                  height: 24,
                                  padding: const EdgeInsets.symmetric(horizontal: 4.50, vertical: 3),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        width: 15,
                                        height: 18,
                                        child: Stack(children: [
                                        ,
                                        ]),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        left: 47,
                        top: 472,
                        child: Container(
                          width: 226,
                          height: 62,
                          child: Stack(
                            children: [
                              Positioned(
                                left: 61,
                                top: 0,
                                child: Text(
                                  'Get 20% Off Basic Clean',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 14,
                                    fontFamily: 'Inter',
                                    fontWeight: FontWeight.w600,
                                    height: 1.43,
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 61,
                                top: 23,
                                child: Text(
                                  'Open only to walk-ins',
                                  style: TextStyle(
                                    color: Colors.black.withOpacity(0.5699999928474426),
                                    fontSize: 12,
                                    fontFamily: 'Inter',
                                    fontWeight: FontWeight.w400,
                                    height: 1.67,
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 61,
                                top: 42,
                                child: Text(
                                  'Valid: September 1 - 30, 2023',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 10,
                                    fontFamily: 'Inter',
                                    fontWeight: FontWeight.w600,
                                    height: 2,
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 0,
                                top: 0,
                                child: Container(
                                  width: 40,
                                  height: 40,
                                  padding: const EdgeInsets.symmetric(horizontal: 3.33, vertical: 6.67),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        width: 33.33,
                                        child: Stack(children: [
                                        ,
                                        ]),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 26,
                top: 437,
                child: Text(
                  'Promotions',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 14,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
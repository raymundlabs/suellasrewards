import 'package:flutter/material.dart';

class ChangePasswordScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double baseWidth = 414;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;

    return Scaffold(
      appBar: AppBar(
        title: Text('Change Password'),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(29 * fem),
          color: Colors.white,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context); // Go back when tapped
                    },
                    child: Image.asset(
                      'assets/design/images/btn-back.png',
                      width: 30 * fem,
                      height: 30 * fem,
                    ),
                  ),
                  Expanded(
                    child: Center(
                      child: Container(
                        margin: EdgeInsets.only(top: 4 * fem),
                        child: Text(
                          'Account',
                          style: TextStyle(
                            fontSize: 18 * ffem,
                            fontWeight: FontWeight.w600,
                            color: Color(0xff000000),
                          ),
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => EditProfileScreen(),
                        ),
                      );
                    },
                    child: Image.asset(
                      'assets/design/images/iconly-curved-outline-edit-square.png',
                      width: 30 * fem,
                      height: 30 * fem,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ProfileScreen(),
                          ),
                        );
                      },
                      child: Container(
                        margin: EdgeInsets.fromLTRB(10.14 * fem, 0 * fem, 0 * fem, 16 * fem),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              'Profile',
                              style: TextStyle(
                                fontSize: 14 * ffem,
                                fontWeight: FontWeight.w600,
                                color: Color(0xff000000),
                              ),
                            ),
                            Container(
                              width: double.infinity,
                              height: 1,
                              color: Color(0xff000000),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ChangePasswordScreen(),
                          ),
                        );
                      },
                      child: Container(
                        margin: EdgeInsets.fromLTRB(10.14 * fem, 0 * fem, 0 * fem, 16 * fem),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              'Security',
                              style: TextStyle(
                                fontSize: 14 * ffem,
                                fontWeight: FontWeight.w600,
                                color: Color(0xff000000),
                              ),
                            ),
                            Container(
                              width: double.infinity,
                              height: 1,
                              color: Color(0xff000000),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                margin: EdgeInsets.only(top: 20 * fem),
                child: Text(
                  'Personal Details',
                  style: TextStyle(
                    fontSize: 15 * ffem,
                    fontWeight: FontWeight.w700,
                    color: Color(0xff57cc99),
                  ),
                ),
              ),
              SizedBox(height: 5 * fem),
              Divider(),
            ],
          ),
        ),
      ),
    );
  }
}

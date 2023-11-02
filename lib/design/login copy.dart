import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:suellas/utils.dart';


class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double baseWidth = 411;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return SingleChildScrollView(
      child: Container(
        width: double.infinity,
        child: Container(
          width: double.infinity,
          height: 896 * fem,
          child: Container(
            width: 411 * fem,
            height: double.infinity,
            decoration: BoxDecoration(
              color: Color(0xffffffff),
            ),
            child: Stack(
              children: [
                Positioned(
                  left: 31 * fem,
                  top: 88 * fem,
                  child: Align(
                    child: SizedBox(
                      width: 114 * fem,
                      height: 20 * fem,
                      child: Text(
                        'Good Morning,',
                        style: SafeGoogleFont(
                          'Inter',
                          fontSize: 16 * ffem,
                          fontWeight: FontWeight.w500,
                          height: 1.2125 * ffem / fem,
                          color: Color(0xff898a7a),
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: 30 * fem,
                  top: 116 * fem,
                  child: Align(
                    child: SizedBox(
                      width: 163 * fem,
                      height: 26 * fem,
                      child: Text(
                        'Welcome back!',
                        style: SafeGoogleFont(
                          'Inter',
                          fontSize: 21 * ffem,
                          fontWeight: FontWeight.w900,
                          height: 1.2125 * ffem / fem,
                          color: Color(0xff040b14),
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: 74 * fem,
                  top: 486 * fem,
                  child: Container(
                    width: 287 * fem,
                    height: 21 * fem,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          margin: EdgeInsets.fromLTRB(0 * fem, 7 * fem, 29 * fem, 0 * fem),
                          width: 102 * fem,
                          height: 2 * fem,
                          decoration: BoxDecoration(
                            color: Color(0x7c000000),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 30 * fem, 0 * fem),
                          child: Text(
                            'OR',
                            style: SafeGoogleFont(
                              'Inter',
                              fontSize: 17 * ffem,
                              fontWeight: FontWeight.w400,
                              height: 1.2125 * ffem / fem,
                              color: Color(0x7c000000),
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(0 * fem, 7 * fem, 0 * fem, 0 * fem),
                          width: 102 * fem,
                          height: 2 * fem,
                          decoration: BoxDecoration(
                            color: Color(0x7c000000),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  left: 70 * fem,
                  top: 602 * fem,
                  child: Container(
                    padding: EdgeInsets.fromLTRB(23 * fem, 16 * fem, 75 * fem, 13 * fem),
                    width: 295 * fem,
                    height: 50 * fem,
                    decoration: BoxDecoration(
                      border: Border.all(color: Color(0xff000000)),
                      color: Color(0x7fffffff),
                      borderRadius: BorderRadius.circular(70 * fem),
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 39.36 * fem, 3 * fem),
                          width: 17.64 * fem,
                          height: 18 * fem,
                          child: Image.asset(
                            'assets/design/images/group.png',
                            width: 17.64 * fem,
                            height: 18 * fem,
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(0 * fem, 1 * fem, 0 * fem, 0 * fem),
                          child: Text(
                            'Login with Google',
                            textAlign: TextAlign.center,
                            style: SafeGoogleFont(
                              'Inter',
                              fontSize: 16 * ffem,
                              fontWeight: FontWeight.w600,
                              height: 1.2125 * ffem / fem,
                              color: Color(0xff000000),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  left: 69 * fem,
                  top: 532 * fem,
                  child: Container(
                    padding: EdgeInsets.fromLTRB(21 * fem, 12 * fem, 63 * fem, 13 * fem),
                    width: 295 * fem,
                    height: 50 * fem,
                    decoration: BoxDecoration(
                      color: Color(0xff4285f4),
                      borderRadius: BorderRadius.circular(70 * fem),
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 25 * fem, 0 * fem),
                          width: 25 * fem,
                          height: 25 * fem,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12.5 * fem),
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage(
                                'assets/design/images/ellipse-3-bg.png',
                              ),
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(0 * fem, 3 * fem, 0 * fem, 0 * fem),
                          child: Text(
                            'Login with Facebook',
                            textAlign: TextAlign.center,
                            style: SafeGoogleFont(
                              'Inter',
                              fontSize: 16 * ffem,
                              fontWeight: FontWeight.w600,
                              height: 1.2125 * ffem / fem,
                              color: Color(0xffffffff),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  left: 66 * fem,
                  top: 374 * fem,
                  child: Container(
                    width: 295 * fem,
                    height: 50 * fem,
                    decoration: BoxDecoration(
                      color: Color(0xff57cc99),
                      borderRadius: BorderRadius.circular(70 * fem),
                    ),
                    child: Center(
                      child: Text(
                        'Login ',
                        textAlign: TextAlign.center,
                        style: SafeGoogleFont(
                          'Inter',
                          fontSize: 18 * ffem,
                          fontWeight: FontWeight.w700,
                          height: 1.1111111111 * ffem / fem,
                          color: Color(0xffffffff),
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: 32 * fem,
                  top: 208 * fem,
                  child: Align(
                    child: SizedBox(
                      width: 345 * fem,
                      height: 1 * fem,
                      child: Container(
                        decoration: BoxDecoration(
                          color: Color(0xa5000000),
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: 34 * fem,
                  top: 183 * fem,
                  child: Align(
                    child: SizedBox(
                      width: 36 * fem,
                      height: 20 * fem,
                      child: Text(
                        'Email',
                        textAlign: TextAlign.center,
                        style: SafeGoogleFont(
                          'Inter',
                          fontSize: 14 * ffem,
                          fontWeight: FontWeight.w500,
                          height: 1.4285714286 * ffem / fem,
                          color: Color(0xa5000000),
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: 32 * fem,
                  top: 277 * fem,
                  child: Align(
                    child: SizedBox(
                      width: 345 * fem,
                      height: 1 * fem,
                      child: Container(
                        decoration: BoxDecoration(
                          color: Color(0xa5000000),
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: 32 * fem,
                  top: 248 * fem,
                  child: Container(
                    width: 340 * fem,
                    height: 24 * fem,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Container(
                          margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 250 * fem, 0 * fem),
                          child: Text(
                            'Password',
                            textAlign: TextAlign.center,
                            style: SafeGoogleFont(
                              'Inter',
                              fontSize: 14 * ffem,
                              fontWeight: FontWeight.w500,
                              height: 1.4285714286 * ffem / fem,
                              color: Color(0xa5000000),
                            ),
                          ),
                        ),
                        Container(
                          width: 24 * fem,
                          height: 24 * fem,
                          child: Image.asset(
                            'assets/design/images/vuesax-linear-eye-slash-UTj.png',
                            width: 24 * fem,
                            height: 24 * fem,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  left: 35 * fem,
                  top: 312 * fem,
                  child: Container(
                    width: 339.5 * fem,
                    height: 20 * fem,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 12 * fem, 0 * fem),
                          width: 20 * fem,
                          height: 20 * fem,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10 * fem),
                            border: Border.all(color: Color(0xe557cc99)),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 63.5 * fem, 0 * fem),
                          child: Text(
                            'Keep me logged in',
                            textAlign: TextAlign.center,
                            style: SafeGoogleFont(
                              'Inter',
                              fontSize: 14 * ffem,
                              fontWeight: FontWeight.w500,
                              height: 1.4285714286 * ffem / fem,
                              color: Color(0xff000000),
                            ),
                          ),
                        ),
                        Text(
                          'Forgot Password?',
                          textAlign: TextAlign.center,
                          style: SafeGoogleFont(
                            'Inter',
                            fontSize: 14 * ffem,
                            fontWeight: FontWeight.w500,
                            height: 1.4285714286 * ffem / fem,
                            color: Color(0xff57cc99),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  left: 100 * fem,
                  top: 696 * fem,
                  child: Container(
                    width: 231 * fem,
                    height: 19 * fem,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 6 * fem, 0 * fem),
                          child: Text(
                            'Don’t have an account?',
                            textAlign: TextAlign.center,
                            style: SafeGoogleFont(
                              'Inter',
                              fontSize: 15 * ffem,
                              fontWeight: FontWeight.w500,
                              height: 1.2125 * ffem / fem,
                              color: Color(0xff333333),
                            ),
                          ),
                        ),
                        Text(
                          'Sign Up',
                          textAlign: TextAlign.center,
                          style: SafeGoogleFont(
                            'Inter',
                            fontSize: 15 * ffem,
                            fontWeight: FontWeight.w600,
                            height: 1.2125 * ffem / fem,
                            color: Color(0xff57cc99),
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
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: LoginPage(),
  ));
}

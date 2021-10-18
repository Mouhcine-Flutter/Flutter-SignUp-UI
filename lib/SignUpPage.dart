import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sign_up_ui/CustomInputBox.dart';

class SignUpPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var scrWidth = MediaQuery.of(context).size.width;
    var scrHeight = MediaQuery.of(context).size.height;

    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Stack(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: const EdgeInsets.only(
                          left: 40.0, top: 40, bottom: 55),
                      child: Text(
                        'Sign Up',
                        style: TextStyle(
                          fontFamily: 'Cardo',
                          fontSize: 35,
                          color: Color(0xff0C2551),
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                      //
                    ),
                  ),
                  MyCustomInputBox(
                    label: 'FullName',
                    inputHint: 'Enter your fullname',
                  ),
                  //
                  SizedBox(
                    height: 10,
                  ),
                  //
                  MyCustomInputBox(
                    label: 'Email',
                    inputHint: 'example@example.com',
                  ),
                  //
                  SizedBox(
                    height: 10,
                  ),
                  //
                  MyCustomInputBox(
                    label: 'Password',
                    inputHint: 'Enter strong password',
                  ),
                  //
                  SizedBox(
                    height: 15,
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 15, top: 5),
                      child: Text(
                        '-- Sign up with --',
                        style: TextStyle(
                          fontFamily: 'Nunito Sans',
                          fontSize: 14,
                          color: Colors.grey,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 90),
                    child: Row(
                      children: [
                        SizedBox(
                          height: 60,
                          width: 60,
                          child: SvgPicture.asset('assets/iconGoogle.svg',
                              semanticsLabel: 'Google Logo'),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        SizedBox(
                          height: 60,
                          width: 60,
                          child: SvgPicture.asset('assets/iconFacebook.svg',
                              semanticsLabel: 'Google Logo'),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        SizedBox(
                          height: 60,
                          width: 60,
                          child: SvgPicture.asset('assets/iconApple.svg',
                              semanticsLabel: 'Google Logo'),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 18,
                  ),
                  Text(
                    "Creating an account means you're okay with\nour Terms of Service and Privacy Policy",
                    style: TextStyle(
                      fontFamily: 'Product Sans',
                      fontSize: 12.5,
                      fontWeight: FontWeight.bold,
                      color: Color(0xff8f9db5).withOpacity(0.46),
                    ),
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 6),
                    width: scrWidth * 0.55,
                    height: 50,
                    decoration: BoxDecoration(
                      color: Colors.lightGreen[200],
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Center(
                      child: Text(
                        'Create an Account',
                        style: TextStyle(
                          fontFamily: 'ProductSans',
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Color(0xff0C2551),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: 'Already have an account? ',
                          style: TextStyle(
                            fontFamily: 'Product Sans',
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Color(0xff000000).withOpacity(0.45),
                          ),
                        ),
                        TextSpan(
                          text: 'Sign In',
                          style: TextStyle(
                            fontFamily: 'Product Sans',
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Color(0xff0C2551),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
              ClipPath(
                clipper: OuterClippedPart(),
                child: Container(
                  color: Colors.green[300],
                  width: scrWidth,
                  height: scrHeight,
                ),
              ),
              //
              ClipPath(
                clipper: InnerClippedPart(),
                child: Container(
                  color: Color(0xff0c2551),
                  width: scrWidth,
                  height: scrHeight,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class OuterClippedPart extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    //
    path.moveTo(size.width / 2, 0);
    path.lineTo(size.width, 0);
    path.lineTo(size.width, size.height / 6);
    //
    path.cubicTo(size.width * 0.55, size.height * 0.16, size.width * 0.85,
        size.height * 0.05, size.width / 2, 0);
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return true;
  }
}

class InnerClippedPart extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    //
    path.moveTo(size.width * 0.7, 0);
    path.lineTo(size.width, 0);
    path.lineTo(size.width, size.height * 0.1);
    //
    path.quadraticBezierTo(
        size.width * 0.8, size.height * 0.11, size.width * 0.7, 0);

    //
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return true;
  }
}

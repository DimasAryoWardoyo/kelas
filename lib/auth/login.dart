import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kelas/theme.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.topCenter,
        margin: const EdgeInsets.only(left: 95, top: 60),
        width: 200,
        child: Image.asset('assets/img/logo_hd.png'),
      ),
      bottomSheet: Container(
        alignment: Alignment.topCenter,
        height: 616,
        decoration: BoxDecoration(
            borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(40.0),
                topRight: Radius.circular(40.0)),
            color: cardColor),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(32.0),
                ),
                color: bgColor,
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const SizedBox(width: 10, height: 60),
                    TextButton(
                      onPressed: () {},
                      style: ButtonStyle(
                        minimumSize:
                            const MaterialStatePropertyAll(Size(130, 45)),
                        backgroundColor:
                            MaterialStatePropertyAll<Color>(yellowColor),
                      ),
                      child: Text('Login',
                          style: GoogleFonts.inter().copyWith(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: texBlackColor)),
                    ),
                    const SizedBox(width: 15),
                    Text(
                      '<- Or ->',
                      style: GoogleFonts.inter().copyWith(
                          fontWeight: FontWeight.bold, color: abuColor),
                    ),
                    const SizedBox(width: 15),
                    TextButton(
                      onPressed: () {
                        Navigator.pushReplacementNamed(context, '/register');
                      },
                      style: const ButtonStyle(
                        padding: MaterialStatePropertyAll(
                            EdgeInsets.symmetric(horizontal: 30.0)),
                        maximumSize: MaterialStatePropertyAll(Size(130, 50)),
                        // backgroundColor:
                        //     MaterialStatePropertyAll<Color>(yellowColor),
                      ),
                      child: Text('Register',
                          style: GoogleFonts.inter().copyWith(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: texBlackColor)),
                    ),
                    const SizedBox(
                      width: 10,
                    )
                  ],
                ),
              ),
            ),
            const SizedBox(height: 15),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextFormField(
                decoration: InputDecoration(
                  fillColor: bgColor,
                  filled: true,
                  labelText: '   Email',
                  labelStyle: TextStyle(
                      letterSpacing: 3.0,
                      fontSize: 16,
                      color: abuColor,
                      fontWeight: FontWeight.w400),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(32.0),
                    borderSide: BorderSide(
                      color: borderCardColor,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(32.0),
                      borderSide: BorderSide(color: yellowColor, width: 2.0)),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextFormField(
                decoration: InputDecoration(
                  fillColor: bgColor,
                  filled: true,
                  labelText: '   Password',
                  labelStyle: TextStyle(
                      letterSpacing: 3.0,
                      fontSize: 16,
                      color: abuColor,
                      fontWeight: FontWeight.w400),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(32.0),
                    borderSide: BorderSide(
                      color: borderCardColor,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(32.0),
                      borderSide: BorderSide(color: yellowColor, width: 2.0)),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {},
              child: Text(
                'Forget Password?',
                style: GoogleFonts.inter().copyWith(color: texWhiteColor),
              ),
            ),
            const SizedBox(height: 20),
            TextButton(
                onPressed: () {
                  Navigator.pushReplacementNamed(context, '/home');
                },
                style: ButtonStyle(
                    padding: const MaterialStatePropertyAll(
                        EdgeInsets.symmetric(horizontal: 155, vertical: 15)),
                    backgroundColor: MaterialStatePropertyAll(
                      yellowColor,
                    )),
                child: Text(
                  'Login',
                  style: GoogleFonts.inter().copyWith(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: texBlackColor),
                )),
            Container(
                margin: const EdgeInsets.only(top: 20),
                child: Text(
                  'Or Login With',
                  style: GoogleFonts.inter().copyWith(
                    color: texWhiteColor,
                    fontWeight: FontWeight.bold,
                  ),
                )),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                  style: ButtonStyle(
                      padding: const MaterialStatePropertyAll(
                          EdgeInsets.symmetric(horizontal: 30.0, vertical: 15)),
                      backgroundColor: MaterialStatePropertyAll(bgColor)),
                  onPressed: () {},
                  child: Row(
                    children: [
                      Image.asset('assets/img/google.png'),
                      const SizedBox(width: 8),
                      Text(
                        'Google',
                        style: GoogleFonts.inter().copyWith(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: abuColor,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  width: 20,
                  height: 100,
                ),
                TextButton(
                  style: ButtonStyle(
                      padding: const MaterialStatePropertyAll(
                          EdgeInsets.symmetric(horizontal: 40, vertical: 15)),
                      backgroundColor: MaterialStatePropertyAll(bgColor)),
                  onPressed: () {},
                  child: Row(
                    children: [
                      Image.asset('assets/img/apple.png'),
                      const SizedBox(width: 8),
                      Text(
                        'Apple',
                        style: GoogleFonts.inter().copyWith(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: abuColor,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

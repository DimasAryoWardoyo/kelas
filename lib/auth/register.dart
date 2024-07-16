import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kelas/theme.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
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
                      onPressed: () {
                        Navigator.pushReplacementNamed(context, '/');
                      },
                      style: const ButtonStyle(
                        minimumSize: MaterialStatePropertyAll(Size(130, 45)),
                        // backgroundColor:
                        //     MaterialStatePropertyAll<Color>(yellowColor),
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
                      onPressed: () {},
                      style: ButtonStyle(
                        padding: const MaterialStatePropertyAll(
                            EdgeInsets.symmetric(horizontal: 30.0)),
                        maximumSize:
                            const MaterialStatePropertyAll(Size(130, 50)),
                        backgroundColor:
                            MaterialStatePropertyAll<Color>(yellowColor),
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
                  labelText: '   Full Name',
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
            const SizedBox(height: 25),
            TextButton(
              onPressed: () {
                Navigator.pushReplacementNamed(context, '/home');
              },
              style: ButtonStyle(
                  padding: const MaterialStatePropertyAll(
                      EdgeInsets.symmetric(horizontal: 145, vertical: 15)),
                  backgroundColor: MaterialStatePropertyAll(
                    yellowColor,
                  )),
              child: Text(
                'Register',
                style: GoogleFonts.inter().copyWith(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: texBlackColor),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

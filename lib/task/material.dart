import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kelas/theme.dart';

class MyConten extends StatefulWidget {
  const MyConten({super.key});

  @override
  State<MyConten> createState() => _MyContenState();
}

class _MyContenState extends State<MyConten> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: texBlackColor),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: Center(
          child: Container(
            margin: const EdgeInsets.only(right: 50),
            alignment: Alignment.center,
            width: 150,
            child: Text(
              'Pemrograman',
              style: GoogleFonts.inter().copyWith(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: texBlackColor,
              ),
            ),
          ),
        ),
      ),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  margin: const EdgeInsets.only(
                    top: 20,
                    left: 45,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        'Topic 1',
                        style: GoogleFonts.inter().copyWith(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: texBlackColor,
                        ),
                      ),
                      const SizedBox(
                        height: 9,
                      ),
                      Text(
                        'Struct dan pointer',
                        style: GoogleFonts.inter().copyWith(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: texBlackColor,
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Card(
                child: Container(
                  decoration: BoxDecoration(
                    color: cardColor,
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: <Widget>[
                        ListTile(
                          title: Padding(
                            padding: const EdgeInsets.all(0.6),
                            child: Row(
                              children: [
                                const CircleAvatar(
                                  backgroundImage:
                                      AssetImage('assets/img/user.png'),
                                  radius: 29,
                                ),
                                const SizedBox(width: 15),
                                Text(
                                  'Dimas Aryo Wardoyo',
                                  style: GoogleFonts.inter().copyWith(
                                    color: texWhiteColor,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          subtitle: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              const SizedBox(height: 10),
                              Text(
                                '09/04/2024',
                                style: GoogleFonts.inter().copyWith(
                                    color: texWhiteColor,
                                    fontWeight: FontWeight.bold),
                              ),
                              Text(
                                'Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.',
                                style: GoogleFonts.inter().copyWith(
                                  color: texWhiteColor,
                                ),
                              ),
                              ElevatedButton(
                                style: const ButtonStyle(
                                  backgroundColor:
                                      MaterialStatePropertyAll<Color>(
                                          Color(0xff254066)),
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  mainAxisSize: MainAxisSize.min,
                                  children: <Widget>[
                                    Stack(
                                      children: [
                                        Container(
                                          width: 20,
                                          height: 20,
                                          decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            color: yellowColor,
                                          ),
                                          child: Icon(
                                            Icons.cloud_upload,
                                            size: 11,
                                            color: texButtonColor,
                                          ),
                                        )
                                      ],
                                    ),
                                    const SizedBox(width: 10),
                                    Text(
                                      'Struct_dan_pointer.pdf',
                                      textAlign: TextAlign.left,
                                      style: GoogleFonts.inter()
                                          .copyWith(color: texWhiteColor),
                                    ),
                                  ],
                                ),
                                onPressed: () {
                                  // ...
                                },
                              ),
                              ElevatedButton(
                                style: ButtonStyle(
                                  backgroundColor:
                                      MaterialStatePropertyAll<Color>(
                                          yellowColor),
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  mainAxisSize: MainAxisSize.min,
                                  children: <Widget>[
                                    Stack(
                                      children: [
                                        Container(
                                          width: 20,
                                          height: 20,
                                          decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            color: texButtonColor,
                                          ),
                                          child: Icon(
                                            Icons.cloud_upload,
                                            size: 11,
                                            color: yellowColor,
                                          ),
                                        )
                                      ],
                                    ),
                                    const SizedBox(width: 10),
                                    Text(
                                      'Submit',
                                      textAlign: TextAlign.left,
                                      style: GoogleFonts.inter().copyWith(
                                          color: texWhiteColor,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                                onPressed: () {
                                  // ...
                                },
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      )),
    );
  }
}

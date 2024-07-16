import 'package:flutter/material.dart';
import 'package:kelas/task/topic.dart';
import 'package:kelas/theme.dart';
import 'package:google_fonts/google_fonts.dart';

class Presensi extends StatefulWidget {
  const Presensi({super.key});

  @override
  State<Presensi> createState() => _PresensiState();
}

class _PresensiState extends State<Presensi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Container(
          margin: const EdgeInsets.only(left: 70),
          alignment: Alignment.center,
          width: 280,
          child: Text(
            'Presensi',
            style: GoogleFonts.inter().copyWith(
              fontSize: 22,
              fontWeight: FontWeight.bold,
              color: texBlackColor,
            ),
          ),
        ),
        actions: [
          Container(
            margin: const EdgeInsets.only(right: 20),
            width: 50,
            child: Stack(
              children: [
                CircleAvatar(
                  child: Image.asset(
                    'assets/img/user.png',
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  top: 0,
                  left: 25,
                  child: CircleAvatar(
                    backgroundColor: orangeColor,
                    radius: 10,
                    child: Icon(
                      Icons.notifications,
                      color: texWhiteColor,
                      size: 15,
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 10),
              Container(
                alignment: Alignment.bottomLeft,
                margin: const EdgeInsets.only(left: 45),
                child: Text(
                  'Mata Kuliah',
                  style: GoogleFonts.inter().copyWith(
                    color: texBlackColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
              ),
              const SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Card(
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const Topic()),
                      );
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          color: cardColor,
                          borderRadius: BorderRadius.circular(15.0)),
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: ListTile(
                          leading: ClipRRect(
                            borderRadius: BorderRadius.circular(15.0),
                            child: Image.asset(
                              'assets/img/pemrograman.jpg',
                              width: 75,
                              height: 75,
                              fit: BoxFit.cover,
                            ),
                          ),
                          title: Text(
                            'Pemrograman',
                            style: GoogleFonts.inter().copyWith(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: texWhiteColor,
                            ),
                          ),
                          trailing: Stack(
                            alignment: Alignment.center,
                            children: [
                              CircleAvatar(
                                radius: 20,
                                backgroundColor: yellowColor,
                              ),
                              Text(
                                '1',
                                style: GoogleFonts.inter().copyWith(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: texWhiteColor,
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

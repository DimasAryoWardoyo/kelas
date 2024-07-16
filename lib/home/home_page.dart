import 'package:flutter/material.dart';
import 'package:kelas/task/topic.dart';
// import 'package:kelas/layout/app.dart';
import 'package:kelas/theme.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Container(
          margin: const EdgeInsets.only(left: 150),
          child: Text(
            'Home',
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
              Row(
                children: [
                  const SizedBox(width: 45),
                  Text(
                    'Mata Kuliah',
                    style: GoogleFonts.inter().copyWith(
                      color: texBlackColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Card(
                  child: Container(
                    decoration: BoxDecoration(
                      color: cardColor,
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    child: GestureDetector(
                      onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const Topic()),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            ListTile(
                              leading: ClipRRect(
                                borderRadius: BorderRadius.circular(15.0),
                                child: Image.asset(
                                  'assets/img/pemrograman.jpg',
                                  width: 75,
                                  height: 75,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              title: Padding(
                                padding: const EdgeInsets.all(0.6),
                                child: Text(
                                  'Pemrograman',
                                  style: GoogleFonts.inter().copyWith(
                                    color: texWhiteColor,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16,
                                  ),
                                ),
                              ),
                              subtitle: Row(children: [
                                const CircleAvatar(
                                  backgroundImage:
                                      AssetImage('assets/img/user.png'),
                                  radius: 12,
                                ),
                                const SizedBox(width: 8),
                                Text(
                                  'Dimas Aryo Wardoyo',
                                  style: GoogleFonts.inter().copyWith(
                                    color: texWhiteColor,
                                  ),
                                )
                              ]),
                            ),
                            Row(
                              children: [
                                const SizedBox(width: 16),
                                Expanded(
                                  child: LinearProgressIndicator(
                                    value: 0.8,
                                    backgroundColor: abuColor,
                                    valueColor: AlwaysStoppedAnimation<Color>(
                                        yellowColor),
                                  ),
                                ),
                                const SizedBox(width: 8),
                                Text(
                                  '80%',
                                  style: GoogleFonts.inter().copyWith(
                                    color: texWhiteColor,
                                  ),
                                ),
                              ],
                            )
                          ],
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

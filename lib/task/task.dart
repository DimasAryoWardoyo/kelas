import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
// import 'package:kelas/pages/home_page.dart';
import 'package:kelas/theme.dart';
import 'package:kelas/task/material.dart';

class Task extends StatefulWidget {
  const Task({super.key});

  @override
  State<Task> createState() => _TaskState();
}

class _TaskState extends State<Task> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Center(
            child: Container(
              margin: const EdgeInsets.only(left: 155),
              width: 150,
              child: Text(
                'Task',
                style: GoogleFonts.inter().copyWith(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: texBlackColor,
                ),
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
          ]),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 10),
              Row(
                children: [
                  const SizedBox(width: 45),
                  Text(
                    'Ditugaskan',
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
                  color: cardColor,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const MyConten()),
                            );
                          },
                          child: ListTile(
                            title: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  margin: const EdgeInsets.only(bottom: 10),
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Text(
                                        'Pemrograman',
                                        style: GoogleFonts.inter().copyWith(
                                          fontWeight: FontWeight.bold,
                                          color: texWhiteColor,
                                        ),
                                      ),
                                      const SizedBox(width: 8),
                                      Stack(
                                        alignment: Alignment.center,
                                        children: [
                                          Container(
                                            height: 20,
                                            width: 20,
                                            decoration: BoxDecoration(
                                              shape: BoxShape.circle,
                                              color: orangeColor,
                                            ),
                                          ),
                                          Text(
                                            '1',
                                            style: GoogleFonts.inter().copyWith(
                                                fontSize: 13,
                                                fontWeight: FontWeight.bold,
                                                color: texWhiteColor),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                Row(
                                  children: [
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(15.0),
                                      child: Image.asset(
                                        'assets/img/pemrograman.jpg',
                                        width: 75,
                                        height: 75,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    const CircleAvatar(
                                      backgroundImage:
                                          AssetImage('assets/img/user.png'),
                                      radius: 19,
                                    ),
                                    const SizedBox(width: 8),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        const SizedBox(height: 20),
                                        Text(
                                          'Dimas Aryo Wardoyo',
                                          style: GoogleFonts.inter().copyWith(
                                              fontSize: 13,
                                              fontWeight: FontWeight.bold,
                                              color: texWhiteColor),
                                        ),
                                        Text(
                                          '09/04/2024',
                                          style: GoogleFonts.inter().copyWith(
                                            fontSize: 12,
                                            color: texWhiteColor,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            subtitle: Container(
                              margin: const EdgeInsets.only(
                                left: 130,
                              ),
                              child: Text(
                                'Satu tugas baru di upload Belum diserahkan',
                                style: GoogleFonts.inter().copyWith(
                                  fontSize: 13,
                                  color: texWhiteColor,
                                ),
                              ),
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
      ),
    );
  }
}

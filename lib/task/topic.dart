import 'package:flutter/material.dart';
import 'package:kelas/task/material.dart';
import 'package:kelas/theme.dart';
import 'package:google_fonts/google_fonts.dart';

class Topic extends StatelessWidget {
  const Topic({super.key});

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
              const SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  const SizedBox(width: 45),
                  Text(
                    'Your Progres',
                    style: GoogleFonts.inter().copyWith(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: texBlackColor,
                    ),
                  )
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    margin: const EdgeInsets.only(
                      top: 9,
                      left: 64,
                    ),
                    child: Text(
                      'Topic 1',
                      style: GoogleFonts.inter().copyWith(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: texBlackColor,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(5.0),
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
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => const MyConten(),
                                      ));
                                },
                                leading: ClipRRect(
                                  borderRadius: BorderRadius.circular(15.0),
                                  child: Stack(
                                    alignment: Alignment.center,
                                    children: [
                                      Container(
                                        width: 56,
                                        height: 56,
                                        color: yellowColor,
                                      ),
                                      const Icon(Icons.file_copy_outlined)
                                    ],
                                  ),
                                ),
                                title: Padding(
                                  padding: const EdgeInsets.all(0.6),
                                  child: Text(
                                    'Struct',
                                    style: GoogleFonts.inter().copyWith(
                                      color: texWhiteColor,
                                      fontWeight: FontWeight.normal,
                                      fontSize: 12,
                                    ),
                                  ),
                                ),
                                subtitle: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Text(
                                      '09/04/2024',
                                      style: GoogleFonts.inter().copyWith(
                                        color: texWhiteColor,
                                        fontWeight: FontWeight.normal,
                                        fontSize: 12,
                                      ),
                                    ),
                                    Row(
                                      children: [
                                        Icon(
                                          Icons.timelapse_outlined,
                                          color: texWhiteColor,
                                          size: 17.0,
                                        ),
                                        const SizedBox(
                                          width: 3,
                                          height: 15,
                                        ),
                                        Text(
                                          '12.00 - 16.00',
                                          style: GoogleFonts.inter().copyWith(
                                            color: texWhiteColor,
                                            fontWeight: FontWeight.normal,
                                            fontSize: 12,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    margin: const EdgeInsets.only(
                      top: 9,
                      left: 64,
                    ),
                    child: Text(
                      'Topic 1',
                      style: GoogleFonts.inter().copyWith(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: texBlackColor,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(5.0),
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
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => const MyConten(),
                                      ));
                                },
                                leading: ClipRRect(
                                  borderRadius: BorderRadius.circular(15.0),
                                  child: Stack(
                                    alignment: Alignment.center,
                                    children: [
                                      Container(
                                        width: 56,
                                        height: 56,
                                        color: yellowColor,
                                      ),
                                      const Icon(Icons.file_copy_outlined)
                                    ],
                                  ),
                                ),
                                title: Padding(
                                  padding: const EdgeInsets.all(0.6),
                                  child: Text(
                                    'Struct',
                                    style: GoogleFonts.inter().copyWith(
                                      color: texWhiteColor,
                                      fontWeight: FontWeight.normal,
                                      fontSize: 12,
                                    ),
                                  ),
                                ),
                                subtitle: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Text(
                                      '09/04/2024',
                                      style: GoogleFonts.inter().copyWith(
                                        color: texWhiteColor,
                                        fontWeight: FontWeight.normal,
                                        fontSize: 12,
                                      ),
                                    ),
                                    Row(
                                      children: [
                                        Icon(
                                          Icons.timelapse_outlined,
                                          color: texWhiteColor,
                                          size: 17.0,
                                        ),
                                        const SizedBox(
                                          width: 3,
                                          height: 15,
                                        ),
                                        Text(
                                          '12.00 - 16.00',
                                          style: GoogleFonts.inter().copyWith(
                                            color: texWhiteColor,
                                            fontWeight: FontWeight.normal,
                                            fontSize: 12,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    margin: const EdgeInsets.only(
                      top: 9,
                      left: 64,
                    ),
                    child: Text(
                      'Topic 1',
                      style: GoogleFonts.inter().copyWith(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: texBlackColor,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(5.0),
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
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => const MyConten(),
                                      ));
                                },
                                leading: ClipRRect(
                                  borderRadius: BorderRadius.circular(15.0),
                                  child: Stack(
                                    alignment: Alignment.center,
                                    children: [
                                      Container(
                                        width: 56,
                                        height: 56,
                                        color: yellowColor,
                                      ),
                                      const Icon(Icons.file_copy_outlined)
                                    ],
                                  ),
                                ),
                                title: Padding(
                                  padding: const EdgeInsets.all(0.6),
                                  child: Text(
                                    'Struct',
                                    style: GoogleFonts.inter().copyWith(
                                      color: texWhiteColor,
                                      fontWeight: FontWeight.normal,
                                      fontSize: 12,
                                    ),
                                  ),
                                ),
                                subtitle: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Text(
                                      '09/04/2024',
                                      style: GoogleFonts.inter().copyWith(
                                        color: texWhiteColor,
                                        fontWeight: FontWeight.normal,
                                        fontSize: 12,
                                      ),
                                    ),
                                    Row(
                                      children: [
                                        Icon(
                                          Icons.timelapse_outlined,
                                          color: texWhiteColor,
                                          size: 17.0,
                                        ),
                                        const SizedBox(
                                          width: 3,
                                          height: 15,
                                        ),
                                        Text(
                                          '12.00 - 16.00',
                                          style: GoogleFonts.inter().copyWith(
                                            color: texWhiteColor,
                                            fontWeight: FontWeight.normal,
                                            fontSize: 12,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    margin: const EdgeInsets.only(
                      top: 9,
                      left: 64,
                    ),
                    child: Text(
                      'Topic 1',
                      style: GoogleFonts.inter().copyWith(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: texBlackColor,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(5.0),
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
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => const MyConten(),
                                      ));
                                },
                                leading: ClipRRect(
                                  borderRadius: BorderRadius.circular(15.0),
                                  child: Stack(
                                    alignment: Alignment.center,
                                    children: [
                                      Container(
                                        width: 56,
                                        height: 56,
                                        color: yellowColor,
                                      ),
                                      const Icon(Icons.file_copy_outlined)
                                    ],
                                  ),
                                ),
                                title: Padding(
                                  padding: const EdgeInsets.all(0.6),
                                  child: Text(
                                    'Struct',
                                    style: GoogleFonts.inter().copyWith(
                                      color: texWhiteColor,
                                      fontWeight: FontWeight.normal,
                                      fontSize: 12,
                                    ),
                                  ),
                                ),
                                subtitle: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Text(
                                      '09/04/2024',
                                      style: GoogleFonts.inter().copyWith(
                                        color: texWhiteColor,
                                        fontWeight: FontWeight.normal,
                                        fontSize: 12,
                                      ),
                                    ),
                                    Row(
                                      children: [
                                        Icon(
                                          Icons.timelapse_outlined,
                                          color: texWhiteColor,
                                          size: 17.0,
                                        ),
                                        const SizedBox(
                                          width: 3,
                                          height: 15,
                                        ),
                                        Text(
                                          '12.00 - 16.00',
                                          style: GoogleFonts.inter().copyWith(
                                            color: texWhiteColor,
                                            fontWeight: FontWeight.normal,
                                            fontSize: 12,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

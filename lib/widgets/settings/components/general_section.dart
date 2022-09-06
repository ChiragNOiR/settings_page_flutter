import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Column GeneralSectionMethod() {
    return Column(
            children: [
              Container(
                padding: const EdgeInsets.all(8),
                height: 130,
                decoration: BoxDecoration(
                    color: const Color.fromRGBO(78, 78, 97, 0.2),
                    borderRadius: BorderRadius.circular(10)),
                child: ListView(
                  children: [
                    ListTile(
                      leading: Image.asset(
                        'assets/icons/security.png',
                        height: 30,
                      ),
                      iconColor: Colors.grey,
                      title: Text(
                        'Security',
                        style: TextStyle(
                            fontSize: 15,
                            fontFamily: GoogleFonts.inter().fontFamily,
                            fontWeight: FontWeight.w600,
                            color: const Color(0xFFFFFFFF)),
                      ),
                      trailing: const Icon(Icons.arrow_forward_ios, size: 15),
                    ),
                    ListTile(
                      leading: Image.asset(
                        'assets/icons/iCloud.png',
                        height: 30,
                      ),
                      iconColor: Colors.grey,
                      title: Text(
                        'iCloud Sync',
                        style: TextStyle(
                            fontSize: 15,
                            fontFamily: GoogleFonts.inter().fontFamily,
                            fontWeight: FontWeight.w600,
                            color: const Color(0xFFFFFFFF)),
                      ),
                      // trailing: const Icon(Icons.arrow_forward, size: 15),
                    ),
                  ],
                ),
              ),
            ],
          );
  }

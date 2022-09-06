import 'package:build_two/widgets/settings/components/appearance_section.dart';
import 'package:build_two/widgets/settings/components/general_section.dart';
import 'package:build_two/widgets/settings/components/subscription_section.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../data/models/settings_data.dart';

class SettingsBody extends StatefulWidget {
  const SettingsBody({super.key});

  @override
  State<SettingsBody> createState() => _SettingsBodyState();
}

class _SettingsBodyState extends State<SettingsBody> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: const Text(
          'Settings',
          style: TextStyle(color: Color(0xFFA2A2B5)),
        ),
        automaticallyImplyLeading: false,
        leading: IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.arrow_back,
              color: Color(0xFFA2A2B5),
            )),
      ),
      body: Container(
        padding: const EdgeInsets.only(left: 16, top: 25, right: 16),
        child: ListView(
          children: [
            Container(
              width: 110,
              height: 110,
              decoration: BoxDecoration(
                  image: DecorationImage(
                image: AssetImage(settingsArrayList[0].settingsImageUrl),
                // fit: BoxFit.cover
              )),
            ),
            Text(
              settingsArrayList[0].imageHeading,
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontFamily: GoogleFonts.dmSans().fontFamily,
                  fontSize: 25,
                  fontWeight: FontWeight.w600,
                  color: Colors.white),
            ),
            const SizedBox(
              height: 3,
            ),
            Text(
              settingsArrayList[0].imageSubHeading,
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontFamily: GoogleFonts.dmSans().fontFamily,
                  fontSize: 15,
                  fontWeight: FontWeight.w300,
                  color: const Color(0xFFA2A2B5)),
            ),
            const SizedBox(
              height: 25,
            ),
            const SizedBox(
              height: 50.0,
              width: 100.0,
              child: FloatingActionButton.extended(
                  onPressed: null,
                  label: Text('Edit Profile'),
                  backgroundColor: Color.fromRGBO(255, 255, 255, 0.1)),
            ),
            const SizedBox(
              height: 25,
            ),
            Text(
              'General',
              style: TextStyle(
                  fontFamily: GoogleFonts.inter().fontFamily,
                  fontSize: 15,
                  color: Colors.white),
            ),
            const SizedBox(
              height: 15,
            ),
            GeneralSectionMethod(),
            const SizedBox(
              height: 25,
            ),
            Text(
              'My subscriptions',
              style: TextStyle(
                  fontFamily: GoogleFonts.inter().fontFamily,
                  fontSize: 15,
                  color: Colors.white),
            ),
            const SizedBox(
              height: 15,
            ),
            SubscriptionsSectionMethod(),
            const SizedBox(
              height: 25,
            ),
            Text(
              'Appearance',
              style: TextStyle(
                  fontFamily: GoogleFonts.inter().fontFamily,
                  fontSize: 15,
                  color: Colors.white),
            ),
            const SizedBox(
              height: 15,
            ),
            AppearanceSectionMethod(),
          ],
        ),
      ),
    );
  }

  
}
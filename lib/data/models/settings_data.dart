import 'package:flutter/material.dart';
class SettingsData {
  final String settingsImageUrl;
  final String imageHeading;
  final String imageSubHeading;

  SettingsData (this.settingsImageUrl, this.imageHeading, this.imageSubHeading);
}

final settingsArrayList = [
SettingsData('assets/images/profile.png', 'John Doe', 'j.doe@gmail.com'),
 ];
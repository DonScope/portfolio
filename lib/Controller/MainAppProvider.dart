import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Mainappprovider extends ChangeNotifier {
  int index = 0;
  Future<void> openLink(String url) async {
    final Uri uri = Uri.parse(url); 

    if (await canLaunchUrl(uri)) { 
      await launchUrl(uri);
    } else {
      throw 'Could not launch $url';
    }
  }


 void  updateIndex({int? newIndex }) {
    index = newIndex!;
  notifyListeners();

    
  }
} 
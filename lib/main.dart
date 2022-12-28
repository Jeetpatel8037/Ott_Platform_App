import 'package:flutter/material.dart';
import 'package:ott_platforms/screens/HomePage.dart';
import 'package:ott_platforms/screens/HotStar.dart';
import 'package:ott_platforms/screens/Netflix.dart';
import 'package:ott_platforms/screens/PrimeVideo.dart';
import 'package:ott_platforms/screens/SonyLiv.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => const OttPlatform(),
        'Netflix': (context) => const Netflix(),
        'PrimeVideo': (context) => const PrimeVideo(),
        'HotStar': (context) => const HotStar(),
        'SonyLiv': (context) => const SonyLiv(),
      },
    ),
  );
}

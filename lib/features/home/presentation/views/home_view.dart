import 'package:flutter/material.dart';
import 'package:google_maps_app/core/widgets/test_google_maps.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Google Map App"),),
      body: const TestGoogleMaps(),
    );
  }
}

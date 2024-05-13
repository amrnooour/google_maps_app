import 'package:flutter/material.dart';
import 'package:google_maps_app/features/home/presentation/views/home_view.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 2),(){
      Navigator.push(context, PageRouteBuilder(pageBuilder: (context, animation, secondaryAnimation) => const HomeView(),));
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(body:  Center(child: Image.asset("assets/map.jpeg",height: 150,width: 250,fit: BoxFit.fill,)));
  }
}
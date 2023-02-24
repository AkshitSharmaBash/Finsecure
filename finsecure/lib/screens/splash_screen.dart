// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:finsecure/screens/addCash.dart';
import 'package:finsecure/screens/home.dart';
import 'package:flutter/material.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    _navigateToHome();
  }

  _navigateToHome() async {
    await Future.delayed(Duration(milliseconds: 2000));
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => AddCash()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFF12BF88),
        body: SafeArea(
            child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 120.0,
                width: 120.0,
                decoration: BoxDecoration(
                    image: DecorationImage(
                  image: AssetImage("images/bitcoinWallet.png"),
                )),
              ),
              Text(
                "Finsecure",
                style: TextStyle(
                  fontSize: 34,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 10),
                child: Text(
                  "- One stop Place for financial security",
                  style: TextStyle(
                      fontWeight: FontWeight.w400, color: Colors.white),
                ),
              )
            ],
          ),
        )));
  }
}

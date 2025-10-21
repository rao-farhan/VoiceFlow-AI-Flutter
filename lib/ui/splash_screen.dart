import 'package:fire_base/firebase_services/splash_services.dart';
import 'package:flutter/material.dart';
import 'screen2.dart';
class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  SplashServices splashScreen = SplashServices();
  void initState() {
    // TODO: implement initState
    super.initState();
    splashScreen.isLogin(context);
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Color(0xFF001C1C), // dark teal shade
                Color(0xFF0B0013), // black center
                Color(0xFF1B0018), // purple shade
              ],
              stops: [0.0, 0.5, 1.0],
            ),
          ),
          child: Stack(
            alignment: Alignment.center,
            children: [
              // Logo + Text Center
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // V Logo
                  Stack(
                    alignment: Alignment.center,
                    children: [
                      Transform.rotate(
                        angle: -0.2,
                        child: Container(
                          width: 90,
                          height: 90,
                          decoration: const BoxDecoration(
                            border: Border(
                              bottom: BorderSide(
                                color: Colors.cyanAccent,
                                width: 6,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Transform.rotate(
                        angle: 0.8,
                        child: Container(
                          width: 90,
                          height: 90,
                          decoration: const BoxDecoration(
                            border: Border(
                              bottom: BorderSide(
                                color: Colors.white,
                                width: 6,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),

                  // CHAT text
                  const Text(
                    "CHAT",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 36,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 3,
                    ),
                  ),
                ],
              ),

              // Bottom credit text
              const Positioned(
                bottom: 40,
                child: Text(
                  "By Ahsan Shah",
                  style: TextStyle(
                    color: Colors.white70,
                    fontSize: 16,
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
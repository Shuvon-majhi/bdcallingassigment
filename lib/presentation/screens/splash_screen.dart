import 'package:bdcallingassigment/presentation/screens/user_list_view.dart';
import 'package:bdcallingassigment/presentation/widgets/app_logo.dart';
import 'package:bdcallingassigment/presentation/widgets/background.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  
  @override
  void initState() {
    super.initState();
    _moveToNextScreen();
  }

  Future<void> _moveToNextScreen() async {
    await Future.delayed(const Duration(seconds: 3));

    if (mounted) {
      Navigator.pushReplacement(context,
          MaterialPageRoute(builder: (context) => const userlistview()));
    }
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Backgroundwidget(
        child: Center(
          child: applogo(),
        ),
      ),
    );
  }
}

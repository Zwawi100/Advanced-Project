import 'dart:async';

import 'package:advancedproject/presentation/resources/color_manager.dart';
import 'package:advancedproject/presentation/resources/routes_manager.dart';
import 'package:flutter/material.dart';

import '../resources/assets_manager.dart';
import '../resources/constants_manager.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView>
    with SingleTickerProviderStateMixin {
  Timer? _timer;
  late AnimationController _animationController;
  late Animation<Offset> _slidingAnimation;

  _startDelay() {
    _timer =
        Timer(Duration(seconds: AppConstants.splashDelay), _goToNextScreen);
  }

  _goToNextScreen() {
    Navigator.pushReplacementNamed(context, Routes.onboardingRoute);
  }

  @override
  void initState() {
    super.initState();
    _startDelay();
    initSlidingAnimation();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.background,
      body: Center(
        child: AnimatedBuilder(
          animation: _slidingAnimation,
          builder: (context, child) {
            return SlideTransition(
              position: _slidingAnimation,
              child: Image(image: AssetImage(ImageAssets.splashLogo)),
            );
          },
        ),
      ),
    );
  }

  @override
  void dispose() {
    _timer?.cancel();
    _animationController.dispose();
    super.dispose();
  }

  initSlidingAnimation() {
    _animationController = AnimationController(
        vsync: this,
        duration: Duration(seconds: AppConstants.animationDuration));
    _slidingAnimation = Tween<Offset>(
      begin: const Offset(0, -4), // Start from above the screen
      end: Offset.zero, // End at the original position
    ).animate(CurvedAnimation(
      parent: _animationController,
      curve: Curves.easeInOut,
    ));
    _animationController.forward();
  }
}

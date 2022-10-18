import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomePageTop extends StatefulWidget {
  const HomePageTop({super.key});

  @override
  State<HomePageTop> createState() => _HomePageTopState();
}

class _HomePageTopState extends State<HomePageTop>
    with TickerProviderStateMixin {
// CREATING ANIMATION CONTROLLERS

  late AnimationController _animationController;
  late Animation _animation;

  @override
  void initState() {
    super.initState();

    //initializing the duration and curves of animation
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(
        milliseconds: 400,
      ),
    );

    _animation = CurvedAnimation(
      parent: _animationController,
      curve: Curves.easeInOut,
    );

    _animationController.forward();
  }

  @override
  Widget build(BuildContext context) {
    //home page top part component for simple accesss.
    return Padding(
      padding: EdgeInsets.only(
        right: 24.w,
        left: 24.w,
      ),
      child: SlideTransition(
        position: Tween<Offset>(
          begin: const Offset(0, -0.5),
          end: Offset.zero,
        ).animate(_animationController),
        child: FadeTransition(
          opacity: _animationController,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Hi, Risab',
                    style: TextStyle(
                      color: const Color(0x54FFFFFF),
                      fontSize: 14.sp,
                    ),
                  ),
                  Text(
                    'Welcome Back!',
                    style: TextStyle(
                      color: const Color(0x95FFFFFF),
                      fontSize: 18.sp,
                      fontWeight: FontWeight.w800,
                    ),
                  )
                ],
              ),
              CircleAvatar(
                radius: 22.r,
                backgroundImage: const AssetImage(
                  'images/hero.png',
                ),
                backgroundColor: Colors.transparent,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

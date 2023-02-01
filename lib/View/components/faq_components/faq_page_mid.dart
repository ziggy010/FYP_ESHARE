import 'package:accordion/accordion.dart';
import 'package:e_share/Controller/faq_controller/faq_controller.dart';
import 'package:e_share/Main%20files/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class FaqPageMid extends StatefulWidget {
  @override
  State<FaqPageMid> createState() => _FaqPageMidState();
}

class _FaqPageMidState extends State<FaqPageMid> with TickerProviderStateMixin {
  late AnimationController _animationController, textAnimationController;
  late Animation _animation;
  late Animation<double> textAnimation;
  final FaqPageController _faqPageController = Get.put(FaqPageController());

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(
        milliseconds: 600,
      ),
    );
    textAnimationController = AnimationController(
      vsync: this,
      duration: const Duration(
        milliseconds: 300,
      ),
    );

    _animation = CurvedAnimation(
      parent: _animationController,
      curve: Curves.easeInOut,
    );
    textAnimation = CurvedAnimation(
      parent: textAnimationController,
      curve: Curves.easeInOut,
    );

    _animationController.forward();
  }

  TextStyle headerTextStyle = TextStyle(
    color: Colors.white,
    fontFamily: 'poppins',
    fontSize: 18.sp,
    fontWeight: FontWeight.bold,
  );

  TextStyle contentTextStyle = TextStyle(
    color: Colors.white,
    fontFamily: 'poppins',
    fontSize: 13.sp,
  );

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: 16.h,
      ),
      child: Column(
        children: [
          SlideTransition(
            position: Tween<Offset>(
              begin: Offset(0, -0.1),
              end: Offset.zero,
            ).animate(
              _animationController,
            ),
            child: FadeTransition(
              opacity: _animationController,
              child: Text(
                'Frequently Asked Question:',
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'poppins',
                  fontSize: 30.sp,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 15.h,
          ),
          Accordion(
            rightIcon: Icon(
              Icons.keyboard_arrow_down_rounded,
              color: Colors.white,
              size: 30.sm,
            ),
            paddingListHorizontal: 0,
            headerBackgroundColor: kContainerColor,
            contentBackgroundColor: kContainerColor,
            contentBorderColor: kContainerColor,
            contentHorizontalPadding: 0,
            scaleWhenAnimating: false,
            children: [
              AccordionSection(
                header: Text(
                  'first',
                  style: headerTextStyle,
                ),
                isOpen: true,
                content: Text(
                  'This is the introduction right here hello hello hello hello',
                  style: contentTextStyle,
                ),
              ),
              AccordionSection(
                header: Text(
                  'first',
                  style: headerTextStyle,
                ),
                isOpen: true,
                content: Icon(Icons.airline_seat_flat,
                    size: 120, color: Colors.blue[200]),
              ),
              AccordionSection(
                header: Text(
                  'first',
                  style: headerTextStyle,
                ),
                isOpen: true,
                content:
                    Icon(Icons.airplay, size: 70, color: Colors.green[200]),
              ),
              AccordionSection(
                header: Text(
                  'first',
                  style: headerTextStyle,
                ),
                isOpen: true,
                content: Icon(Icons.airline_seat_flat,
                    size: 120, color: Colors.blue[200]),
              ),
              AccordionSection(
                header: Text(
                  'first',
                  style: headerTextStyle,
                ),
                isOpen: true,
                content:
                    Icon(Icons.airplay, size: 70, color: Colors.green[200]),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
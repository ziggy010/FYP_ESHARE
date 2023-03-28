import 'package:e_share/View/components/saved_card_detail_components/saved_card_detail_container.dart';
import 'package:e_share/constant.dart';
import 'package:e_share/View/components/main_components/my_card_details_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SavedCardDetailBottom extends StatelessWidget {
  final AnimationController animationController;
  final Animation animation;
  final String docId;

  SavedCardDetailBottom({
    required this.animation,
    required this.animationController,
    required this.docId,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.only(
          top: 32.h,
        ),
        child: SlideTransition(
          position: Tween<Offset>(
            begin: Offset(0, 0.1),
            end: Offset.zero,
          ).animate(
            animationController,
          ),
          child: FadeTransition(
            opacity: animationController,
            child: Container(
              height: 200.h,
              width: double.infinity,
              decoration: BoxDecoration(
                color: kContainerColor,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(
                    30.r,
                  ),
                  topRight: Radius.circular(
                    30.r,
                  ),
                ),
              ),
              child: SavedCardDetailContainer(
                docId: docId,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

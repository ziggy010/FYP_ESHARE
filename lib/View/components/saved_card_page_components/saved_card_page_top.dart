import 'package:e_share/Controller/saved_card_page_controller/saved_card_page_controller.dart';
import 'package:e_share/Model/CRUD/read_documents/get_saved_cards/get_saved_card_List.dart';
import 'package:e_share/Model/saved_card_page_model/saved_card_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../constant.dart';

class SavedCardPageTop extends StatelessWidget {
  final TextEditingController textEditingController;

  final AnimationController animationController;

  SavedCardPageTop({
    required this.textEditingController,
    required this.animationController,
  });

  final _getSavedCardModel = GetSavedCardListModel();

  List popList = ["Alphabetically"];

  final _savedCardPageController = Get.find<SavedCardPageController>();

  @override
  Widget build(BuildContext context) {
    return SlideTransition(
      position: Tween<Offset>(
        begin: Offset(0, -0.3),
        end: Offset.zero,
      ).animate(animationController),
      child: FadeTransition(
        opacity: animationController,
        child: FutureBuilder(
          future: _getSavedCardModel.getSavedCardDetails(),
          builder: (BuildContext context, AsyncSnapshot snapshot) {
            return Row(
              children: [
                Expanded(
                  child: TextField(
                    keyboardType: TextInputType.name,
                    keyboardAppearance: Brightness.dark,
                    onChanged: (value) {
                      _savedCardPageController.filterCards(value);
                    },
                    autocorrect: false,
                    enableSuggestions: false,
                    cursorColor: Colors.grey.shade400,
                    style: const TextStyle(
                      color: Colors.white,
                      fontFamily: 'poppins',
                    ),
                    decoration: InputDecoration(
                      prefixIcon: const Icon(
                        Icons.search_outlined,
                        color: Colors.white,
                      ),
                      fillColor: kContainerColor,
                      filled: true,
                      enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                          color: kContainerColor,
                        ),
                        borderRadius: BorderRadius.circular(15.r),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                          color: kSelectedColor,
                        ),
                        borderRadius: BorderRadius.circular(15.r),
                      ),
                      hintText: 'Search Cards',
                      hintStyle: TextStyle(
                        color: Colors.grey.shade600,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 12.w,
                ),
                Container(
                  height: 52.h,
                  width: 52.w,
                  decoration: BoxDecoration(
                    color: kContainerColor,
                    borderRadius: BorderRadius.circular(
                      10.r,
                    ),
                  ),
                  child: PopupMenuButton(
                    offset: Offset(0, 20),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(
                        10.r,
                      ),
                    ),
                    color: kContainerColor,
                    position: PopupMenuPosition.under,
                    splashRadius: 0.1,
                    icon: Icon(
                      Icons.filter_list_rounded,
                      color: Colors.white,
                      size: 30.sp,
                    ),
                    itemBuilder: (context) {
                      return popList
                          .map((e) => PopupMenuItem(
                                onTap: () {
                                  _savedCardPageController.foundCards.value =
                                      _savedCardPageController.foundCards.value
                                          .toList()
                                        ..sort((a, b) =>
                                            a['Name'].compareTo(b['Name']));
                                },
                                value: e,
                                child: Container(
                                  child: Text(
                                    e,
                                    style: const TextStyle(
                                      color: Colors.white,
                                      fontFamily: 'poppins',
                                    ),
                                  ),
                                ),
                              ))
                          .toList();
                    },
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}

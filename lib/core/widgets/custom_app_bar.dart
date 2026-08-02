import 'package:flutter/material.dart';
import 'package:fruit_hub/core/utils/app_text_styles.dart';

AppBar buildAppBar({required BuildContext context, required String title}) {
  return AppBar(
    backgroundColor: Colors.white,
    centerTitle: true,
    leading: GestureDetector(
      child: Icon(Icons.arrow_back_ios_new),
      onTap: () {
        Navigator.pop(context);
      },
    ),
    title: Text(title, style: TextStyles.bold19, textAlign: TextAlign.center),
  );
}
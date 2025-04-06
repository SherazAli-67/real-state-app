import 'package:flutter/material.dart';

import '../res/app_text_styles.dart';

class AppBtn extends StatelessWidget {
  const AppBtn({
    super.key,
    required this.text,
    required this.onTap
  });
  final String text;
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(

        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.black,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10)
          ),
        ),
        onPressed: onTap, child: Text(text, style: AppTextStyles.btnTextStyle.copyWith(color: Colors.white),));
  }
}
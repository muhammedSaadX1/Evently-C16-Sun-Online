import 'package:evently_sun_online/core/resources/colors_manager.dart' show ColorsManager;
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomTextButton extends StatelessWidget {
  const CustomTextButton({super.key, required this.text, required this.onTap, this.alignment = Alignment.center});
final String text;
final VoidCallback onTap;
final AlignmentGeometry alignment;
  @override
  Widget build(BuildContext context) {
    return  Container(
      alignment: alignment,
      child: GestureDetector(
        onTap: onTap,
        child: Text(

          text,
          style: GoogleFonts.inter(
              fontSize: 16.sp,
              color: ColorsManager.blue,
              fontWeight: FontWeight.bold,
              decorationColor: ColorsManager.blue,
              decoration: TextDecoration.underline,
              fontStyle: FontStyle.italic
          ),
        ),
      ),
    );
  }
}

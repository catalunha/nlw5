import 'package:DevQuiz/core/app_colors.dart';
import 'package:DevQuiz/core/core.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LevelButtonWidget extends StatelessWidget {
  final String label;
  final Color color;
  final Color colorBorder;
  final Color colorFont;

  const LevelButtonWidget(
      {Key? key,
      required this.label,
      required this.color,
      required this.colorBorder,
      required this.colorFont})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: color,
        border: Border.fromBorderSide(
          BorderSide(
            color: colorBorder,
          ),
        ),
        borderRadius: BorderRadius.circular(28),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 26,
          vertical: 6,
        ),
        child: Text(
          label,
          style: GoogleFonts.notoSans(color: colorFont, fontSize: 13),
        ),
      ),
    );
  }
}

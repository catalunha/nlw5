import 'package:DevQuiz/core/core.dart';
import 'package:DevQuiz/shared/linear_progress_indicator/linear_progress_indicator_widget.dart';
import 'package:flutter/material.dart';

class QuestionIndicatorWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Questão 04",
                style: AppTextStyles.body,
              ),
              Text("de 10", style: AppTextStyles.body)
            ],
          ),
          SizedBox(height: 16),
          LinearProgressIndicatorWidget(
            value: 0.7,
          ),
        ],
      ),
    );
  }
}

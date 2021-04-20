import 'package:DevQuiz/core/core.dart';
import 'package:DevQuiz/home/quiz_card/quiz_card_widget.dart';
import 'package:DevQuiz/home/widgets/appbar/app_bar_widget.dart';
import 'package:DevQuiz/home/widgets/level_button/level_button_widget.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarwidget(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            SizedBox(
              height: 24,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                LevelButtonWidget(
                  label: "Fácil",
                  color: AppColors.levelButtonFacil,
                  colorBorder: AppColors.levelButtonFacil,
                  colorFont: AppColors.levelButtonTextFacil,
                ),
                LevelButtonWidget(
                  label: "Medio",
                  color: AppColors.levelButtonMedio,
                  colorBorder: AppColors.levelButtonMedio,
                  colorFont: AppColors.levelButtonTextMedio,
                ),
                LevelButtonWidget(
                  label: "Dificil",
                  color: AppColors.levelButtonDificil,
                  colorBorder: AppColors.levelButtonDificil,
                  colorFont: AppColors.levelButtonTextDificil,
                ),
                LevelButtonWidget(
                  label: "Perito",
                  color: AppColors.levelButtonPerito,
                  colorBorder: AppColors.levelButtonPerito,
                  colorFont: AppColors.levelButtonTextPerito,
                ),
              ],
            ),
            SizedBox(
              height: 24,
            ),
            Expanded(
              child: GridView.count(
                crossAxisCount: 2,
                crossAxisSpacing: 16,
                mainAxisSpacing: 16,
                children: [
                  QuizCardWidget(),
                  QuizCardWidget(),
                  QuizCardWidget(),
                  QuizCardWidget(),
                  QuizCardWidget(),
                  QuizCardWidget(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

import 'package:DevQuiz/core/core.dart';
import 'package:DevQuiz/home/home_repository.dart';
import 'package:DevQuiz/home/home_state.dart';
import 'package:DevQuiz/shared/models/answer_model.dart';
import 'package:DevQuiz/shared/models/question_model.dart';
import 'package:DevQuiz/shared/models/quiz_model.dart';
import 'package:DevQuiz/shared/models/user_model.dart';
import 'package:flutter/material.dart';

class HomeController {
  final ValueNotifier<HomeState> stateNotifier =
      ValueNotifier<HomeState>(HomeState.empty);
  set state(HomeState state) => stateNotifier.value = state;
  HomeState get state => stateNotifier.value;

  UserModel? user;
  List<QuizModel>? quizzes;

  final repository = HomeRepository();

  void getUser() async {
    state = HomeState.loading;
    user = await repository.getUser();
    // user = UserModel(
    //   name: "Catalunha.MJ",
    //   photoUrl: "https://avatars.githubusercontent.com/u/19995819?v=4",
    // );
    state = HomeState.success;
  }

  void getQuizzes() async {
    state = HomeState.loading;
    quizzes = await repository.getQuizzes();

    // quizzes = [
    //   QuizModel(
    //     title: "NLW 5 Flutter",
    //     imagem: AppImages.blocks,
    //     level: Level.ease,
    //     questions: [
    //       QuestionModel(
    //         title: "Esta curtindo o Flutter",
    //         answer: [
    //           AnswerModel(title: "Estou curtindo", isRight: true),
    //           AnswerModel(title: "Não Estou curtindo"),
    //         ],
    //       ),
    //       QuestionModel(
    //         title: "Esta curtindo o Flutter2",
    //         answer: [
    //           AnswerModel(title: "Estou curtindo2", isRight: true),
    //           AnswerModel(title: "Não Estou curtindo2"),
    //         ],
    //       ),
    //     ],
    //   )
    // ];
    state = HomeState.success;
  }
}

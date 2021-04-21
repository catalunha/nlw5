import 'dart:convert';

import 'package:DevQuiz/shared/models/question_model.dart';
import 'package:collection/collection.dart';

enum Level { ease, mid, hard, expert }

extension LevelStringExtension on String {
  Level get parseString2Level => {
        "ease": Level.ease,
        "mid": Level.mid,
        "hard": Level.hard,
        "expert": Level.expert,
      }[this]!;
}

extension LevelExtension on Level {
  String get parseLevel2String => {
        Level.ease: "ease",
        Level.mid: "mid",
        Level.hard: "hard",
        Level.expert: "expert",
      }[this]!;
}

class QuizModel {
  final String title;
  final List<QuestionModel> questions;
  final int questionAnswered;
  final String imagem;
  final Level level;

  QuizModel({
    required this.title,
    required this.questions,
    this.questionAnswered = 0,
    required this.imagem,
    required this.level,
  });

  QuizModel copyWith({
    String? title,
    List<QuestionModel>? questions,
    int? questionAnswered,
    String? imagem,
    Level? level,
  }) {
    return QuizModel(
      title: title ?? this.title,
      questions: questions ?? this.questions,
      questionAnswered: questionAnswered ?? this.questionAnswered,
      imagem: imagem ?? this.imagem,
      level: level ?? this.level,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'title': title,
      'questions': questions.map((x) => x.toMap()).toList(),
      'questionAnswered': questionAnswered,
      'imagem': imagem,
      'level': level.parseLevel2String,
    };
  }

  factory QuizModel.fromMap(Map<String, dynamic> map) {
    return QuizModel(
      title: map['title'],
      questions: List<QuestionModel>.from(
          map['questions']?.map((x) => QuestionModel.fromMap(x))),
      questionAnswered: map['questionAnswered'],
      imagem: map['imagem'],
      level: map['level'].toString().parseString2Level,
    );
  }

  String toJson() => json.encode(toMap());

  factory QuizModel.fromJson(String source) =>
      QuizModel.fromMap(json.decode(source));

  @override
  String toString() {
    return 'QuizModel(title: $title, questions: $questions, questionAnswered: $questionAnswered, imagem: $imagem, level: $level)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    final listEquals = const DeepCollectionEquality().equals;

    return other is QuizModel &&
        other.title == title &&
        listEquals(other.questions, questions) &&
        other.questionAnswered == questionAnswered &&
        other.imagem == imagem &&
        other.level == level;
  }

  @override
  int get hashCode {
    return title.hashCode ^
        questions.hashCode ^
        questionAnswered.hashCode ^
        imagem.hashCode ^
        level.hashCode;
  }
}

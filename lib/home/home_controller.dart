import 'package:DevQuiz/core/app_images.dart';
import 'package:DevQuiz/home/home_state.dart';
import 'package:DevQuiz/shared/models/answer_model.dart';
import 'package:DevQuiz/shared/models/question_model.dart';
import 'package:DevQuiz/shared/models/quiz_model.dart';
import 'package:DevQuiz/shared/models/user_model.dart';
import 'package:flutter/foundation.dart';

class HomeController {
  final stateNotifier = ValueNotifier<HomeState>(HomeState.empty);
  set state(HomeState state) => stateNotifier.value = state;
  HomeState get state => stateNotifier.value;

  UserModel? user;
  List<QuizModel>? quizzes;

  void getUser() async {
    state = HomeState.loading;
    await Future.delayed(Duration(seconds: 2));

    user = UserModel(
        name: "Lucas Mello", photoUrl: "https://github.com/lucassmelloo.png");
    state = HomeState.success;
  }

  void getQuizzes() async {
    state = HomeState.loading;
    await Future.delayed(Duration(seconds: 2));
    quizzes = [
      QuizModel(
          title: "NLW 5 Flutter",
          questionAnswered: 2,
          questions: [
            QuestionModel(
                title: "Você esta gostando de trabalhar com Flutter?",
                answers: [
                  AnswerModel(title: "Muito", isRight: true),
                  AnswerModel(title: "Não"),
                  AnswerModel(title: "Mais ou menos"),
                  AnswerModel(title: "Sim"),
                ]),
            QuestionModel(
                title: "Você esta gostando de trabalhar com Flutter?",
                answers: [
                  AnswerModel(title: "Muito", isRight: true),
                  AnswerModel(title: "Não"),
                  AnswerModel(title: "Mais ou menos"),
                  AnswerModel(title: "Sim"),
                ]),
            QuestionModel(
                title: "Você esta gostando de trabalhar com Flutter?",
                answers: [
                  AnswerModel(title: "Muito", isRight: true),
                  AnswerModel(title: "Não"),
                  AnswerModel(title: "Mais ou menos"),
                  AnswerModel(title: "Sim"),
                ])
          ],
          imagem: AppImages.blocks,
          level: Level.facil)
    ];
    state = HomeState.success;
  }
}

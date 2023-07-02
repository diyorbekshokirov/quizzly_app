import 'package:flutter/cupertino.dart';
import 'package:quizzly/controllers/intro_controller.dart';
import 'package:quizzly/models/quiz_model.dart';
import 'package:quizzly/views/app_routes.dart';

class AnswerController {
  void Function(void Function() fn) updater;
  late List<Quiz> answers;

  AnswerController({required this.updater});

  num get yourScore => ((100 / answers.length ) * correct);

  int get correct => answers.where((element) => element.answer == 1).toList().length;

  int get wrong => answers.where((element) => element.answer != 1).toList().length;

  void tryAgain(BuildContext context) {
    IntroController.currentLevel(context);
  }
  void gotoIntro(BuildContext context) {
    AppRoutes.goToIntro(context);
  }
}

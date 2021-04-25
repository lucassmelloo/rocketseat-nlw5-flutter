import 'package:DevQuiz/core/app_text_styles.dart';
import 'package:flutter/material.dart';

class ResultPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            width: double.maxFinite,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Parabéns!", style: AppTextStyles.heading40),
                Text.rich(TextSpan(
                    text: "Você concluiu",
                    style: AppTextStyles.body,
                    children: [
                      TextSpan(
                          text: "Gerenciamento de Estado",
                          style: AppTextStyles.bodyBold),
                      TextSpan(
                          text: "com 6 de 10 acertos!",
                          style: AppTextStyles.body),
                    ]))
              ],
            )));
  }
}

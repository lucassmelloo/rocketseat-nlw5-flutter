import 'package:flutter/material.dart';

import 'package:DevQuiz/challenge/widgets/next_button/next_button_widget.dart';
import 'package:DevQuiz/core/app_images.dart';
import 'package:DevQuiz/core/app_text_styles.dart';

class ResultPage extends StatelessWidget {
  final String title;
  final int length;
  final int result;
  const ResultPage({
    Key? key,
    required this.title,
    required this.length,
    required this.result,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            width: double.maxFinite,
            padding: EdgeInsets.only(top: 100),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  children: [
                    Image.asset(AppImages.trophy),
                    Text("Parabéns!", style: AppTextStyles.heading40),
                    SizedBox(height: 16),
                    Text.rich(
                      TextSpan(
                          text: "Você concluiu",
                          style: AppTextStyles.body,
                          children: [
                            TextSpan(
                                text: "\n$title\n",
                                style: AppTextStyles.bodyBold),
                            TextSpan(
                                text: "com $result de $length acertos!",
                                style: AppTextStyles.body),
                          ]),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
                Column(
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 68),
                            child: NextButtonWidget.purple(
                                label: "Compartilhar", onTap: () {}),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 24),
                    Row(
                      children: [
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 68),
                            child: NextButtonWidget.transparent(
                                label: "Voltar ao início",
                                onTap: () {
                                  Navigator.pop(context);
                                }),
                          ),
                        ),
                      ],
                    )
                  ],
                )
              ],
            )));
  }
}

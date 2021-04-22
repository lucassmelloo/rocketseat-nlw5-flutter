import 'package:devquiz/challenge/widgets/awnswer/anwser_widget.dart';
import 'package:devquiz/core/core.dart';
import 'package:flutter/material.dart';

class QuizWidget extends StatelessWidget {
  final String title;
  const QuizWidget({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Text(
            title,
            style: AppTextStyles.heading,
          ),
          SizedBox(
            height: 24,
          ),
          AnwserWidget(
              isRight: false,
              isSelected: true,
              title:
                  'Possibilita a criação de aplicativos compilados nativamente'),
          AnwserWidget(
              title:
                  'Possibilita a criação de aplicativos compilados nativamente'),
          AnwserWidget(
              title:
                  'Possibilita a criação de aplicativos compilados nativamente'),
          AnwserWidget(
              title:
                  'Possibilita a criação de aplicativos compilados nativamente'),
        ],
      ),
    );
  }
}

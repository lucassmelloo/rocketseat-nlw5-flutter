import 'package:devquiz/home/widgets/levelbutton/level_button_widget.dart';
import 'package:devquiz/home/widgets/quizcard/quiz_card_widgets.dart';
import 'package:flutter/material.dart';
import 'package:devquiz/home/widgets/appbar/app_bar_widget.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(),
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
                LevelButtonWidget(label: "Fácil"),
                LevelButtonWidget(label: "Médio"),
                LevelButtonWidget(label: "Difícil"),
                LevelButtonWidget(label: "Perito"),
              ],
            ),
            SizedBox(
              height: 24,
            ),
            Expanded(
                child: GridView.count(
              crossAxisCount: 2,
              /* crossAxisSpacing: 16, */
              children: [
                QuizCardWidget(),
                QuizCardWidget(),
                QuizCardWidget(),
              ],
            ))
          ],
        ),
      ),
    );
  }
}

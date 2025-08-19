import 'package:flutter/material.dart';
import '../theme/app_colors.dart';
import '../components/task.dart';

class InitialScreen extends StatefulWidget {
  const InitialScreen({super.key});

  @override
  State<InitialScreen> createState() => _InitialScreenState();
}

class _InitialScreenState extends State<InitialScreen> {
  bool opacidade = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: BackgroundColor,
      appBar: AppBar(
        leading: Container(),
        title: Text(
          'Tarefas',
        ),
      ),
      //Trecho de código suprimido
      body: AnimatedOpacity(
        opacity: opacidade ? 1 : 0,
        duration: Duration(microseconds: 800),
        child: ListView(
          children: [
            Task(
              'Aprender Flutter',
              'assets/images/Flutter.png',
              3,
            ),
            Task(
              'Andar de Bike',
              'assets/images/Bike.jpg',
              2,
            ),
            Task(
              'Meditar',
              'assets/images/Meditar.jpg',
              4,
            ),
            Task(
              'Ler',
              'assets/images/Ler.jpg',
              1,
            ),
            Task(
              'Jogar',
              'assets/images/Jogar.jpg',
              5,
            ),
            SizedBox(height: 80,)
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(onPressed: (){
        setState(() {
          opacidade = !opacidade;
        });
      },
        child: Icon(Icons.remove_red_eye),
      ),
    );
  }
}
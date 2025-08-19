import 'difficulty.dart';
import 'package:flutter/material.dart';
import '../theme/app_colors.dart';

//criação cards task
class Task extends StatefulWidget {
  final String nome; //parametro para alterar o nome da tarefa
  final String foto;
  final int dificuldade;

  const Task(this.nome, this.foto, this.dificuldade, {super.key});

  @override
  State<Task> createState() => _TaskState();
}

class _TaskState extends State<Task> {
  int nivel = 0;
  Color _getSmoothColor(double value) {
    if (value < 0.5) {
      // do vermelho até amarelo (0.0 → 0.5)
      return Color.lerp(Colors.red, Colors.yellow, value / 0.5)!;
    } else {
      // do amarelo até verde (0.5 → 1.0)
      return Color.lerp(Colors.yellow, Colors.lightGreen, (value - 0.5) / 0.5)!;
    }
  }
  // Color getColorForValue(double value) {
  //   if (value < 0.3) {
  //     return Colors.red;
  //   } else if (value < 0.5) {
  //     return Colors.orange;
  //   } else if (value < 0.8) {
  //     return Colors.yellowAccent;
  //   } else if (value < 1.0) {
  //     return Colors.blueAccent;
  //   } else {
  //     return Colors.lightGreen; // quando 100%
  //   }
  // }


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Stack(
        children: [
          Container(
            height: 140,
            decoration: BoxDecoration(
              color: PrimaryPurple,
              borderRadius: BorderRadius.circular(10),
            ),
          ), //down
          Column(
            children: [
              Container(
                height: 100,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(10),
                    topLeft: Radius.circular(10),
                  ),
                ), //up
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    //imagem
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10),
                            topRight: Radius.circular(10)
                        ),
                      ),
                      width: 72,
                      height: 100,
                      child: ClipRRect(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10),
                            topRight: Radius.circular(10)
                        ),
                        child: Image.asset(widget.foto, fit: BoxFit.cover),
                      ),
                    ),
                    //Texto
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: 200,
                          child: Text(
                            widget.nome,
                            style: TextStyle(
                              fontSize: 24,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                        ),
                        //estrelas
                        Difficulty(dificultyLevel: widget.dificuldade),
                      ],
                    ),
                    //Button
                    SizedBox(
                      height: 64,
                      width: 64,
                      child: ElevatedButton(
                        onPressed: () {
                          setState(() {
                            nivel++;
                          });
                          //print(nivel);
                        },
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Icon(Icons.arrow_drop_up, color: Colors.white),
                            Text(
                              'Up',
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SizedBox(
                      width: 200,
                      child: LinearProgressIndicator(
                        //color: Colors.black,
                        value: (widget.dificuldade > 0)
                            ? (nivel / widget.dificuldade) / 10
                            : 1,
                        backgroundColor: Colors.grey[300],
                        valueColor: AlwaysStoppedAnimation<Color>(
                          _getSmoothColor(
                            (widget.dificuldade > 0)
                                ? (nivel / widget.dificuldade) / 10
                                : 1,
                        // valueColor: AlwaysStoppedAnimation<Color>(
                        //   getColorForValue(
                        //     (widget.dificuldade > 0)
                        //         ? (nivel / widget.dificuldade) / 10
                        //         : 1,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'Nível: $nivel',
                      style: TextStyle(color: Colors.white, fontSize: 16),
                      textAlign: TextAlign.end,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
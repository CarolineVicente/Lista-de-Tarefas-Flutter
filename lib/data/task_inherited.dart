import 'package:alura_flutter_curso_1/components/tasks.dart';
import 'package:flutter/widgets.dart';

class TaskInherited extends InheritedWidget {
  TaskInherited({
    Key? key,
    required Widget child,
  }) : super(key: key, child: child);

  final List<Tasks> taskList = [
    Tasks(
        'Learn Flutter in the morning',
        'https://cursos.alura.com.br/course/flutter-controller-navegacao-estados/task/109284',
        3),
    Tasks(
        'Run Bike',
        'https://tswbike.com/wp-content/uploads/2020/09/108034687_626160478000800_2490880540739582681_n-e1600200953343.jpg',
        2),
    Tasks(
        'Meditate',
        'https://manhattanmentalhealthcounseling.com/wp-content/uploads/2019/06/Top-5-Scientific-Findings-on-MeditationMindfulness-881x710.jpeg',
        5),
    Tasks(
        'Read books',
        'https://thebogotapost.com/wp-content/uploads/2017/06/636052464065850579-137719760_flyer-image-1.jpg',
        4),
     Tasks(
      'Play games',
      'https://i.ibb.co/tB29PZB/kako-epifania-2022-2-c-pia.jpg',
      1,
    ),
  ];

  void newTask(String name, String photo, int difficulty){
    taskList.add(Tasks(name, photo, difficulty));
  }

  static TaskInherited of(BuildContext context) {
    final TaskInherited? result = context.dependOnInheritedWidgetOfExactType<TaskInherited>();
    assert(result != null, 'No TaskInherited found in context');
    return result!;
  }

  @override
  bool updateShouldNotify(TaskInherited oldWidget) {
    return oldWidget.taskList.length != taskList.length;
  }
}
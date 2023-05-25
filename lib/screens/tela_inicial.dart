import 'package:alura_flutter_curso_1/data/task_inherited.dart';
import 'package:alura_flutter_curso_1/screens/form_screen.dart';
import 'package:flutter/material.dart';

class InitialScreen extends StatefulWidget {
  const InitialScreen({Key? key}) : super(key: key);

  @override
  State<InitialScreen> createState() => _InitialScreenState();
}

class _InitialScreenState extends State<InitialScreen> {
  @override

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter: Primeiros Passos'),
        leading: const Icon(Icons.add_task),
      ),
      body: Container(
        color: const Color.fromARGB(255, 208, 221, 237),
        child: ListView(
          padding: const EdgeInsets.only(top: 8, bottom: 70),
          children: TaskInherited.of(context).taskList,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
         Navigator.push(
          context,
          MaterialPageRoute(builder: (contextNew) => FormScreen(taskContext: context,)));        
         },
        backgroundColor: Colors.blue[100],
        child: const Icon(Icons.add),
      ),
    );
  }
}

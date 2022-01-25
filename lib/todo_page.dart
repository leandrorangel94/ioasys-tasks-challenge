import 'package:flutter/material.dart';
import 'todo_controller.dart';
import 'components/input_task_widget.dart';
import 'components/list_task_widget.dart';

class TodoPage extends StatefulWidget {
  const TodoPage({Key? key}) : super(key: key);

  @override
  State<TodoPage> createState() => _TodoPageState();
}

class _TodoPageState extends State<TodoPage> {
  var toDoController = ToDoController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Image.asset('assets/images/logo_home.png'),
            ),
            const Text('Lista de Tarefas'),
          ],
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(17, 24, 17, 40),
            child: InputTaskWidget(
              textController: toDoController.textController,
              onPressed: () {
                setState(() {
                  toDoController.addTask();
                });
              },
              labelText: 'Nova tarefa',
              textButtonString: 'ADD',
            ),
          ),
          Expanded(
            child: ListTaskWidget(
              listToDo: toDoController.listToDo,
              onChanged: (value, index) {
                setState(() {
                  toDoController.updateStatusTask(value, index);
                });
              },
              onRemoved: (index) {
                setState(() {
                  toDoController.onRemoveTaskOfList(index);
                });
              },
            ),
          )
        ],
      ),
    );
  }
}

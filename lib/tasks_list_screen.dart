import 'package:flutter/material.dart';
import 'components/formio_outlined_button.dart';
import 'model/process.dart';
import 'model/task.dart';
import 'form_screen.dart' as formioForm;

class TaskListScreen extends StatelessWidget {
  const TaskListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<Process> processes = getMockedProcesses();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Mis Tareas'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      body: ListView.builder(
        itemCount: processes.length,
        itemBuilder: (context, index) {
          return ExpansionTile(
            title: Text(processes[index].processKey),
            children: <Widget>[
              Column(
                children: getTaskWidget(context, processes[index].tasks),
              ),
            ],
          );
        },
      ),
    );
  }

  List<Widget> getTaskWidget(BuildContext context, List<Task> tasks) {
    List<Row> taskRows = [];
    tasks.forEach((task) => {
          taskRows.add(Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Expanded(
                flex: 7,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Container(
                      padding: const EdgeInsets.only(
                        left: 25.0,
                      ),
                      alignment: Alignment.centerLeft,
                      child: Text(
                        task.activityName,
                        textAlign: TextAlign.start,
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 3,
                child: Container(
                  padding: const EdgeInsets.only(
                    right: 20.0,
                  ),
                  child: getOutlinedButton(
                      "Ejecutar",
                      () => {
                            Navigator.pushNamed(
                              context,
                              formioForm.FormScreen.routeName,
                              arguments: task,
                            )
                          }),
                ),
              ),
            ],
          ))
        });
    return taskRows;
  }

  List<Process> getMockedProcesses() {
    return [
      Process(processKey: 'Dominio público', tasks: [
        Task(activityName: 'Analizar'),
        Task(activityName: 'Suministrar'),
        Task(activityName: 'Solicitar'),
      ]),
      Process(processKey: 'Suministro combustibles', tasks: [
        Task(activityName: 'Suministrar'),
        Task(activityName: 'Solicitar'),
      ]),
      Process(processKey: 'Vacaciones', tasks: [
        Task(activityName: 'Solicitar'),
        Task(activityName: 'Aprobar'),
      ]),
    ];
  }
}

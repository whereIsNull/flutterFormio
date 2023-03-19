import 'package:flutter/material.dart';
import 'tasks_list_screen.dart';
import 'form_screen.dart';
import 'components/formio_text_field.dart';
import 'components/formio_outlined_button.dart';

void main() {
  // runApp(const MyApp());
  runApp(getApp());
}

MaterialApp getApp() {
  return MaterialApp(
    title: 'Named Routes Demo',
    // Start the app with the "/" named route. In this case, the app starts
    // on the FirstScreen widget.
    initialRoute: '/',
    routes: {
      // When navigating to the "/" route, build the FirstScreen widget.
      '/': (context) => const TaskListScreen(),
      // When navigating to the "/second" route, build the SecondScreen widget.
      '/form': (context) => FormScreen(),
    },
  );
}

// Ejemplo doc
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  Widget? formWidget;
  final int _selectedIndex = -1;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _onItemTapped(int index) {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(widget.title),
          leading: IconButton(
            icon: const Icon(Icons.arrow_back, color: Colors.black),
            onPressed: () => Navigator.of(context).pop(),
          )),
      body: Container(
        margin: const EdgeInsets.all(20.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              const Text(
                'You have pushed the button this many times:',
              ),
              Text(
                '$_counter',
                style: Theme.of(context).textTheme.headline4,
              ),
              getTextField("ohComponneteMiComponente"),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [getOutlinedButton("butonear", () => {})],
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
      // bottomNavigationBar: BottomNavigationBar(
      //   items: const <BottomNavigationBarItem>[
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.keyboard_arrow_left),
      //       label: 'Anterior',
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.keyboard_arrow_right),
      //       label: 'Siguiente',
      //     ),
      //   ],
      //   onTap: (value) => {},
      // ),
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        notchMargin: 5,
        child: Row(
          //children inside bottom appbar
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            OutlinedButton.icon(
                onPressed: () => {},
                icon: const Icon(
                  Icons.keyboard_arrow_left,
                ),
                label: Text("Anterior")),
            OutlinedButton.icon(
                onPressed: () => {},
                icon: const Icon(
                  Icons.keyboard_arrow_right,
                ),
                label: Text("Siguiente")),
            // IconButton(
            //   icon: const Icon(
            //     Icons.keyboard_arrow_left,
            //   ),
            //   onPressed: () {},
            // ),
            // IconButton(
            //   icon: const Icon(
            //     Icons.keyboard_arrow_right,
            //   ),
            //   onPressed: () {},
            // ),
          ],
        ),
      ),
    );
  }
}

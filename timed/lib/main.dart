import 'package:flutter/material.dart';
import 'package:quick_actions/quick_actions.dart';
import 'package:timed/Presentation/Screens/add_timer_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Timed'),
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
  final quickActions = QuickActions();
  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  void initState() {
    super.initState();
    quickActions.setShortcutItems([
      const ShortcutItem(type: 'event', localizedTitle: "Add Timer+"),
      const ShortcutItem(type: 'message', localizedTitle: "Add Task"),
      const ShortcutItem(type: 'search', localizedTitle: "Search Task")
    ]);
    quickActions.initialize((type) {
      // type is the type of the shortcut item that was pressed.
      if (type == 'event') {
        debugPrint('Add Timer');
        Navigator.of(context).push(
            MaterialPageRoute(builder: (context) => const AddTimerPage()));
      } else if (type == 'message') {
        debugPrint('Add Task');
      } else if (type == 'search') {
        debugPrint('Search Task');
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

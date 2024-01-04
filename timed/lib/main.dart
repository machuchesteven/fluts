import 'package:flutter/material.dart';
import 'package:quick_actions/quick_actions.dart';
import 'package:timed/Presentation/Screens/add_expenditure_page.dart';
import 'package:timed/Presentation/Screens/add_task_page.dart';
import 'package:timed/Presentation/Screens/add_timer_page.dart';
import 'package:timed/Presentation/Screens/day_page.dart';
import 'package:timed/Presentation/Screens/expenses_page.dart';
import 'package:timed/Presentation/Screens/homepage.dart';
import 'package:timed/Presentation/Screens/notification_page.dart';
import 'package:timed/Presentation/Screens/summary_page.dart';

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
      home: const MyHomePage(),
      routes: {
        '/home': (context) => const Homepage(),
        '/notification': (context) => const NotificationPage(),
        '/day': (context) => const DayPage(),
        '/expense': (context) => const ExpensesPage(),
        '/summary': (context) =>
            const SummaryPage(), // the summary page of so far progress // accessed via the Appbar action button
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  // const MyHomePage({super.key, required this.title}); final String title; // comment the required key
  const MyHomePage({super.key});
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // int _counter = 0; // counter variable
  int _currentIndex = 0; // current index variable

  final List<String> _routes = [
    'home',
    'notification',
    'day',
    'expense', // this is the last item of the bottombar navigator
    'summary' // this summary page will be called by the leading component of the navbar
  ];

  final quickActions = const QuickActions();
  // default flutter counter method
  void _incrementCounter() {
    setState(() {
      _currentIndex = 0;
    });
  }

  @override
  void initState() {
    super.initState();
    quickActions.setShortcutItems([
      const ShortcutItem(type: 'timer', localizedTitle: "Add Timer"),
      const ShortcutItem(type: 'task', localizedTitle: "Add Task"),
      const ShortcutItem(type: 'expense', localizedTitle: "Add Expense")
    ]);
    quickActions.initialize((type) {
      // type is the type of the shortcut item that was pressed.
      if (type == 'timer') {
        debugPrint('Add Timer');
        Navigator.of(context).push(
            MaterialPageRoute(builder: (context) => const AddTimerPage()));
      } else if (type == 'task') {
        debugPrint('Add Task');
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => const AddTaskPage()));
      } else if (type == 'expense') {
        debugPrint('Search Task');
        Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => const AddExpenditurePage()));
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('MeMax'),
        centerTitle: true,
      ),
      body: _buildBody(),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
          Navigator.of(context).pushNamed(_routes[index]);
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.notifications), label: 'Notification'),
          BottomNavigationBarItem(icon: Icon(Icons.today), label: 'Day'),
          BottomNavigationBarItem(icon: Icon(Icons.paid), label: 'Expense'),
        ],
      ),
    );
  }

  Widget _buildBody() {
    switch (_currentIndex) {
      case 0:
        return const Homepage();
      case 1:
        return const NotificationPage();
      case 2:
        return const DayPage();
      case 3:
        return const ExpensesPage();
      case 4:
        return const SummaryPage();
      default:
        return const Homepage();
    }
  }

  // Center _body(BuildContext context) {
  //   return Center(
  //     child: Column(
  //       mainAxisAlignment: MainAxisAlignment.center,
  //       children: <Widget>[
  //         const Text(
  //           'You have pushed the button this many times:',
  //         ),
  //         Text(
  //           '$_counter',
  //           style: Theme.of(context).textTheme.headlineMedium,
  //         ),
  //       ],
  //     ),
  //   );
  // }
  // the body method above takes place of the body above
  // the buildBody function to build the content of the body
}

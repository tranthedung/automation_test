import 'package:flutter/material.dart';
import 'package:flutter_driver/driver_extension.dart';

void main() {
  enableFlutterDriverExtension();
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

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3, // Number of tabs
      child: Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
          bottom: const TabBar(
            tabs: [
              Tab(
                key: const Key("tab_car"),
                icon: Icon(
                  Icons.directions_car,
                  semanticLabel: "tab_car_label",
                ),
              ),
              Tab(
                key: const Key("tab_transit"),
                icon: Icon(Icons.directions_transit),
              ),
              Tab(
                  key: const Key("tab_bike"),
                  icon: Icon(Icons.directions_bike)),
            ],
          ),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Expanded(
                child: TabBarView(
                  children: [
                    Icon(Icons.directions_car),
                    Icon(Icons.directions_transit),
                    Icon(Icons.directions_bike),
                  ],
                ),
              ),
              Text(
                key: const Key("text_counter_label"),
                'You have pushed the button this many times:',
              ),
              Text(
                key: const Key("text_counter"),
                '$_counter',
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              IconButton(
                  key: const Key("button_abc"),
                  onPressed: () {},
                  icon: Icon(Icons.abc)),
            ],
          ),
        ),
      ),
    );
  }
}

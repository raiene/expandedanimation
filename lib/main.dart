import 'package:flutter/material.dart';

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
  double _counter = 0.0;
  bool expandido = false;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _toggle() {
    setState(() {
      expandido = !expandido;
      print(expandido);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('BLOCO A'),
                IconButton(
                  icon: AnimatedRotation(
                          duration: const Duration(milliseconds: 500), 
                          turns: expandido ? 0.5 : 0,
                          child: Icon(Icons.arrow_downward),),
                  onPressed: _toggle
                )
              ],
            ),
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(10.0),
            child: AnimatedAlign(
              // color: Color.fromARGB(255, 234, 235, 235),
              duration: Duration(seconds: 2),
              alignment: Alignment.center,
              heightFactor: expandido ? 1.5 : 0.0,
              child: const Padding(
                padding: EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('elkgfkgj'),
                    Icon(Icons.delete_sharp)
                  ],
                ),
              ),
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }

}

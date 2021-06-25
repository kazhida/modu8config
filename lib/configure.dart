import 'package:flutter/material.dart';
import 'package:modu8config/property.dart';

class ConfigurePage extends StatefulWidget {
  ConfigurePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<StatefulWidget> createState() => _ConfigurePageState();
}

class _ConfigurePageState extends State<ConfigurePage> {

  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  PropertyPanel? _propertyPanel = null;

  @override
  Widget build(BuildContext context) {
    _propertyPanel = PropertyPanel();

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        leading: IconButton(icon: Image.asset("assets/modu8-logo.png"), onPressed: null,),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            'You have pushed the button this many times:',
          ),
          Text(
            '$_counter',
            style: Theme.of(context).textTheme.headline4,
          ),
          _propertyPanel!,
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

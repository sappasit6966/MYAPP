import 'package:flutter/material.dart';

void main() {
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Generated App',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
        primaryColor: const Color(0xFF2196f3),
        accentColor: const Color(0xFF2196f3),
        canvasColor: const Color(0xFFfafafa),
      ),
      home: new MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key}) : super(key: key);
  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('GPX'),
      ),
      body: new Container(
        child: new Column(
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              new Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    new RaisedButton(
                        key: null,
                        onPressed: buttonPressed,
                        color: const Color(0xFFe0e0e0),
                        child: new Text(
                          "AAAAA",
                          style: new TextStyle(
                              fontSize: 25.0,
                              color: const Color(0xFF000000),
                              fontWeight: FontWeight.w200,
                              fontFamily: "Roboto"),
                        )),
                    new Icon(Icons.account_box,
                        color: const Color(0xFF000000), size: 100.0),
                    new Icon(Icons.insert_emoticon,
                        color: const Color(0xFF000000), size: 100.0)
                  ]),
              new Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    new Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          new Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                new Radio(
                                    key: null,
                                    groupValue: null,
                                    value: .5,
                                    onChanged: radioChanged),
                                new Checkbox(
                                    key: null,
                                    onChanged: checkChanged,
                                    value: true),
                                new Switch(
                                    onChanged: switchChanged, value: true),
                                new Slider(
                                  key: null,
                                  onChanged: sliderChanged,
                                  value: 0.35,
                                )
                              ])
                        ])
                  ]),
              new Container(
                child: new Container(
                  padding: const EdgeInsets.all(0.0),
                  alignment: Alignment.center,
                  decoration: new BoxDecoration(
                    gradient: new LinearGradient(
                      begin: new Alignment(-1.0, 0.6),
                      end: new Alignment(0.7, -0.4),
                      colors: [
                        const Color(0xFF7a3c92),
                        const Color(0xFF000000),
                      ],
                      stops: [
                        0.2,
                        1.0,
                      ],
                    ),
                  ),
                ),
                padding: const EdgeInsets.all(0.0),
                alignment: Alignment.center,
              )
            ]),
        padding: const EdgeInsets.all(0.0),
        alignment: Alignment.center,
      ),
      floatingActionButton: new FloatingActionButton(
          child: new Icon(Icons.account_balance), onPressed: fabPressed),
      bottomNavigationBar: new BottomNavigationBar(items: [
        new BottomNavigationBarItem(
          icon: const Icon(Icons.battery_charging_full),
          title: new Text('Batt'),
        ),
        new BottomNavigationBarItem(
          icon: const Icon(Icons.android),
          title: new Text('Mon'),
        ),
        new BottomNavigationBarItem(
          icon: const Icon(Icons.beach_access),
          title: new Text('Title'),
        )
      ]),
    );
  }

  void switchChanged(bool value) {}

  void sliderChanged(double value) {}

  void buttonPressed() {}

  void checkChanged(bool value) {}

  void radioChanged(double value) {}

  void fabPressed() {}
}

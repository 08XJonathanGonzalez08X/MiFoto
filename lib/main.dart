import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // Application name
      title: 'Flutter Stateful Clicker Counter',
      theme: ThemeData(
        // Application theme data, you can set the colors for the application as
        // you want
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'mi foto Gen 19 22'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  final String title;
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        automaticallyImplyLeading: false,
        title: Text(
          'App Jonathan ',
        ),
        actions: [],
        centerTitle: false,
        elevation: 2,
      ),
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(4, 20, 0, 18),
                child: Container(
                  width: 300,
                  height: 55,
                  decoration: BoxDecoration(
                    color: Color(0xFF52AFA4),
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(),
                  ),
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(10, 15, 0, 0),
                    child: Text(
                      'Jonathan Ismael González Miramontes',
                    ),
                  ),
                ),
              ),
              Divider(),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 7),
                child: Image.network(
                  'https://scontent.fcjs4-1.fna.fbcdn.net/v/t39.30808-6/269278994_911949629708459_2939886701055811817_n.jpg?_nc_cat=109&ccb=1-7&_nc_sid=174925&_nc_eui2=AeHAuCXSWPvfpPE6c1hjvlV07LYP8lvKIwPstg_yW8ojA8W9p84IY8YbZyX1jj8THwC8hK3KW94E7-M3kb0nouCC&_nc_ohc=VHIF2C239mAAX-APDYZ&_nc_ht=scontent.fcjs4-1.fna&oh=00_AT9fYIVbLstZTMbown0LO8_Zg1GK4asFI5NsQryrV8vBCQ&oe=62993DE8',
                  width: 200,
                  height: 150,
                  fit: BoxFit.cover,
                ),
              ),
              Divider(),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 30, 0, 0),
                child: Container(
                  width: 150,
                  height: 45,
                  decoration: BoxDecoration(
                    color: Color(0xFF52AFA4),
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(),
                  ),
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 8, 0, 0),
                    child: Text(
                      '6to I programacion',
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

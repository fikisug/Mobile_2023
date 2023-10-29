import 'dart:ffi';
import 'dart:io';

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
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a blue toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'My App'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
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
    MediaQueryData mediaQueryData = MediaQuery.of(context);

    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.white,
        backgroundColor: Colors.red,
        title: Text(widget.title),
      ),
      body: ListView(
        children: [
          Column(
            children: [
              Row(
                children: [
                  Container(
                    color: Colors.grey.shade200,
                    alignment: Alignment.center,
                    height: 50,
                    width: mediaQueryData.size.width / 2,
                    child: Text('BERITA TERBARU',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Container(
                    color: Colors.grey.shade200,
                    alignment: Alignment.centerLeft,
                    height: 50,
                    width: mediaQueryData.size.width / 2,
                    child: Text('PERTANDINGAN HARI INI',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),),
                  )
                ],
              ),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.purple, // Warna border
                    width: 1.0, // Lebar border
                  ),
                ),
                width: mediaQueryData.size.width,
                margin: EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  children: [
                    Image.network(
                        'https://www.investopedia.com/thmb/ckPwC5ARwco1nOSCKVGE57se8MI=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/GettyImages-1245748917-99e3329a7b8147e8ab648806220ce153.jpg'),
                    Container(
                      child: Text(
                        'Messi Merapat ke Inter Miami',
                        style: TextStyle(
                          fontSize: 20.0,
                          height: 2,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Container(
                      child: Text(
                        'Transfer',
                        style: TextStyle(
                          height: 3.5,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      color: Colors.purpleAccent,
                      width: mediaQueryData.size.width,
                      padding: EdgeInsets.only(left: 10),
                    )
                  ],
                ),
              ),
              //container perulangan
              Container(
                margin: EdgeInsets.only(top: 10, right: 10, left: 10),
                child: Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.green, // Warna border
                          width: 1.0, // Lebar border
                        ),
                      ),
                      child: Row(
                        children: [
                          Container(
                            height: 110,
                            child: Image.network(
                                'https://www.investopedia.com/thmb/ckPwC5ARwco1nOSCKVGE57se8MI=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/GettyImages-1245748917-99e3329a7b8147e8ab648806220ce153.jpg'),
                          ),
                          Container(
                            width: mediaQueryData.size.width - 190,
                            padding: EdgeInsets.only(left: 8),
                            child: Text(
                                'Pique Bilang Wasit Untungkan Madrid, Koeman Tepok Jidat'),
                          )
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(10),
                      width: mediaQueryData.size.width - 20,
                      decoration: BoxDecoration(
                        border: Border(
                          left: BorderSide(width: 1.0, color: Colors.green),
                          right: BorderSide(width: 1.0, color: Colors.green),
                          bottom: BorderSide(width: 1.0, color: Colors.green),
                        ),
                      ),
                      child: Text('Barcelona Feb 13, 2021'),
                    )
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 10, right: 10, left: 10),
                child: Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.green, // Warna border
                          width: 1.0, // Lebar border
                        ),
                      ),
                      child: Row(
                        children: [
                          Container(
                            height: 110,
                            child: Image.network(
                                'https://www.investopedia.com/thmb/ckPwC5ARwco1nOSCKVGE57se8MI=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/GettyImages-1245748917-99e3329a7b8147e8ab648806220ce153.jpg'),
                          ),
                          Container(
                            width: mediaQueryData.size.width - 190,
                            padding: EdgeInsets.only(left: 8),
                            child: Text(
                                'Pique Bilang Wasit Untungkan Madrid, Koeman Tepok Jidat'),
                          )
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(10),
                      width: mediaQueryData.size.width - 20,
                      decoration: BoxDecoration(
                        border: Border(
                          left: BorderSide(width: 1.0, color: Colors.green),
                          right: BorderSide(width: 1.0, color: Colors.green),
                          bottom: BorderSide(width: 1.0, color: Colors.green),
                        ),
                      ),
                      child: Text('Barcelona Feb 13, 2021'),
                    )
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 10, right: 10, left: 10),
                child: Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.green, // Warna border
                          width: 1.0, // Lebar border
                        ),
                      ),
                      child: Row(
                        children: [
                          Container(
                            height: 110,
                            child: Image.network(
                                'https://www.investopedia.com/thmb/ckPwC5ARwco1nOSCKVGE57se8MI=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/GettyImages-1245748917-99e3329a7b8147e8ab648806220ce153.jpg'),
                          ),
                          Container(
                            width: mediaQueryData.size.width - 190,
                            padding: EdgeInsets.only(left: 8),
                            child: Text(
                                'Pique Bilang Wasit Untungkan Madrid, Koeman Tepok Jidat'),
                          )
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(10),
                      width: mediaQueryData.size.width - 20,
                      decoration: BoxDecoration(
                        border: Border(
                          left: BorderSide(width: 1.0, color: Colors.green),
                          right: BorderSide(width: 1.0, color: Colors.green),
                          bottom: BorderSide(width: 1.0, color: Colors.green),
                        ),
                      ),
                      child: Text('Barcelona Feb 13, 2021'),
                    )
                  ],
                ),
              ),
            ],
          ),
        ],
      ),

      // floatingActionButton: FloatingActionButton(
      //   onPressed: _incrementCounter,
      //   tooltip: 'Increment',
      //   child: const Icon(Icons.add),
      // ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

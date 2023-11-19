import 'dart:ffi';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Konverter Suhu'),
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
    TextEditingController celsiusController = TextEditingController();
    double kelvin = 0;
    double reamor = 0;

  void konversiSuhu() {
    if (celsiusController.text.isNotEmpty) {
      double celsius = double.parse(celsiusController.text);
      setState(() {
        reamor = (4 / 5) * celsius;
        kelvin = celsius + 273.15;
      });
    }else{
      setState(() {
        reamor = 0;
        kelvin = 0;
      });
    }
  }

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
  MediaQueryData mediaQueryData = MediaQuery.of(context);

    return Scaffold(
        appBar: AppBar(
          foregroundColor: Colors.white,
          backgroundColor: Colors.blueAccent,
          title: Text(widget.title),
        ),
        body: Container(
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.all(10),
                child: TextField(
                  controller: celsiusController,
                  decoration: InputDecoration(
                    hintText: 'Masukkan Suhu Dalam Celcius',
                    focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.blueAccent)),
                  ),
                  cursorColor: Colors.blueAccent,
                  keyboardType: TextInputType.number,
                  inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                  // autofocus: true,
                ),
              ),
              Expanded(
                child: Container(
                  padding: EdgeInsets.only(top: 300),
                  child: Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: Column(
                        children: [
                          Text("Suhu dalam Kelvin"),
                          Text(
                            kelvin.toString(),
                            style: TextStyle(fontSize: 30, height: 2),
                          )
                        ],
                      ),
                    ),
                    Expanded(
                        flex: 1,
                        child: Column(
                          children: [
                            Text("Suhu dalam Reamor"),
                            Text(
                              reamor.toString(),
                              style: TextStyle(fontSize: 30, height: 2),
                            )
                          ],
                        )),
                  ],
                ),
                )
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.8, // 80% dari lebar layar
                child: ElevatedButton(
                  onPressed: () {
                    // Aksi yang ingin diambil saat tombol ditekan
                    konversiSuhu();
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blueAccent,
                    foregroundColor: Colors.white,
                    shape: BeveledRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(3)))
                  ),
                  child: Text('Konversi Suhu'),
                ),
              ),
            ],
          ),
        ));
  }
}

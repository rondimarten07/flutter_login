import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  double _currentSliderValue = 20;
  double _currentSliderValue2 = 20;
  double _currentSliderValue3 = 20;
  double _currentSliderValue4 = 20;
  double _currentSliderValue5 = 20;
  double _currentSliderValue6 = 20;
  double _currentSliderValue7 = 20;
  double _currentSliderValue8 = 20;
  double _currentSliderValue9 = 20;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Padding(padding: EdgeInsets.only(top: 40)),
              Text(
                "Halaman Home",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              Container(
                margin: EdgeInsets.only(top: 20),
                color: Colors.black26,
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: <Widget>[
                    Container(
                        height: 200,
                        color: Color.fromARGB(
                            255,
                            0 + _currentSliderValue.round().toInt(),
                            0 + _currentSliderValue2.round().toInt(),
                            0 + _currentSliderValue3.round().toInt())),
                    Container(
                      color: Colors.white,
                      width: double.infinity,
                      child: Text("Belajar Flutter KMMB - ITB STIKOM Bali",
                          textAlign: TextAlign.center),
                    ),
                    IntrinsicHeight(
                      child: Row(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            Expanded(
                                child: Container(
                              color: Color.fromARGB(
                                  255,
                                  0 + _currentSliderValue4.round().toInt(),
                                  0 + _currentSliderValue5.round().toInt(),
                                  0 + _currentSliderValue6.round().toInt()),
                              height: 150,
                            )),
                            Expanded(
                                child: Container(
                                    color: Color.fromARGB(
                                        255,
                                        0 +
                                            _currentSliderValue7
                                                .round()
                                                .toInt(),
                                        0 +
                                            _currentSliderValue8
                                                .round()
                                                .toInt(),
                                        0 +
                                            _currentSliderValue9
                                                .round()
                                                .toInt()))),
                          ]),
                    ),
                    Padding(padding: EdgeInsets.only(top: 40)),
                    Text(
                      "WARNA 1",
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.w900),
                    ),
                    Text(
                      "R(Red)",
                      style: TextStyle(fontWeight: FontWeight.w500),
                    ),
                    new Slider(
                      value: _currentSliderValue,
                      max: 255,
                      divisions: 255,
                      label: _currentSliderValue.round().toString(),
                      onChanged: (double value) {
                        setState(() {
                          _currentSliderValue = value;
                        });
                      },
                    ),
                    Text(
                      "G(Green)",
                      style: TextStyle(fontWeight: FontWeight.w500),
                    ),
                    new Slider(
                      value: _currentSliderValue2,
                      max: 255,
                      divisions: 255,
                      label: _currentSliderValue2.round().toString(),
                      onChanged: (double value2) {
                        setState(() {
                          _currentSliderValue2 = value2;
                        });
                      },
                    ),
                    Text(
                      "B(Blue)",
                      style: TextStyle(fontWeight: FontWeight.w500),
                    ),
                    new Slider(
                      value: _currentSliderValue3,
                      max: 255,
                      divisions: 255,
                      label: _currentSliderValue3.round().toString(),
                      onChanged: (double value3) {
                        setState(() {
                          _currentSliderValue3 = value3;
                        });
                      },
                    ),
                    Padding(padding: EdgeInsets.only(top: 20)),
                    Text(
                      "WARNA 2",
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.w900),
                    ),
                    Text(
                      "R(Red)",
                      style: TextStyle(fontWeight: FontWeight.w500),
                    ),
                    new Slider(
                      value: _currentSliderValue4,
                      max: 255,
                      divisions: 255,
                      label: _currentSliderValue4.round().toString(),
                      onChanged: (double value4) {
                        setState(() {
                          _currentSliderValue4 = value4;
                        });
                      },
                    ),
                    Text(
                      "G(Green)",
                      style: TextStyle(fontWeight: FontWeight.w500),
                    ),
                    new Slider(
                      value: _currentSliderValue5,
                      max: 255,
                      divisions: 255,
                      label: _currentSliderValue5.round().toString(),
                      onChanged: (double value5) {
                        setState(() {
                          _currentSliderValue5 = value5;
                        });
                      },
                    ),
                    Text(
                      "B(Blue)",
                      style: TextStyle(fontWeight: FontWeight.w500),
                    ),
                    new Slider(
                      value: _currentSliderValue6,
                      max: 255,
                      divisions: 255,
                      label: _currentSliderValue6.round().toString(),
                      onChanged: (double value6) {
                        setState(() {
                          _currentSliderValue6 = value6;
                        });
                      },
                    ),
                    Padding(padding: EdgeInsets.only(top: 20)),
                    Text(
                      "WARNA 3",
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.w900),
                    ),
                    Text(
                      "R(Red)",
                      style: TextStyle(fontWeight: FontWeight.w500),
                    ),
                    new Slider(
                      value: _currentSliderValue7,
                      max: 255,
                      divisions: 255,
                      label: _currentSliderValue7.round().toString(),
                      onChanged: (double value7) {
                        setState(() {
                          _currentSliderValue7 = value7;
                        });
                      },
                    ),
                    Text(
                      "G(Green)",
                      style: TextStyle(fontWeight: FontWeight.w500),
                    ),
                    new Slider(
                      value: _currentSliderValue8,
                      max: 255,
                      divisions: 255,
                      label: _currentSliderValue8.round().toString(),
                      onChanged: (double value8) {
                        setState(() {
                          _currentSliderValue8 = value8;
                        });
                      },
                    ),
                    Text(
                      "B(Blue)",
                      style: TextStyle(fontWeight: FontWeight.w500),
                    ),
                    new Slider(
                      value: _currentSliderValue9,
                      max: 255,
                      divisions: 255,
                      label: _currentSliderValue9.round().toString(),
                      onChanged: (double value9) {
                        setState(() {
                          _currentSliderValue9 = value9;
                        });
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

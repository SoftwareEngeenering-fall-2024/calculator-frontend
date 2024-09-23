import 'dart:math';

import 'package:calculator_frontend/presentation/calc_button.dart';
import 'package:flutter/material.dart';

import 'config/app.dart';

void main() {
  runApp(const App());
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

class textLine extends StatelessWidget{
  const textLine({super.key, required this.text});
  final String text;

  @override
  Widget build(BuildContext context) {
    return FittedBox(
      child: Text(text, textDirection: TextDirection.ltr, selectionColor: Color(0xFFFFFFFF),),);
  }
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    double size = min(MediaQuery.sizeOf(context).width / 4,
                MediaQuery.sizeOf(context).height / 6) -24;
    return Scaffold(
      body: Center(
        
        child:Container(
          color: Color(0xFF000000),
          constraints: BoxConstraints(
            maxHeight: 2000,
            minHeight: 1000,
            minWidth: 600,
            maxWidth: 1000,
          ),
          child: Column(
            
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children:
                [
                  textLine(text: '0'),
                ]
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CalcButton(size: size, text: "AC", buttonColor: Color(0xFFBDBDBD), textColor: Color(0xFF000000)),
                  CalcButton(size: size, text: "+/-",buttonColor: Color(0xFFBDBDBD), textColor: Color(0xFF000000)),
                  CalcButton(size: size, text: "%",buttonColor: Color(0xFFBDBDBD), textColor: Color(0xFF000000)),
                  CalcButton(size: size, text: "/",buttonColor: Color(0xFFFFA726)),
                ],
              ),
              SizedBox(height: 24),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CalcButton(size: size, text: "7",buttonColor: Color(0xFF424242)),
                  CalcButton(size: size, text: "8",buttonColor: Color(0xFF424242)),
                  CalcButton(size: size, text: "9",buttonColor: Color(0xFF424242)),
                  CalcButton(size: size, text: "*",buttonColor: Color(0xFFFFA726)),
                ],
              ),
              SizedBox(height: 24),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CalcButton(size: size, text: "4",buttonColor: Color(0xFF424242)),
                  CalcButton(size: size, text: "5",buttonColor: Color(0xFF424242)),
                  CalcButton(size: size, text: "6",buttonColor: Color(0xFF424242)),
                  CalcButton(size: size, text: "-",buttonColor: Color(0xFFFFA726)),
                ],
              ),
              SizedBox(height: 24),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CalcButton(size: size, text: "1",buttonColor: Color(0xFF424242)),
                  CalcButton(size: size, text: "2",buttonColor: Color(0xFF424242)),
                  CalcButton(size: size, text: "3",buttonColor: Color(0xFF424242)),
                  CalcButton(size: size, text: "+",buttonColor: Color(0xFFFFA726)),
                ],
              ),
              SizedBox(height: 24),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CalcButton(size: size * 2 + 24, text: "0", factor: 0.5, buttonColor: Color(0xFF424242)),
                  CalcButton(size: size, text: ",",buttonColor: Color(0xFF424242)),
                  CalcButton(size: size, text: "=",buttonColor: Color(0xFFFFA726)),
                ],
              ),
              SizedBox(height: 48),
            ],
          ),
        ),
      )
    );
  }
}

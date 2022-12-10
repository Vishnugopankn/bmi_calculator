import 'dart:io';

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
      home: const Bmi_calc()));
}
class Bmi_calc extends StatefulWidget {
  const Bmi_calc({Key? key}) : super(key: key);

  @override
  State<Bmi_calc> createState() => _Bmi_calcState();
}

class _Bmi_calcState extends State<Bmi_calc> {
  double result=0;
  TextEditingController height=TextEditingController();
  TextEditingController weight=TextEditingController();
  void Bmi(){
   double h=double.parse(height.text)/100;
   double w=double.parse(weight.text);
    double b=w~/h*h;
    result=b;
    setState(() {

    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.amberAccent,
           appBar: AppBar(
             title: Text("BMI CALCULATOR",style: TextStyle(fontSize: 30),),
             centerTitle:true ,
           ),
           body: Padding(
             padding: const EdgeInsets.all(8.0),
             child: Column(
               mainAxisAlignment: MainAxisAlignment.center,
               children: [
                 Padding(
                   padding: const EdgeInsets.symmetric(horizontal: 40),
                   child: TextField(
                     controller: height,
                     decoration: InputDecoration(
                       icon: Icon(Icons.height),
                       label: Text("Height"),
                       border: OutlineInputBorder(
                         borderRadius: BorderRadius.circular(20),
                       )
                     ),
                   ),
                 ),
                 SizedBox(height: 20,),
                 // Icon(Icons.line_weight),
                 Padding(
                   padding: const EdgeInsets.symmetric(horizontal: 40),
                   child: TextField(
                     controller: weight,
                     decoration: InputDecoration(
                       icon: Icon(Icons.line_weight),
                         label: Text("Weight"),
                         border: OutlineInputBorder(
                           borderRadius: BorderRadius.circular(20),
                         ),
                     ),
                   ),
                 ),
                 SizedBox(height: 20,),
                 Container(color: Colors.green,width: 150,
                   child: TextButton(onPressed: (){
                     Bmi();
                   },
                       child: Text("Calculate",style: TextStyle(fontSize: 20,
                           fontWeight: FontWeight.bold,
                           color: Colors.black87),)),
                 ),
                 SizedBox(height: 20,),
                 Text("${result.toStringAsFixed(2)}"),
               ],
             ),
           ),
    );
  }
}


// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Calculator")),
        body: Home(),
      ),
    );
  }
}

class Home extends StatefulWidget {
  // const Home({ Key? key }) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  TextEditingController meter = TextEditingController();
   TextEditingController kilometer = TextEditingController();
  double kilo = 1000;
  TextEditingController result = TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    result.text = "You have walked for x Km.";
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Center(
          child: Padding(
            padding: const EdgeInsets.all(24.0),
            child: Column(children: [
              Image.asset('assets/images/3.gif'),
              Text("Walking Distance",
                  style: TextStyle(
                      fontFamily: "MPLUS1", fontSize: 48, color: Color(0xff1FA88D))),
              SizedBox(
                height: 20,
              ),
              TextField(
                controller: meter,
                decoration: InputDecoration(
                    labelText: "Number", border: OutlineInputBorder()),
              ),
              SizedBox(
                height: 20,
              ),

               TextField(
                controller: kilometer,
                decoration: InputDecoration(
                    labelText: "Kilo", border: OutlineInputBorder()),
              ),

              SizedBox(
                height: 20,
              ),
              ElevatedButton(onPressed: () {
                var cal = double.parse(meter.text)/double.parse(kilometer.text);
                print("You have walked: ${cal} Km.");
                setState(() {
                  result.text = "You have walked for ${cal} Km.";
                });
              }, child: Text("Calculate"),
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Color(0xffF7E29B)),
                padding: MaterialStateProperty.all(EdgeInsets.fromLTRB(10,20,20,20)),
                textStyle: MaterialStateProperty.all(TextStyle(fontFamily: "MPLUS1", color: Color(0xff1FA88D)))
              )),

               SizedBox(
                height: 20,
              ),

              Text(result.text)
            ]),
          ),
        ),
      ],
    );
  }
}

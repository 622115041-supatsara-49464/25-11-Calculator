// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

class Contact extends StatefulWidget {
  const Contact({ Key? key }) : super(key: key);

  @override
  _ContactState createState() => _ContactState();
}

class _ContactState extends State<Contact> {
  @override
  Widget build(BuildContext context) {
    return ListView(
       children: [
        Center(
          child: Column(
            children: [
              Text("Contact"),
              Text("@mukiisanma")
            ],
          ),
        )
      ],
    );
  }
}
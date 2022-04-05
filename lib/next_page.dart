// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NextPage extends StatefulWidget {
  final String title;
  final String password;
  NextPage(this.title, this.password);

  @override
  _NextPageState createState() => _NextPageState();
}

class _NextPageState extends State<NextPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.password),
      ),
      body: Padding(
        padding: const EdgeInsets.all(30),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Row(
            children: [
              Container(
                width: 50,
                child: Text("ID"),
              ),
              Container(
                width: 20,
                child: Text(":"),
              ),
              Text("毎回同じIDを表示"),
            ],
          ),
          Padding(padding: EdgeInsets.all(10)),
          Row(
            children: [
              Container(
                width: 50,
                child: Text("PW"),
              ),
              Container(
                width: 20,
                child: Text(":"),
              ),
              Text("毎回同じパスワードを表示"),
            ],
          )
        ]),
      ),
    );
  }
}

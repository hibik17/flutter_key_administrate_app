// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:udemy_flutter/next_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // listの配列の宣言
  List<String> titleList = ["amazon", "楽天", "yahoo!"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("password administration"),
      ),
      body: ListView.builder(
          itemCount: titleList.length,
          itemBuilder: (BuildContext context, int i) {
            return Column(
              children: [
                ListTile(
                  onTap: () {
                    // 画面遷移を記述
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                NextPage(titleList[i], "pass")));
                  },
                  leading: Icon(Icons.vpn_key),
                  title: Text(titleList[i]),
                ),
                Divider(),
              ],
            );
          }),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          titleList.add("google");
          print(titleList);
          setState(() {});
        },
        tooltip: "Increment",
        child: Icon(Icons.add),
      ),
    );
  }
}

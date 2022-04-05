// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

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


// todo リスト表示を動的に
// todo フロートアクションボタンをタップ時に、リストを一つ追加表示
// todo 新しい画面を作成し、リストを追加したときに遷移
// todo 新しい画面のレイアウトを作成
// todo 新しい画面にリストからデータを引き継ぐ


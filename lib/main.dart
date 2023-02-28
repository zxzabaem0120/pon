import 'package:flutter/material.dart';

void main() {
  runApp(const Pasee());
}

class Pasee extends StatelessWidget {
  const Pasee({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: '',
      home: Scaffold(
  bottomNavigationBar: BottomAppBar(color: Colors.black,height:50,),
  appBar: AppBar(
    backgroundColor: const Color.fromARGB(255, 42, 148, 45),
    centerTitle: true,
    title: Row(mainAxisAlignment: MainAxisAlignment.center, children: const [
      Text("คำนวณการผ่อนชำระ"),
    ]),
  ),
  body: Column(children: const [
    Text('คำนวนภาษี'),
  ]),
));
  }
}



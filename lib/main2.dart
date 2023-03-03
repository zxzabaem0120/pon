import 'package:flutter/material.dart';

class V1 extends StatefulWidget {
  const V1({super.key});

  @override
  State<V1> createState() => _V1State();
}

class _V1State extends State<V1> {
  TextEditingController? p1;
  String p2 = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const BottomAppBar(
        color: Colors.black,
        height: 50,
      ),
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.only(left: 10),
          child: IconButton(
              padding: EdgeInsets.zero,
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(Icons.arrow_back_ios_new)),
        ),
        backgroundColor: const Color.fromARGB(255, 42, 148, 45),
        centerTitle: true,
        title: Padding(
          padding: const EdgeInsets.only(right: 50),
          child:
              Row(mainAxisAlignment: MainAxisAlignment.center, children: const [
            Text("คำนวณการผ่อนชำระ"),
          ]),
        ),
      ),
      body: Column(children: [
        const Padding(
          padding: EdgeInsets.only(top: 20),
          child: Text('คำนวนภาษี'),
        ),
        SingleChildScrollView(
          child: Center(
            child: Column(children: [
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: SizedBox(
                  height: 40,
                  width: 360,
                  child: TextField(
                    onChanged: (value) {
                      setState(() {
                        //p2 = value;
                      });
                    },
                    controller: p1,
                    decoration:
                        const InputDecoration(border: OutlineInputBorder()),
                  ),
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    //p2 = 'hello';
                  });
                },
                style: (const ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(Colors.black))),
                child: const Text('คำนวณ'),
              ),
              Text(p2)
            ]),
          ),
        ),
      ]),
    );
  }
}

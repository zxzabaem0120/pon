import 'package:flutter/material.dart';


class V1 extends StatefulWidget {
  const V1({super.key});

  @override
  State<V1> createState() => _V1State();
}
 @override
 Widget build(BuildContext context) => Scaffold(
  body: ,
 );
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
          backgroundColor: const Color.fromARGB(255, 173, 163, 19),
          centerTitle: true,
          title: Padding(
            padding: const EdgeInsets.only(right: 50),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text("ตารางการผ่อนชำระ"),
                ]),
          ),
        ),
        
        body: ListView.builder(itemCount : 6,itemBuilder: (context, int index) {
          return Row(
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              const Card(
                elevation: 5,
                margin: EdgeInsets.only(top: 5,left: 10),
                child: SizedBox( 
                  width: 50,
                  height: 50,
                  child: ListTile(
                    title: Text('1'),
                  ),
                ),
              ),
            ],
          );
        })
        );
  }}
import 'package:flutter/material.dart';

class V1 extends StatefulWidget {
  const V1(
      {super.key,
      required this.count,
      required this.money,
      required this.listinterest,
      required this.calfinishcount});
  final int count;
  final double money;
  final List<double> listinterest;
  final double calfinishcount;

  @override
  State<V1> createState() => _V1State();
}

class _V1State extends State<V1> {
  double padding = 10;
  Widget titleBar({required String title, required double padding}) {
    return Padding(
      padding: EdgeInsets.all(padding),
      child: Text(title),
    );
  }

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
            child: Column(
              children: [
                Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text("ตารางการผ่อนชำระ"),
                    ]),
              ],
            ),
          ),
        ),
        body: setBody(context));
  }

  Widget setBody(BuildContext context) {
    double moneycurrent = widget.money;
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            titleBar(title: 'หงวดที่', padding: padding),
            titleBar(title: 'เงินต้น', padding: padding),
            titleBar(title: 'ดอกเบี้ย', padding: padding),
            titleBar(title: 'รวม', padding: padding),
            titleBar(title: 'ยอดคงเหลือ', padding: padding),
          ],
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListView.builder(
                shrinkWrap: true,
                itemCount: widget.listinterest.length,
                itemBuilder: (context, int index) {
                  return Column(
                    children: [
                      Card(
                        elevation: 5,
                        margin: const EdgeInsets.only(top: 5, left: 10),
                        child: SizedBox(
                          height: 50,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              //count
                              Padding(
                                padding: EdgeInsets.all(padding),
                                child: Text((index + 1).toString()),
                              ),
                              //money for month
                              Padding(
                                padding: EdgeInsets.all(padding),
                                child: FittedBox(
                                  fit: BoxFit.fitWidth,
                                  child: Text((widget.money / widget.count)
                                      .toStringAsFixed(2)),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.all(padding),
                                child: FittedBox(
                                  fit: BoxFit.fitWidth,
                                  child: Text(
                                    (widget.listinterest[index]
                                        .toStringAsFixed(2)),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.all(padding),
                                child: FittedBox(
                                  fit: BoxFit.fitWidth,
                                  child: Text(
                                    (((widget.money / widget.count) +
                                            widget.listinterest[index])
                                        .toStringAsFixed(2)),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.all(padding),
                                child: FittedBox(
                                  fit: BoxFit.fitWidth,
                                  child: Text(
                                    ((moneycurrent -=
                                            (widget.money / widget.count))
                                        .toStringAsFixed(2)),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  );
                }),
          ),
        ),
      ],
    );
  }
}

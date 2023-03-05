// ignore_for_file: prefer_typing_uninitialized_variables
import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:project/main3.dart';

void main() {
  runApp(const Pasee());
}

class Pasee extends StatefulWidget {
  const Pasee({super.key});

  @override
  State<Pasee> createState() => _PaseeState();
}

class _PaseeState extends State<Pasee> {
  TextEditingController? p1;
  String p2 = '';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: '',
      home: const A1(),
      theme: ThemeData(primarySwatch: Colors.pink),
    );
  }
}

class Appdata {
  static List<String> day = [
    '1',
    '2',
    '3',
    '4',
    '5',
    '6',
    '7',
    '8',
    '9',
    '10',
    '11',
    '12',
    '13',
    '14',
    '15',
    '16',
    '17',
    '18',
    '19',
    '20',
    '21',
    '22',
    '23',
    '24',
    '25',
    '26',
    '27',
    '28',
    '29',
    '30',
    '31'
  ];
  static List<String> month = [
    '1',
    '2',
    '3',
    '4',
    '5',
    '6',
    '7',
    '8',
    '9',
    '10',
    '11',
    '12'
  ];
  static List<String> year = [
    '2566',
    '2567',
    '2568',
    '2569',
    '2570',
    '2571',
    '2572',
    '2573',
    '2574',
    '2575'
  ];
  static var d;
  static var m;
  static var y;
  static double d1(var m1) {
    var d2;
    if (m1 == '2') {
      d2 = 28;
    } else if (m1 == '4' || m1 == '6' || m1 == '9' || m1 == '11') {
      d2 = 30;
    } else {
      d2 = 31;
    }
    return d2;
  }

  static List<double> colculaterPasy(
      {required double money,
      required double interest,
      required double month,
      required int count}) {
    double moneyPayForMonth = money / count;
    double currentmoney = money;
    double newMonth = month;
    List<double> dataMoney = [];
    for (int index = 0; index < count; index++) {
      double calfinishcount = (currentmoney -= moneyPayForMonth) *
          (interest / 100) *
          (Appdata.d1(newMonth + 1 == 13 ? newMonth = 1 : newMonth += 1) / 365);
      dataMoney.add(calfinishcount);
    }
    return dataMoney;
  }

  static double moneyAll(double first, double interest, double count) {
    var paymoncount = first / count;
    return paymoncount + interest;
  }
}

import 'package:crud_online/otomatisget.dart';
import 'package:crud_online/postdata.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:crud_online/deletedata.dart';

import 'getdata.dart';
import 'postdata.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: OtomatisGet(),
    );
  }
}

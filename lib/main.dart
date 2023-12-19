import 'package:demo/Page/Homepage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Page/hidden_drawer.dart';

void main(){
  runApp(MaterialApp(home: HiddenDrawer(),theme: ThemeData(primarySwatch: Colors.deepPurple),));
}
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:todey_flutter/screens/task_screen.dart';
import 'package:todey_flutter/models/task_dart.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      builder: (context) => TaskData(),
      child: MaterialApp(
        home: TasksScreen(),
      ),
    );
  }
}
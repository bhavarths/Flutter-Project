
import 'package:flutter/material.dart';

void main() { runApp(
    MaterialApp(
      home: Scaffold(
          backgroundColor:Colors.blueGrey,
        appBar: AppBar(
          title: Text('Team DYC at NYF'),
          backgroundColor:Colors.redAccent ,
        ),
        body:Center(
          child: Image(
            image: NetworkImage('https://media.licdn.com/dms/image/D4D22AQHUwf0TwdFFMQ/feedshare-shrink_800/0/1704396008651?e=2147483647&v=beta&t=A8jKHn7FzrX1gNr10RKJB1DDZE9ZcrwFz81ZRlzOtEI'),
          ) ,
        )
      ),
    ),
  );
}

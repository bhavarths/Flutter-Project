// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';
// import 'package:todoey_app/models/task_data.dart';
// import 'package:todoey_app/screens/add_task_screen.dart';
// import 'package:todoey_app/widgets/task_tile.dart';
//
// class TasksScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.lightBlueAccent,
//       floatingActionButton: FloatingActionButton(
//           backgroundColor: Colors.lightBlueAccent,
//           child: Icon(Icons.add),
//           onPressed: () {
//             showModalBottomSheet(
//                 context: context,
//                 isScrollControlled: true,
//                 builder: (context) => SingleChildScrollView(
//                     child:Container(
//                       padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
//                       child: AddTaskScreen(),
//                     )
//                 )
//             );
//           }
//       ),
//       body: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: <Widget>[
//           Container(
//             padding: EdgeInsets.only(
//                 top: 60.0, left: 30.0, right: 30.0, bottom: 30.0
//             ),
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: <Widget>[
//                 CircleAvatar(
//                   child: Icon(
//                     Icons.list,
//                     size: 30.0,
//                     color: Colors.lightBlueAccent,
//                   ),
//                   backgroundColor: Colors.white,
//                   radius: 30.0,
//                 ),
//                 SizedBox(
//                   height: 10.0,
//                 ),
//                 Text(
//                   'Todoey',
//                   style: TextStyle(
//                     color: Colors.white,
//                     fontSize: 50.0,
//                     fontWeight: FontWeight.w700,
//                   ),
//                 ),
//                 Text(
//                   '${Provider.of<TaskData>(context).taskCount} Tasks',
//                   style: TextStyle(
//                     color: Colors.white,
//                     fontSize: 18,
//                   ),
//                 ),
//               ],
//             ),
//           ),
//           Expanded(
//             child: Container(
//               padding: EdgeInsets.symmetric(horizontal: 20.0),
//               decoration: BoxDecoration(
//                 color: Colors.white,
//                 borderRadius: BorderRadius.only(
//                   topLeft: Radius.circular(20.0),
//                   topRight: Radius.circular(20.0),
//                 ),
//               ),
//               child: TasksList(),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }







import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey_app/models/task_data.dart';
import 'package:todoey_app/screens/add_task_screen.dart';
import 'package:todoey_app/widgets/task_tile.dart';

class TasksScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.lightBlueAccent,
        child: Icon(Icons.add),
        onPressed: () {
          showModalBottomSheet(
            context: context,
            isScrollControlled: true,
            builder: (context) => SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.only(
                  bottom: MediaQuery.of(context).viewInsets.bottom,
                ),
                child: AddTaskScreen(),
              ),
            ),
          );
        },
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(
              top: 60.0,
              left: 30.0,
              right: 30.0,
              bottom: 30.0,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                CircleAvatar(
                  child: Icon(
                    Icons.list,
                    size: 30.0,
                    color: Colors.lightBlueAccent,
                  ),
                  backgroundColor: Colors.white,
                  radius: 30.0,
                ),
                SizedBox(
                  height: 10.0,
                ),
                Text(
                  'Todoey',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 50.0,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Text(
                  '${Provider.of<TaskData>(context).taskCount} Tasks',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20.0),
                  topRight: Radius.circular(20.0),
                ),
              ),
              child: TasksList(),
            ),
          ),
        ],
      ),
    );
  }
}

class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: Provider.of<TaskData>(context).taskCount,
      itemBuilder: (context, index) {
        final task = Provider.of<TaskData>(context).tasks[index];
        return TaskTile(
          taskTitle: task.name,
          isChecked: task.isDone,
          checkboxCallback: (checkboxState) {
            // Update task completion status
            Provider.of<TaskData>(context, listen: false).updateTask(task);
          },
        );
      },
    );
  }
}

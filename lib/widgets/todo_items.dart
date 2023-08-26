import 'package:codetodo/constants/colors.dart';
import 'package:flutter/material.dart';

class ToDoItem extends StatelessWidget {
  const ToDoItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 20),
      child: ListTile(
        onTap: () {
          print('clicker on check');
        },
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        tileColor: Colors.white,
          leading: const Icon(
            Icons.check_box,
            color: kcBlue,

          ),
        title: const Text(
          "Check mail",
          style: TextStyle(
              fontSize: 16,
              color: kcBlack,
              decoration: TextDecoration.lineThrough
          ),
      ),
        trailing: Container(
          padding: EdgeInsets.all(0),
          margin: EdgeInsets.symmetric(vertical: 12),
          height: 35,
          width: 35,
            decoration: BoxDecoration(
              color: kcRed,
              borderRadius: BorderRadius.circular(5)
            ),
          child: IconButton(
            color: Colors.white,
            iconSize: 18,
            icon: const Icon(Icons.delete),
            onPressed: () {
              print('clicker on delete button');
            },

          ),
        ),

      )
    );
  }
}

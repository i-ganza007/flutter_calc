import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_calculator/util/my_button.dart';

class DialogBox extends StatelessWidget {
  final controller;

  VoidCallback onSave;
  VoidCallback onCancel;
  DialogBox({super.key, required this.controller,required this.onCancel,required this.onSave});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.yellow[300],
      content: Container(
        height: 120,
        child: Column(
          children: [
            TextField(
              controller: controller,
              decoration: InputDecoration(
                  border: OutlineInputBorder(), hintText: 'Add a new Task'),
            ),
            Row(
              children: [
                MyButton(text: 'Save', onPressed: onSave,),
                const SizedBox(width: 8),
                MyButton(text: 'Cancel', onPressed:onCancel)
              ],
            )
          ],
        ),
      ),
    );
  }
}

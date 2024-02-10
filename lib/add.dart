import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_x_todo/get_x.dart';


class AddData extends StatelessWidget {
  const AddData({super.key});

  @override
  Widget build(BuildContext context) {
    final TodoGetX addTodo = Get.find();
    TextEditingController titleController = TextEditingController();

    return FloatingActionButton(onPressed: (){
            showDialog(
                context: context,
                builder: (context) {
                  return AlertDialog(
                    title: TextField(
                      controller: titleController,
                      decoration: InputDecoration(
                        hintText: 'add task',
                      ),
                    ),
                    actions: [
                      ElevatedButton(
                        onPressed: () {
                          String  title= titleController.text;
                       addTodo.add(title);
                          titleController.clear();
                          Navigator.pop(context);
                        },
                        child: Text('SAVE'),
                      ),
                      ElevatedButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: Text('Cancel')
                      )
                    ],
                  );
                }
            );
          },
              child: Text('Add ')
          );



  }
}

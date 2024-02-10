
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import 'get_x.dart';


class UpdateData extends StatelessWidget {
  const UpdateData({super.key, required this.index});
  final int index;

  @override
  Widget build(BuildContext context) {
    final TodoGetX update = Get.find();
    TextEditingController titleController = TextEditingController();
    titleController.text=update.todo[index];


    return
          IconButton(icon: Icon(Icons.edit),onPressed: (){
            showDialog(
                context: context,
                builder: (context) {
                  return AlertDialog(
                    title: TextField(
                      controller: titleController,
                      decoration: InputDecoration(
                        hintText: 'edit task',
                      ),
                    ),
                    actions: [
                      ElevatedButton(
                        onPressed: () {
                          String updatval = titleController.text;
                          update.updateTod(index, updatval);

                          titleController.clear();
                          Navigator.pop(context);
                        },
                        child: Text('Update'),
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

          );



  }
}

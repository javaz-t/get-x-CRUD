import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_x_todo/get_x.dart';
import 'package:get_x_todo/update.dart';

import 'add.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final todoGetX = Get.put(TodoGetX());
    TextEditingController titleController = TextEditingController();

    return   Scaffold(
      floatingActionButton:AddData(),
      appBar: AppBar(
        title: Text('Todo List ye9 '),
        backgroundColor: Colors.greenAccent,
      ),
      body: Obx(() {
        return ListView.builder(
            itemCount: todoGetX.todo.length,
            itemBuilder: (context, index) {
              return Card(
                child: ListTile(
                  title: Text(todoGetX.todo[index]),
                       leading:  UpdateData(index: index,),
                  trailing: IconButton(
                    icon: const Icon(Icons.delete), onPressed: () {
                    todoGetX.delete(index);
                  },),

                ),
              );
            });
      }
      ),

    );

  }
}

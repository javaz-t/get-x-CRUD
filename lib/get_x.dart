
import 'package:get/get.dart';

class TodoGetX extends GetxController{
  RxList<String>todo=['sdfd','fsdf','dsf','fgdfg'].obs;

  delete(index){
    todo.removeAt(index);
  }

  add(String title){
    todo.add(title);
  }

  updateTod(int index,String newVal){
    todo[index] = newVal;
  }

}
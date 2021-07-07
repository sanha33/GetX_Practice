import 'package:brandnew_getx_crud_practice/main.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:brandnew_getx_crud_practice/main.dart';
import 'package:brandnew_getx_crud_practice/models/Books.dart';


class BOOKcontroller extends GetxController {

  var items = ''.obs;
  var count = 0.obs;

  var book = <Book>[].obs;

  /*
  final textcontroller = TextEditingController();
  final textcontroller1 = TextEditingController();

  final book = Book().obs;


  createText() {

  //  items = texcontroller.text.obs;

    book.update((b){
      book.value.title= texcontroller.text.obs;
      book.value.content= texcontroller1.text.obs;
    });


  update();

  }*/

  increament(){
    count ++;
  }

}


class Book {
  Book({this.title='title',this.content='content'});
  var title;
  var content;

}


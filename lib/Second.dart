import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:brandnew_getx_crud_practice/main.dart';
import 'package:brandnew_getx_crud_practice/controller.dart';

class Second extends StatelessWidget {
  const Second({Key? key}) : super(key: key);



  @override
  Widget build(BuildContext context) {
    final BOOKcontroller c = Get.find();
    return Scaffold(
       body: Center(
         child: Column(
           crossAxisAlignment: CrossAxisAlignment.center,
           mainAxisAlignment: MainAxisAlignment.center,
           children: [

             GetBuilder<BOOKcontroller>(
                 init: BOOKcontroller(),
                 builder: (_) => Text('${c.items}')

             ),

             Obx((){
               return Text('${c.items}');
             }),
             Text('${c.items}'),
             ElevatedButton(onPressed: ()=> Get.back(), child: Text('Goto back'),)
           ],
         ),
       )
    );
  }
}

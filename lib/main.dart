import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:brandnew_getx_crud_practice/Second.dart';
import 'package:brandnew_getx_crud_practice/controller.dart';

void main() => runApp(GetMaterialApp(home: Home()));
final textEditingController = TextEditingController();
final textEditingController1 = TextEditingController();
class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final BOOKcontroller c = Get.put(BOOKcontroller());
    // final controller c1 = Get.put(controller());


    return Scaffold(
      appBar: AppBar(
        title: Text("together"),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
           /* GetBuilder<BOOKcontroller>(
                init: BOOKcontroller(),
                builder: */
            Obx(() => ListView.separated(
                    shrinkWrap: true,
                    itemBuilder: (context, index) => ListTile(
                          title: Container(
                            child: Row(

                              children: [
                                Column(
                                  children: [
                                    Text(
                                        '${c.book[index].title}'),
                                    Text(
                                        '${c.book[index].content}'),
                                  ],
                                ),

                                TextButton(onPressed: () {
                                  Get.defaultDialog(
                                      title: 'data EDIT',
                                  content: Column(
                                  children: [
                                    TextField(
                                      controller: textEditingController,

                                      //위에 이걸로 data를 넣는건가?
                                      decoration: InputDecoration(
                                        hintText: 'title',
                                      ),
                                    ),
                                    TextField(
                                      controller: textEditingController1,
                                      //위에 이걸로 data를 넣는건가?
                                      decoration: InputDecoration(
                                        hintText: 'content',
                                      ),
                                    ),
                                  ],
                                ),
                                    actions:[
                                    TextButton(
                                      onPressed: () {
                                        c.book.add(Book(
                                            title: textEditingController.text,
                                            content: textEditingController1.text));
                                        print("${c.items}");

                                        Get.back();
                                      },
                                      child: Text('submit'),
                                    ),
                                    ]

                                    ,
                                  );

                                  }, child: Text("Edit"),
                                )
                              ],


                            ),

                          ),
                          onTap: () {},

                          //style:
                        ),
                    separatorBuilder: (_, __) => Divider(),
                    itemCount: c.book.length)),
            /*
            //  Text('${c.items}'),
            GetBuilder<controller>(
                init: controller(),
                builder: (_) => Text('${c.book.value.title}')),


            GetBuilder<controller>(
                init: controller(),
                builder: (_) => Text('${c.book.value.content}')),
            ElevatedButton(
                onPressed: () => c.increament(),
                child: (Text('increament count'))),

            GetX<controller>(builder: (controller) => Text('${c.count}')),

            Obx(() {
              return Text('${c.count}');
            }),*/
//    Obx 는 get.put 인식 가능 get.back 은 인식을 못함.

            ElevatedButton(
              onPressed: () => Get.to(Second()),
              child: Text('Goto Second'),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          Get.defaultDialog(
            title: 'data create',
            content: Column(
              children: [
                TextField(
                  controller: textEditingController,
                  //위에 이걸로 data를 넣는건가?
                  decoration: InputDecoration(
                    hintText: 'title',
                  ),
                ),
                TextField(
                  controller: textEditingController1,
                  //위에 이걸로 data를 넣는건가?
                  decoration: InputDecoration(
                    hintText: 'content',
                  ),
                ),
              ],
            ),
            actions: [
              TextButton(
                onPressed: () {
                  c.book.add(Book(
                      title: textEditingController.text,
                      content: textEditingController1.text));
                  print("${c.items}");

                  Get.back();
                },
                child: Text('submit'),
              ),
            ],
          );
        },
      ),
    );
  }
}

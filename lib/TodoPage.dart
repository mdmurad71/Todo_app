import 'package:flutter/material.dart';
import 'style.dart';



class Todopage extends StatefulWidget {
  const Todopage({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState(){
    return TodopageView();
  }
}

class TodopageView extends State<Todopage> {

  List TodoList= [
    {'1': '1'}, {'1': '1'}
  ];

  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(title: Text("ToDo"),),
     body: Container(
       padding: EdgeInsets.all(10),
       child: Column(
         children: [
           Expanded(
              flex: 10,
               child: Row(
                 children: [
                   Expanded( flex: 80,  child: TextFormField(decoration: AppInputStyle('add input'),)),

                   Expanded(
                       flex: 20,
                       child: ElevatedButton(
                         style: AppButtonStyle(),
                         child: Text("Add"),
                         onPressed: (){},
                       ))
                 ],
               )),

           Expanded(
               flex: 90,
               child: ListView.builder(
                 itemCount: TodoList.length,
                 itemBuilder: (context, index){
                   return Card(
                     child: sizedBox50(
                       Row(
                         children: [
                           Expanded( flex: 80,   child: Text("item")),
                           Expanded(flex: 20, child: TextButton(onPressed: (){}, child: Icon(Icons.delete),))
                         ],
                       )
                     ),
                   );
                 },

               )
           )

         ],
       ),
     ),
   );
  }

}

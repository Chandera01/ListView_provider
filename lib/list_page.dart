import 'package:flutter/material.dart';
import 'package:list_view_provider/list_provider.dart';
import 'package:provider/provider.dart';

class ListHomePage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => _ListHomePage();
}

class _ListHomePage extends State<ListHomePage>{
  @override
  Widget build(BuildContext context) {
   var mData = Provider.of<ListProvider>(context).getValue();
    return Scaffold(
      appBar: AppBar(
        title: Text("ListPage"),
      ),
      body: ListView.builder(
            itemCount: mData.length,
          itemBuilder: (context,index){
              return ListTile(
                title: Text(mData[index]["name"]),
                subtitle: Text(mData[index]["Mono"]),
              );
          }),
      floatingActionButton: FloatingActionButton(onPressed: (){
        Provider.of<ListProvider>(context,listen: false).addData();
      },child: Icon(Icons.add),),
    );
  }
}
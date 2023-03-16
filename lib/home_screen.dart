import 'package:flutter/material.dart';
import 'package:json_model_classes/name_model.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<NamesModel> nameList = [
    NamesModel(name: 'gin', age: 25, profession: "odd job", image: "stick katana", details: Details(father: "unknown")),
    NamesModel(name: 'kin', age: 25, profession: "tamaya"),
    NamesModel(name: 'rin', age: 25, profession: "reporter job"),
    NamesModel(name: 'ken', age: 25, profession: "samurai job"),
    NamesModel(name: 'ran', age: 25, profession: "student"),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('model class'),),

      body: ListView.builder(
          itemCount: nameList.length,
          itemBuilder: (context, index){
            if(nameList[index].details.toString() == 'null'){
              return ListTile(
                title: Text(nameList[index].name.toString().toUpperCase()),
                subtitle: Text(nameList[index].age.toString()),
                trailing: IconButton(
                  onPressed: (){
                    nameList.removeAt(index);
                    setState(() {

                    });
                  },
                  icon: Icon(Icons.delete),
                ),
              );
            }else{
              return ListTile(
                title: Text(nameList[index].name.toString().toUpperCase()),
                subtitle: Text(nameList[index].details!.father.toString()),
                trailing: IconButton(
                  onPressed: (){
                    nameList.removeAt(index);
                    setState(() {

                    });
                  },
                  icon: Icon(Icons.delete),
                ),
              );
            }
          }),
    );
  }
}



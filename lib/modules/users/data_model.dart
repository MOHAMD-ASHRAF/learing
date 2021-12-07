 import 'package:flutter/material.dart';
import 'package:learning/models/user/user_login.dart';
class DataModel extends StatelessWidget {
 List<UserModel> list = [
   UserModel(
       id: 1,
       name: 'mohamed',
       phone: '01022953656'),
   UserModel(
       id: 2,
       name: 'ahmed',
       phone: '01022958656'),
   UserModel(
       id: 3,
       name: 'nezar',
       phone: '01022957756'),
   UserModel(
       id: 4,
       name: 'maha',
       phone: '01025953656'),
   UserModel(
       id: 1,
       name: 'mohamed',
       phone: '01022953656'),
   UserModel(
       id: 2,
       name: 'ahmed',
       phone: '01022958656'),
   UserModel(
       id: 3,
       name: 'nezar',
       phone: '01022957756'),
   UserModel(
       id: 4,
       name: 'maha',
       phone: '01025953656'),
 ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('hego'),
      ),
      body: ListView.separated(
          itemBuilder: (context , index)=> dataModel(list[index]),
          separatorBuilder: (context , index)=> Container(
             height: 2,
           width: double.infinity,
            color: Colors.grey[300],
          ),
          itemCount: list.length)
    );
  }
  Widget dataModel(UserModel user)=> Padding(
    padding: const EdgeInsets.all(8.0),
    child: Row(
      children: [
        CircleAvatar(
          radius: 25,
          child: Text(
            '${user.id}',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
        ),
        SizedBox(
          width: 20,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              '${user.name}',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
            Text(
              '${user.phone}',style: TextStyle(fontSize: 10,fontWeight: FontWeight.bold,color: Colors.blue),),
          ],
        ),
      ],
    ),
  );
}

import 'dart:html';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class MessengerScreen extends StatelessWidget {
  const MessengerScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      appBar: AppBar(
        titleSpacing: 20,
        backgroundColor: Colors.white,
        elevation: 0.0,
        title: Row(
          children: [
            CircleAvatar(
              radius: 20,
              backgroundImage: NetworkImage('https://img.olympicchannel.com/images/image/private/t_1-1_600/f_auto/v1538355600/primary/pcxgwhoweqzzhiuqbwqw'),
            ),
          ],
        ),
        actions: [
          IconButton(
              onPressed: (){},
              icon: CircleAvatar(
                radius: 20,
                backgroundColor: Colors.blue,
                child: Icon(
                    Icons.camera_alt_outlined,
                  color: Colors.white,
                  size: 15,
                ),
              ),
          ),
          IconButton(
            onPressed: (){},
            icon: CircleAvatar(
              radius: 20,
              backgroundColor: Colors.blue,
              child: Icon(
                Icons.edit,
                color: Colors.white,
                size: 15,
              ),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                decoration: BoxDecoration(
                    color: Colors.grey[300],
                  borderRadius: BorderRadius.circular(20)
                ),
                padding: EdgeInsets.all(7),
                child: Row(
                  children: [
                    Icon(Icons.search),
                    SizedBox(
                      width: 15,
                    ),
                    Text('Search'),
                  ],
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                height: 100,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context,index) => buildStoryItem(),
                  separatorBuilder: (context,index) =>SizedBox(
                    width: 20,
                  ) ,
                  itemCount: 10,
                ),
              ),
              SizedBox(
                height: 15,
              ),
              ListView.separated(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemBuilder: (context,index) => buildChatItem(),
                separatorBuilder: (context,index) =>SizedBox(
                  height: 20,
                ) ,
                itemCount: 30,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildStoryItem() => Container(
    width: 60,
    child: Column(
      children: [
        Stack(
          alignment: Alignment.bottomRight,
          children: [
            CircleAvatar(
              radius: 30,
              backgroundImage: NetworkImage('https://img.olympicchannel.com/images/image/private/t_1-1_600/f_auto/v1538355600/primary/pcxgwhoweqzzhiuqbwqw'),
            ),
            Padding(
              padding: const EdgeInsets.only(
                bottom: 2, right: 3,
              ),
              child: CircleAvatar(
                radius: 7,
                backgroundColor: Colors.red,
              ),
            ),
          ],
        ),
        SizedBox(height: 3,),
        Text('cristiano ronaldo '
          ,maxLines: 2,
          overflow: TextOverflow.ellipsis,),

      ],
    ),
  );
  Widget buildChatItem() => Row(
    children: [
      Stack(
        alignment: Alignment.bottomRight,
        children: [
          CircleAvatar(
            radius: 30,
            backgroundImage: NetworkImage('https://img.olympicchannel.com/images/image/private/t_1-1_600/f_auto/v1538355600/primary/pcxgwhoweqzzhiuqbwqw'),
          ),
          Padding(
            padding: const EdgeInsets.only(
              bottom: 2, right: 3,
            ),
            child: CircleAvatar(
              radius: 7,
              backgroundColor: Colors.red,
            ),
          ),
        ],
      ),
      SizedBox(
        width: 10,
      ),
      Expanded(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('nezar ashraf elhegawy',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),),
            SizedBox(
              height: 7,
            ),
            Row(
              children: [
                Expanded(
                  child: Text('heloo can u play with my heloo can u play with myheloo can u play with myheloo can u play with myheloo can u play with myheloo can u play with myheloo can u play with myheloo can u play with myheloo can u play with myheloo can u play with my'
                    ,maxLines: 2,
                    overflow: TextOverflow.ellipsis,),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5),
                  child: Container(
                    width: 7,
                    height: 7,
                    decoration: BoxDecoration(
                      color: Colors.amber,
                      shape: BoxShape.circle,
                    ),
                  ),
                ),
                Text('3.30 pm'),

              ],
            ),
          ],

        ),
      ),
    ],
  );
}

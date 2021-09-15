import 'package:flutter/material.dart';
import 'package:messenger_app/widgets/Chats.dart';
import 'package:messenger_app/widgets/contact.dart';

class ContactsScreen extends StatefulWidget {
  @override
  _ContactsScreenState createState() => _ContactsScreenState();
}

class _ContactsScreenState extends State<ContactsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.black,
        child: ListView(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: <Widget>[
                      Stack(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: CircleAvatar(
                              backgroundImage: AssetImage("images/w1.jpg"),
                              radius: 22,
                            ),
                          ),

                          Positioned(
                            right: 2,
                              child: Container(
                            decoration: BoxDecoration(
                              color: Colors.red,
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(color: Colors.red, width: 2)
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(left: 5, right: 5),
                              child: Text("10", style: TextStyle(fontSize: 13, color: Colors.white, fontWeight: FontWeight.bold),),
                            ),
                          ))
                        ],
                      ),

                      Text("Messages", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.lightBlueAccent),)
                    ],
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: <Widget>[
                      CircleAvatar(
                        radius: 20,
                        backgroundColor: Colors.white.withOpacity(0.9),
                        child: Icon(Icons.photo_camera, color: Colors.lightBlue,),
                      ),

                      SizedBox(width: 9,),

                      CircleAvatar(
                        radius: 20,
                        backgroundColor: Colors.white.withOpacity(0.9),
                        child: Icon(Icons.edit, color: Colors.lightBlue,),
                      ),
                    ],
                  ),
                ),

              ],
            ),

            SizedBox(height: 5,),


            Padding(
              padding: const EdgeInsets.only(left: 13, right: 13),
              child: Container(

                decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: BorderRadius.circular(30)
                ),
                width: MediaQuery.of(context).size.width - 40,
                child: Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "Search",
                      border: InputBorder.none,
                      icon: Icon(Icons.search, color: Colors.lightBlue,)
                    ),
                  ),
                ),
              ),
            ),

            SizedBox(height: 10,),
            Container(
              height: 80,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(left: 13),
                    child: CircleAvatar(
                      radius: 25,
                      backgroundColor: Colors.grey[300],
                      child: Icon(Icons.add, size: 25, color: Colors.lightBlue,),
                    ),
                  ),

                  ContactWidget(false, img: "w2.jpg", online: false,),
                  ContactWidget(true, img: "w3.jpg", online: true,),
                  ContactWidget(true, img: "m1.jpg", online: true,),
                  ContactWidget(true, img: "w4.jpg", online: true,),


                ],
              ),
            ),

            SizedBox(height: 10,),

            Chats(
              image: "m2.jpg",
              name: "Ezeh Francis",
              msg: "Where are you? I don dey go o.",
              isRead: false,
            ),

            Chats(
              image: "w4.jpg",
              name: "Nnedimma Obianagha",
              msg: "I have the game. MK11!",
              isRead: false,
            ),

            Chats(
              image: "m1.jpg",
              name: "KC",
              msg: "Onye mgbu",
              isRead: false,
            ),

          ],
        ),
      ),
    );
  }
}

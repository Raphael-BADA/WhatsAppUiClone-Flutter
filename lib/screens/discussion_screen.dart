import 'package:flutter/material.dart';
import 'package:whatsapp_ui_clone/screens/screens.dart';
import 'package:whatsapp_ui_clone/widgets/widgets.dart';
import '../data/data.dart';
import '../const.dart';

class Discussion extends StatefulWidget {
  const Discussion({super.key});

  @override
  State<Discussion> createState() => _DiscussionState();
}

class _DiscussionState extends State<Discussion> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => ChatScreen(
                      title: 'Chats',
                    )),
          );
        },
        backgroundColor: green,
        child: Icon(Icons.message),
      ),
      body: ListView(
        children: [
          SizedBox(
            height: 10,
          ),
          for (var counter = 0; counter < users.length; counter++)
            MyListTile(
              userName: users[counter].userName,
              avatar: users[counter].avatar,
              unreadMsg: messages[counter].numberOfMsg,
              msgTime: messages[counter].time,
              msg: messages[counter].msg,
              msgType: messages[counter].type,
            ),
        ],
      ),
    );
  }
}

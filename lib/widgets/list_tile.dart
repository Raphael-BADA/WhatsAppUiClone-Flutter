import 'package:flutter/material.dart';
import 'package:whatsapp_ui_clone/const.dart';
import 'package:whatsapp_ui_clone/screens/screens.dart';

class MyListTile extends StatefulWidget {
  const MyListTile({
    required this.avatar,
    required this.userName,
    required this.unreadMsg,
    required this.msgTime,
    required this.msg,
    required this.msgType,
    super.key,
  });
  final String avatar;
  final String userName;
  final String unreadMsg;
  final String msgTime;
  final String msg;
  final String msgType;
  @override
  State<MyListTile> createState() => _MyListTileState();
}

class _MyListTileState extends State<MyListTile> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => ChatScreen(
                    title: 'Chats',
                  )),
        );
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4),
        child: Row(
          children: [
            Container(
              width: (MediaQuery.of(context).size.width - 16) * 0.15,
              child: CircleAvatar(
                radius: 24,
                backgroundImage: AssetImage(widget.avatar),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Container(
                  width: (MediaQuery.of(context).size.width - 16) * 0.57,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        widget.userName,
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 14),
                      ),
                      Row(
                        children: [
                          widget.msgType == 'out'
                              ? Stack(
                                  children: const [
                                    Icon(
                                      Icons.check,
                                      color: Color.fromARGB(255, 7, 135, 239),
                                    ),
                                    Positioned(
                                      left: 6,
                                      child: Icon(
                                        Icons.check,
                                        color: Color.fromARGB(255, 7, 135, 239),
                                      ),
                                    ),
                                  ],
                                )
                              : const Center(),
                          const SizedBox(
                            width: 3,
                          ),
                          Text(
                            widget.msg.length > 20
                                ? '${widget.msg.substring(0, 20)} . . .'
                                : widget.msg,
                            style: const TextStyle(
                                color: Colors.black54, fontSize: 13),
                          ),
                        ],
                      ),
                    ],
                  )),
            ),
            Container(
              width: (MediaQuery.of(context).size.width - 16) * 0.2,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    widget.msgTime,
                    style: TextStyle(fontSize: 13, color: Colors.green),
                  ),
                  widget.msgType == 'in'
                      ? CircleAvatar(
                          backgroundColor: Colors.green,
                          radius: 10,
                          child: Text(
                            widget.unreadMsg,
                            style: TextStyle(fontSize: 12, color: Colors.white),
                          ),
                        )
                      : const Center(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

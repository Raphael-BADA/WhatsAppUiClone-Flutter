import 'package:flutter/material.dart';
import 'package:chat_bubbles/chat_bubbles.dart';
import 'package:audioplayers/audioplayers.dart';
import "package:cached_network_image/cached_network_image.dart";
import 'package:whatsapp_ui_clone/const.dart';

import 'setting_screen.dart';

class ChatScreen extends StatefulWidget {
  final String title;
  ChatScreen({Key? key, required this.title}) : super(key: key);

  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  AudioPlayer audioPlayer = new AudioPlayer();
  Duration duration = new Duration();
  Duration position = new Duration();
  bool isPlaying = false;
  bool isLoading = false;
  bool isPause = false;

  @override
  Widget build(BuildContext context) {
    final now = new DateTime.now();
    return Scaffold(
      appBar: AppBar(
        leading: Row(
          children: [
            InkWell(
                onTap: Navigator.of(context).pop,
                child: Icon(Icons.arrow_back)),
            CircleAvatar(
                radius: 16, backgroundImage: AssetImage('assets/ya.jpg')),
          ],
        ),
        backgroundColor: green,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Yemi Alade'),
            Text(
              'En ligne',
              style: TextStyle(fontSize: 11),
            ),
          ],
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10.0),
            child: Row(
              children: [
                Icon(
                  Icons.camera_alt,
                  size: 30,
                ),
                SizedBox(
                  width: 13,
                ),
                Icon(
                  Icons.search,
                  size: 30,
                ),
                PopupMenuButton(
                  itemBuilder: (BuildContext bc) {
                    return [
                      PopupMenuItem(
                          child: Text("Paramètres"),
                          value: '4',
                          onTap: () => {
                                Navigator.of(context).push(
                                  MaterialPageRoute(
                                      builder: (context) => Setting()),
                                )
                              }),
                    ];
                  },
                )
              ],
            ),
          ),
        ],
      ),
      backgroundColor: Color.fromARGB(255, 202, 188, 188),
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              children: <Widget>[
                BubbleNormalImage(
                  id: 'id001',
                  image: Image.asset('assets/ya.jpg'),
                  color: green,
                  tail: true,
                  delivered: true,
                ),
                BubbleNormalAudio(
                  color: Color(0xFFE8E8EE),
                  duration: 50.2,
                  position: position.inSeconds.toDouble(),
                  isPlaying: true,
                  isLoading: isLoading,
                  isPause: false,
                  onSeekChanged: print,
                  onPlayPauseButtonClick: () {},
                  sent: true,
                ),
                BubbleSpecialOne(
                  text: 'Hi Everyone, I am yemi . Nigerian artist, song writer',
                  isSender: false,
                  color: Color(0xFFE8E8EE),
                  textStyle: TextStyle(
                    fontSize: 14,
                    color: Colors.black,
                  ),
                ),
                BubbleSpecialOne(
                  text: 'Hi Everyone, I am yemi . Nigerian artist, song writer',
                  isSender: true,
                  color: green,
                  textStyle: TextStyle(
                    fontSize: 14,
                    color: Colors.black,
                  ),
                ),
                DateChip(
                  date: new DateTime(now.year, now.month, now.day - 1),
                ),
                BubbleSpecialOne(
                  text: 'Hi Everyone, I am yemi . Nigerian artist, song writer',
                  isSender: false,
                  color: Color(0xFFE8E8EE),
                  textStyle: TextStyle(
                    fontSize: 14,
                    color: Colors.black,
                  ),
                ),
                BubbleSpecialOne(
                  text: 'Hi Everyone, I am yemi . Nigerian artist, song writer',
                  isSender: true,
                  color: green,
                  textStyle: TextStyle(
                    fontSize: 14,
                    color: Colors.black,
                  ),
                ),
                DateChip(
                  date: now,
                ),
                BubbleSpecialOne(
                  text: 'Hi Everyone, I am yemi . Nigerian artist, song writer',
                  isSender: false,
                  color: Color(0xFFE8E8EE),
                  textStyle: TextStyle(
                    fontSize: 14,
                    color: Colors.black,
                  ),
                ),
                BubbleSpecialOne(
                  text: 'Hi Everyone, I am yemi . Nigerian artist, song writer',
                  isSender: true,
                  color: green,
                  textStyle: TextStyle(
                    fontSize: 14,
                    color: Colors.black,
                  ),
                ),
                SizedBox(
                  height: 100,
                )
              ],
            ),
          ),
          MessageBar(
            sendButtonColor: green,
            replyWidgetColor: green,
            replyIconColor: green,
            onSend: (_) => print(_),
            actions: [
              InkWell(
                child: Icon(
                  Icons.add,
                  color: Colors.black,
                  size: 24,
                ),
                onTap: () {},
              ),
              Padding(
                padding: EdgeInsets.only(left: 8, right: 8),
                child: InkWell(
                  child: Icon(
                    Icons.camera_alt,
                    color: green,
                    size: 24,
                  ),
                  onTap: () {},
                ),
              ),
            ],
          ),
        ],
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

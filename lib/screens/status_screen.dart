import 'package:flutter/material.dart';
import 'package:whatsapp_ui_clone/widgets/widgets.dart';

import '../const.dart';
import '../data/data.dart';

class Status extends StatefulWidget {
  @override
  State<Status> createState() => _StatusState();
}

class _StatusState extends State<Status> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: green,
        child: const Icon(Icons.camera_alt),
      ),
      body: ListView(
        children: [
          const SizedBox(
            height: 10,
          ),
          const ProfilListTile(),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: const [
                Text(
                  'Mises à jour et vues',
                  style: TextStyle(
                      color: Colors.black54,
                      fontWeight: FontWeight.bold,
                      fontSize: 16),
                ),
              ],
            ),
          ),
          for (var counter = 0; counter < status.length; counter++)
            StatusListTile(
              userName: status[counter].user.userName,
              userAvatar: status[counter].statusPicture,
              time: status[counter].statusTime,
            ),
        ],
      ),
    );
  }
}

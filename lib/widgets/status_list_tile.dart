import 'package:flutter/material.dart';

class StatusListTile extends StatefulWidget {
  const StatusListTile({
    required this.userName,
    required this.userAvatar,
    required this.time,
    super.key,
  });
  final String userName;
  final String userAvatar;
  final String time;
  @override
  State<StatusListTile> createState() => _StatusListTileState();
}

class _StatusListTileState extends State<StatusListTile> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4),
      child: Row(
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(45),
              color: Colors.green,
            ),
            child: Padding(
              padding: const EdgeInsets.all(3),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(45),
                  color: Colors.white,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(3),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(45),
                      //  color: Colors.green,
                    ),
                    //  width: (MediaQuery.of(context).size.width - 16) * 0.15,
                    child: CircleAvatar(
                      radius: 21,
                      backgroundImage: AssetImage(widget.userAvatar),
                    ),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Container(
                width: (MediaQuery.of(context).size.width - 16) * 0.7,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget.userName,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                      ),
                    ),
                    Text(
                      widget.time,
                      style: TextStyle(color: Colors.black54, fontSize: 13),
                    ),
                  ],
                )),
          ),
        ],
      ),
    );
  }
}

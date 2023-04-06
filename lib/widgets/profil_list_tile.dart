import 'package:flutter/material.dart';

class ProfilListTile extends StatefulWidget {
  const ProfilListTile({super.key});

  @override
  State<ProfilListTile> createState() => _ProfilListTileState();
}

class _ProfilListTileState extends State<ProfilListTile> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4),
      child: Row(
        children: [
          Container(
            width: (MediaQuery.of(context).size.width - 16) * 0.15,
            child: Stack(
              children: [
                CircleAvatar(
                  radius: 24,
                  backgroundImage: AssetImage('assets/yk.jpg'),
                ),
                Positioned(
                  bottom: 0,
                  right: 0,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(90),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(2.5),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.green,
                          borderRadius: BorderRadius.circular(90),
                        ),
                        child: Icon(
                          Icons.add,
                          size: 16,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
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
                      'Yohan kim',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
                    ),
                    Text(
                      'Appuyer pour ajouter ...',
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

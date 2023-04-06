import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'const.dart';
import 'screens/screens.dart';
import 'screens/setting_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent, // make the status bar transparent
        statusBarIconBrightness:
            Brightness.light, // set the status bar icon color to dark
        systemNavigationBarColor:
            Colors.white, // set the navigation bar color to white
        systemNavigationBarIconBrightness:
            Brightness.dark, // set the navigation bar icon color to dark
      ),
    );

    return MaterialApp(
      title: 'WhatsAppUiClone',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: green,
            title: const Text(
              'WhatsApp',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            actions: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(Icons.search),
                  PopupMenuButton(
                    /*  onSelected: (value) {
                      switch (value) {
                        case '4':
                          print('Settings');
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Setting(),
                            ),
                          );
                          break;
                      }
                    }, */
                    itemBuilder: (BuildContext bc) {
                      return [
                        PopupMenuItem(
                          child: Text("Nouveau groupe"),
                          value: '1',
                        ),
                        PopupMenuItem(
                          child: Text("Nouvelle diffusion"),
                          value: '2',
                        ),
                        PopupMenuItem(
                          child: Text("Méssages importants"),
                          value: '3',
                        ),
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
            ],
            bottom: TabBar(
              indicatorColor: Colors.white,
              //s isScrollable: true,
              labelPadding: EdgeInsets.symmetric(horizontal: 10.0),
              tabs: [
                Tab(icon: Icon(Icons.camera_alt)),
                Tab(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        'Disc.',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(
                        width: 3,
                      ),
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white),
                        child: Padding(
                          padding: const EdgeInsets.all(2.0),
                          child: Text('82',
                              style: TextStyle(
                                  color: green,
                                  fontSize: 10,
                                  fontWeight: FontWeight.bold)),
                        ),
                      ),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Tab(
                      child: Text(
                        'Status',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Tab(
                      child: Text(
                        'Appels',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              const Center(
                child: Text('Camera'),
              ),
              const Discussion(),
              // Text('data'),
              Status(),
              const Center(
                child: Text('Aucun appel'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

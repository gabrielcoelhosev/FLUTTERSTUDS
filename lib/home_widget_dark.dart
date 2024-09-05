import 'package:flutter/material.dart';

class HomeWidDark extends StatefulWidget {
  const HomeWidDark({super.key});

  @override
  State<HomeWidDark> createState() => _HomeWidDarkState();
}

class _HomeWidDarkState extends State<HomeWidDark> {
  var counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.purple,
        centerTitle: true,
        title: const Text(
          'ADD or REMOVE',
          style: TextStyle(color: Colors.black),
        ),
        actions: <Widget>[
          IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(
                Icons.light_mode,
                color: Colors.black,
              ))
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                IconButton(
                  onPressed: () {
                    setState(() {
                      counter--;
                    });
                  },
                  icon: Icon(
                    Icons.remove_circle,
                    color: Colors.purple,
                  ),
                ),
                Text(
                  '$counter',
                  style: TextStyle(color: Colors.purple, fontSize: 30),
                ),
                IconButton(
                    onPressed: () {
                      setState(() {
                        counter++;
                      });
                    },
                    icon: Icon(
                      Icons.add_circle,
                      color: Colors.purple,
                    ))
              ],
            )
          ],
        ),
      ),
    );
  }
}

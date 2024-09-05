import 'package:contador/home_widget_dark.dart';
import 'package:flutter/material.dart';

class HomeWidget extends StatefulWidget {
  const HomeWidget({super.key});

  @override
  State<HomeWidget> createState() => _HomeWidgetState();
}

class _HomeWidgetState extends State<HomeWidget> {
  var counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        centerTitle: true,
        title: const Text(
          'ADD or REMOVE',
          style: TextStyle(color: Colors.white),
        ),
        actions: <Widget>[
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const HomeWidDark()),
              );
            },
            icon: const Icon(
              Icons.dark_mode,
              color: Colors.white,
            ),
          ),
        ],
      ),
      body: Stack(
        children: [
          Column(
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
                      icon: const Icon(
                        Icons.remove_circle,
                        color: Colors.purple,
                      )),
                  Text(
                    "$counter",
                    style: const TextStyle(color: Colors.purple, fontSize: 30),
                  ),
                  IconButton(
                      onPressed: () {
                        setState(() {
                          counter++;
                        });
                      },
                      icon: const Icon(
                        Icons.add_circle,
                        color: Colors.purple,
                      ))
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}

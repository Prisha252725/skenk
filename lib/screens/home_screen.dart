import 'package:flutter/material.dart';
import 'package:skenk/screens/createroom_screen.dart';
import 'package:skenk/screens/joinroom_screen.dart';
import 'package:skenk/widgets/custom_scaffold.dart';

class homescreen extends StatelessWidget {
  const homescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return customscaffold(
      child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              "Create or Join a Room to Play",
              style: TextStyle(
                color: Color.fromARGB(255, 255, 255, 255),
                fontSize: 25,
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.1,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                    onPressed: () => Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => createroom_screen())),
                    style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(
                            Color.fromARGB(183, 52, 0, 142)),
                        textStyle: MaterialStateProperty.all(
                            TextStyle(color: Color.fromARGB(255, 0, 0, 0))),
                        shadowColor: MaterialStateProperty.all(
                            const Color.fromARGB(255, 255, 255, 255)
                                .withOpacity(0.3)),
                        elevation: MaterialStateProperty.all(4),
                        minimumSize: MaterialStateProperty.all(
                            Size(MediaQuery.of(context).size.width / 2.5, 50)),
                        shape: MaterialStateProperty.all(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)))),
                    child: const Text(
                      'Create',
                      style: TextStyle(color: Colors.black),
                    )),
                ElevatedButton(
                    onPressed: () => Navigator.of(context).push(
                        MaterialPageRoute(
                            builder: (context) => joinroom_screen())),
                    style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(
                            Color.fromARGB(183, 52, 0, 142)),
                        textStyle: MaterialStateProperty.all(
                            TextStyle(color: Colors.black)),
                        minimumSize: MaterialStateProperty.all(
                            Size(MediaQuery.of(context).size.width / 2.5, 50)),
                        shape: MaterialStateProperty.all(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10))),
                        shadowColor: MaterialStateProperty.all(
                            const Color.fromARGB(255, 255, 254, 254)
                                .withOpacity(0.3)),
                        elevation: MaterialStateProperty.all(4)),
                    child: const Text(
                      'Join',
                      style: TextStyle(color: Colors.black),
                    )),
              ],
            )
          ]),
    );
  }
}

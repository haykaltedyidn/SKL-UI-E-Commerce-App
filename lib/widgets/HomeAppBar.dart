import 'package:badges/badges.dart' as badges;
import 'package:flutter/material.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.all(25),
      child: Row(
        children: [
          const Icon(
            Icons.sort,
            size: 30,
            color: Color.fromARGB(255, 0, 0, 0),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 20),
            child: Text(
              'BelanjaKu',
              style: TextStyle(
                  fontSize: 23,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 0, 0, 0)),
            ),
          ),
          const Spacer(),
          badges.Badge(
            badgeStyle: const badges.BadgeStyle(
              badgeColor: Colors.red,
              padding: EdgeInsets.all(7),
            ),
            badgeContent: const Text(
              '3',
              style: TextStyle(color: Colors.white),
            ),
            child: InkWell(
              onTap: () {
                Navigator.pushNamed(context, "messageListPage");
              },
              child: const Icon(
                // Icons.shopping_bag_outlined,
                Icons.chat_outlined,
                size: 32,
                color: Color.fromARGB(255, 0, 0, 0),
              ),
            ),
          )
        ],
      ),
    );
  }
}

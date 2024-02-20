import 'dart:ui';

import 'package:flutter/material.dart';

class CardsTable extends StatelessWidget {
  const CardsTable({super.key});

  @override
  Widget build(BuildContext context) {
    return Table(
      children: const [
        TableRow(
          children: [
            _SingleCard(
              color: Colors.blue,
              icon: Icons.border_all,
              text: 'General',
            ),
            _SingleCard(
              color: Colors.pink,
              icon: Icons.car_rental,
              text: 'Transport',
            ),
          ],
        ),
        TableRow(
          children: [
            _SingleCard(
              color: Colors.purple,
              icon: Icons.shop,
              text: 'Shopping',
            ),
            _SingleCard(
              color: Colors.orange,
              icon: Icons.insert_drive_file,
              text: 'Bills',
            ),
          ],
        ),
        TableRow(
          children: [
            _SingleCard(
              color: Colors.blueAccent,
              icon: Icons.movie,
              text: 'Entertainment',
            ),
            _SingleCard(
              color: Colors.green,
              icon: Icons.food_bank,
              text: 'Grocery',
            ),
          ],
        ),
        TableRow(
          children: [
            _SingleCard(
              color: Colors.red,
              icon: Icons.attach_money,
              text: 'Money',
            ),
            _SingleCard(
              color: Colors.teal,
              icon: Icons.airplanemode_active,
              text: 'Travel',
            ),
          ],
        ),
        TableRow(
          children: [
            _SingleCard(
              color: Colors.red,
              icon: Icons.attach_money,
              text: 'Money',
            ),
            _SingleCard(
              color: Colors.teal,
              icon: Icons.airplanemode_active,
              text: 'Travel',
            ),
          ],
        ),
        TableRow(
          children: [
            _SingleCard(
              color: Colors.red,
              icon: Icons.attach_money,
              text: 'Money',
            ),
            _SingleCard(
              color: Colors.teal,
              icon: Icons.airplanemode_active,
              text: 'Travel',
            ),
          ],
        ),
      ],
    );
  }
}

class _SingleCard extends StatelessWidget {
  final Color color;
  final IconData icon;
  final String text;

  const _SingleCard({
    required this.color,
    required this.icon,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return _CardBackGround(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
            backgroundColor: color,
            radius: 30,
            child: Icon(
              icon,
              color: Colors.white,
              size: 30,
            ),
          ),
          const SizedBox(height: 10),
          Text(
            text,
            style: TextStyle(color: color, fontSize: 20),
          ),
        ],
      ),
    );
  }
}

class _CardBackGround extends StatelessWidget {
  const _CardBackGround({required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(15),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
          child: Container(
            height: 180,
            decoration: BoxDecoration(
              color: const Color.fromRGBO(62, 66, 107, 0.7),
              borderRadius: BorderRadius.circular(20),
            ),
            child: child,
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class BasicDesingScreen extends StatelessWidget {
  const BasicDesingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Column(
        children: [
          // Imagen
          const Image(
            image: AssetImage('assets/landscape.jpg'),
          ),
          // Titulo Section
          const Title(),
          // Bottons Section
          const BottonSection(),

          // description
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
            child: const Text(
                'Anim do consectetur sunt anim. Cupidatat do quis laboris in incididunt voluptate qui eiusmod ipsum eu est. Proident qui do reprehenderit nostrud eu. Nisi eu fugiat nisi et quis duis excepteur magna aute ut. Cupidatat minim et exercitation proident consequat. Ut labore esse aliquip fugiat irure. Aliquip sint irure do culpa proident est fugiat est dolor dolore nostrud. Voluptate cupidatat in aliquip id do occaecat. Est esse adipisicing dolore consequat sint.'),
          )
        ],
      ),
    );
  }
}

class Title extends StatelessWidget {
  const Title({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
      child: Row(
        children: [
          const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Oeschinen Lake Campground',
                  style: TextStyle(fontWeight: FontWeight.bold)),
              Text('Kandersteg, Switzerland',
                  style: TextStyle(color: Colors.black45))
            ],
          ),
          Expanded(child: Container()),
          const Icon(Icons.star, color: Colors.red),
          const Text('41')
        ],
      ),
    );
  }
}

class BottonSection extends StatelessWidget {
  const BottonSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 30),
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          CustonBotton(icon: Icons.call, text: 'CALL'),
          CustonBotton(icon: Icons.near_me, text: 'ROUTE'),
          CustonBotton(icon: Icons.share, text: 'SHARE'),
        ],
      ),
    );
  }
}

class CustonBotton extends StatelessWidget {
  const CustonBotton({
    super.key,
    required this.icon,
    required this.text,
  });

  final IconData icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(icon, color: Colors.blue, size: 30),
        Text(text, style: const TextStyle(color: Colors.blue))
      ],
    );
  }
}

import 'package:flutter/material.dart';

class BackGround extends StatelessWidget {
  const BackGround({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const boxDecoration = BoxDecoration(
      gradient: LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        colors: [
          Color(0xff2E305F),
          Color(0xff202333),
        ],
      ),
    );
    return Scaffold(
        body: Stack(
      children: [
        // purple gradient
        Container(
          decoration: boxDecoration,
        ),

        // Pink box
        const Positioned(top: -100, left: -30, child: _PinkBox()),
      ],
    ));
  }
}

class _PinkBox extends StatelessWidget {
  const _PinkBox();

  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: -0.5,
      child: Container(
        width: 360,
        height: 360,
        decoration: BoxDecoration(
          gradient: const LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color.fromRGBO(236, 98, 188, 1),
              Color.fromRGBO(241, 142, 172, 1),
            ],
          ),
          borderRadius: BorderRadius.circular(80),
        ),
      ),
    );
  }
}

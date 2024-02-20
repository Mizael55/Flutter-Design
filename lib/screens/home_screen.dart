import 'package:disenos/widget/background.dart';
import 'package:disenos/widget/cards_table.dart';
import 'package:disenos/widget/custon_bottom_navigation.dart';
import 'package:disenos/widget/pageTitle.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Stack(
        children: [
          // Background
          BackGround(),

          // home body
          _HomeBody(),
        ],
      ),
      bottomNavigationBar: CustomBottomNavigation(),
    );
  }
}

class _HomeBody extends StatelessWidget {
  const _HomeBody();

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: [
          // Titles
          PageTitle(),

          // _CardTable
          CardsTable(),
        ],
      ),
    );
  }
}

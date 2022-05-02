// ignore_for_file: prefer_const_constructors

import 'package:disenos_1/widges/background.dart';
import 'package:disenos_1/widges/card_table.dart';
import 'package:disenos_1/widges/custom_botom_navigation.dart';
import 'package:disenos_1/widges/page_title.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          //Background
          Background(),
          //HomeBody
          _HomeBody()
        ],
      ),
      bottomNavigationBar: CustomBottomNavigation(),
    );
  }
}

class _HomeBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          //Titulos
          PageTittle(),
          // Card Table
          CardTable(),
        ],
      ),
    );
  }
}

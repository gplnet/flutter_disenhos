// ignore_for_file: prefer_const_constructors, unnecessary_this

import 'package:flutter/material.dart';

class BasicDesignScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      // ignore: prefer_const_literals_to_create_immutables
      children: [
        Image(
          image: AssetImage('assets/landscape.jpg'),
        ),
        Title(),
        BottonSection(),
        Container(
          margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Text(
              'Id nisi pariatur amet culpa laboris esse aliqua aliquip aute fugiat. Veniam fugiat sit consequat non cillum officia aute. In sint aute aliqua duis officia fugiat.'),
        )
      ],
    ));
  }
}

class Title extends StatelessWidget {
  const Title({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
      child: Row(
        //mainAxisAlignment: MainAxisAlignment.spaceBetween,
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              Text(
                'Oealskasdjasdjakdhkjash asdkajhsdkjhsdkj',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text(
                'Oealskasdjaskjash asdkajhsdkjhsdkj',
                style: TextStyle(color: Colors.black45),
              ),
            ],
          ),
          Expanded(child: Container()),
          Icon(Icons.star, color: Colors.red),
          Text('41'),
        ],
      ),
    );
  }
}

class BottonSection extends StatelessWidget {
  const BottonSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          CustomButton(icon: Icons.call, texto: 'Call'),
          CustomButton(icon: Icons.router_sharp, texto: 'Route'),
          CustomButton(icon: Icons.share_arrival_time, texto: 'share'),
        ],
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  final IconData icon;
  final String texto;

  const CustomButton({
    Key? key,
    required this.icon,
    required this.texto,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      // ignore: prefer_const_literals_to_create_immutables
      children: [
        Icon(
          this.icon,
          color: Colors.blue,
          size: 30,
        ),
        Text(
          this.texto,
          style: TextStyle(color: Colors.blue),
        )
      ],
    );
  }
}

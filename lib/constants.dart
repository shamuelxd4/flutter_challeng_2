import 'package:flutter/material.dart';

//CARD DE MESCLA DE COLORES EN EL PRIMER CARD
List<Color> degradado = <Color>[
  Color(0xffd4e9fd),
  Color(0xffe6d6e4),
  Color(0xfff3ccbe),
  Color(0xfff9cba0),
  Color(0xfffdd384),
  Color(0xffffde73),
];

Gradient gradient = LinearGradient(
  begin: Alignment.topCenter,
  end: Alignment.bottomCenter,
  colors: degradado, // red to yellow
);

var padding2 = Padding(
  padding: EdgeInsets.only(left: 45),
  child: Container(
    width: 2.5,
    height: 35,
    color: Color(0xfff3f4f7),
  ),
);

import 'package:flutter/material.dart';

class Horario extends StatelessWidget {
  // const Horario({Key? key}) : super(key: key);
  const Horario({
    required this.title,
    required this.subtitle,
    required this.icono,
    required this.preg,
  });
  final String title;
  final String subtitle;
  final Icon icono;
  final bool preg;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 13),
      child: ListTile(
        title: Text(
          "$title",
          style: preg == true
              ? TextStyle(
                  fontSize: 15,
                  color: Colors.black38,
                )
              : TextStyle(
                  fontSize: 25,
                  color: Colors.black,
                ),
        ),
        leading: icono,
        subtitle: Text(
          "$subtitle",
          style: preg == false
              ? TextStyle(
                  fontSize: 15,
                  color: Colors.black38,
                )
              : TextStyle(
                  fontSize: 25,
                  color: Colors.black,
                ),
        ),
      ),
    );
  }
}

import 'package:flutter_proyect_1/horario.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:flutter/material.dart';
import 'constants.dart';
//SAMUEL QUENTA CARVAJAL
class PageInit extends StatefulWidget {
  @override
  _PageInitState createState() => _PageInitState();
}

class _PageInitState extends State<PageInit> {
  bool stado = false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xffecf0f3),
        body: ListView(
          children: [
            Container(
              height: 220,
              margin: EdgeInsets.all(20),
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                gradient: gradient,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 40),
                    width: 180,
                    child: Text(
                      "you did it! here you can manage you alarm, change time and other things.",
                      style: TextStyle(
                        fontSize: 23,
                        height: 1.2,
                      ),
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 8, right: 8),
                        child: Icon(
                          Icons.close,
                          size: 30,
                        ),
                      ),
                      Container(
                        child: Image.asset(
                          'assets/images/people2.png',
                          width: 125,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height,
              margin: EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 25, vertical: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "alarm",
                          style: TextStyle(
                            color: Color(0xffc3c8cc),
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        FlutterSwitch(
                          activeColor: Colors.black,
                          showOnOff: true,
                          value: stado,
                          onToggle: (val) {
                            setState(() {
                              stado = val;
                            });
                          },
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 30),
                    child: Divider(
                      thickness: 2,
                      color: Color(0xfff3f4f7),
                    ),
                  ),
                  Horario(
                    preg: true,
                    icono: Icon(
                      Icons.nightlight,
                      size: 35,
                      color: Colors.black,
                    ),
                    subtitle: "23:30",
                    title: "to bed",
                  ),
                  padding2,
                  Padding(
                    padding: EdgeInsets.only(left: 17),
                    child: ListTile(
                      leading: Icon(Icons.alarm_add),
                      trailing: Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.black,
                      ),
                      minVerticalPadding: 18,
                      subtitle: Text(
                        '8 hurs sleep',
                        style: TextStyle(fontSize: 18),
                      ),
                    ),
                  ),
                  padding2,
                  Horario(
                    preg: false,
                    icono: Icon(
                      Icons.star_border,
                      size: 35,
                      color: Colors.black,
                    ),
                    title: "07:30",
                    subtitle: "wake up",
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

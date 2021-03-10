import 'package:flutter/material.dart';
import 'package:formatics_alpha/components/components.dart';
import 'package:formatics_alpha/constants/constants.dart';

class GeometryPage extends StatefulWidget {
  @override
  _GeometryPageState createState() => _GeometryPageState();
}

class _GeometryPageState extends State<GeometryPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: SafeArea(
        child: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return <Widget>[
              PageAppBar(
                title: 'Geometry',
              )
            ];
          },
          body: SingleChildScrollView(
            child: Column(
              children: [
                CardButton(
                  buttonname: 'Cone',
                  info:
                      'Here you will find all the\nformulas of Simple & Compound Interest',
                ),
                CardButton(
                  buttonname: 'Cylinder',
                  info:
                      'Here you will find all the\nformulas of Shares & Dividends',
                ),
                CardButton(
                  buttonname: 'Isosceles Triangle',
                ),
                CardButton(
                  buttonname: 'Equilateral Triangle',
                ),
                CardButton(
                  buttonname: 'Square',
                ),
                CardButton(
                  buttonname: 'Sphere',
                ),
                CardButton(
                  buttonname: 'Rectangle',
                ),
                CardButton(
                  buttonname: 'Rhombus',
                ),
                CardButton(
                  buttonname: 'Parallelogram',
                ),
                CardButton(
                  buttonname: 'Trapizoid',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

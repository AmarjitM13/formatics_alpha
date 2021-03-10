import 'package:flutter/material.dart';
import 'package:formatics_alpha/components/components.dart';
import 'package:formatics_alpha/constants/constants.dart';

class AlgebraPage extends StatefulWidget {
  @override
  _AlgebraPageState createState() => _AlgebraPageState();
}

class _AlgebraPageState extends State<AlgebraPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: SafeArea(
        child: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return <Widget>[
              PageAppBar(
                title: 'Algebra',
              )
            ];
          },
          body: SingleChildScrollView(
            child: Column(
              children: [
                CardButton(
                  buttonname: 'Basic Formulas',
                  info: 'Here you will find all the\nbasic formulas of algebra',
                ),
                CardButton(
                  buttonname: 'Laws of Indices',
                  info: 'Here you will find all the\nformulas of indices',
                ),
                CardButton(
                  buttonname: 'Logarithm',
                ),
                CardButton(
                  buttonname: 'Complex Numbers',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

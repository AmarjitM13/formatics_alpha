import 'package:flutter/material.dart';
import 'package:formatics_alpha/components/components.dart';
import 'package:formatics_alpha/constants/constants.dart';

class ArithmeticPage extends StatefulWidget {
  @override
  _ArithmeticPageState createState() => _ArithmeticPageState();
}

class _ArithmeticPageState extends State<ArithmeticPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: SafeArea(
        child: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return <Widget>[
              PageAppBar(
                title: 'Arithmetic',
              )
            ];
          },
          body: SingleChildScrollView(
            child: Column(
              children: [
                CardButton(
                  buttonname: 'Simple &\nCompound Interest',
                  info:
                      'Here you will find all the\nformulas of Simple & Compound Interest',
                ),
                CardButton(
                  buttonname: 'Shares & Dividends',
                  info:
                      'Here you will find all the\nformulas of Shares & Dividends',
                ),
                CardButton(
                  buttonname: 'Profit & Loss',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

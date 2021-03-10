import 'package:flutter/material.dart';
import 'package:formatics_alpha/constants/constants.dart';
import 'package:formatics_alpha/home_view/app_bar.dart';
import 'package:formatics_alpha/home_view/carousel_view.dart';
import 'package:formatics_alpha/home_view/custom_drawer.dart';
import 'package:formatics_alpha/home_view/search_box.dart';
import 'package:formatics_alpha/home_view/solutions_card_view.dart';

class HomeView extends StatefulWidget {
  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      drawer: CustomDrawer(),
      body: SafeArea(
        child: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return <Widget>[CustomAppBar()];
          },
          body: SingleChildScrollView(
            child: Column(
              children: [
                SearchBox(),
                Heading(heading: 'Formulas'),
                CarouselView(),
                Heading(heading: 'Solutions'),
                SolutionsCardView(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class Heading extends StatelessWidget {
  final String heading;
  Heading({this.heading});
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topLeft,
      child: Padding(
        padding: const EdgeInsets.only(left: 18),
        child: Text(
          '$heading',
          style: TextStyle(
            color: kFontColor,
            fontSize: 20,
            fontWeight: FontWeight.bold,
            letterSpacing: 0.4,
          ),
        ),
      ),
    );
  }
}

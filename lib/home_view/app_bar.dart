import 'package:flutter/material.dart';
import 'package:formatics_alpha/constants/constants.dart';

class CustomAppBar extends StatefulWidget {
  @override
  _CustomAppBarState createState() => _CustomAppBarState();
}

class _CustomAppBarState extends State<CustomAppBar> {
  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      flexibleSpace: Row(
        children: [
          Container(
            width: MediaQuery.of(context).size.width / 6,
            child: GestureDetector(
              child: Center(
                child: Icon(
                  Icons.menu_rounded,
                  color: kFontColor,
                  size: 40,
                ),
              ),
              onTap: () => Scaffold.of(context).openDrawer(),
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width / 1.5,
            child: Center(
              child: Text(
                'Formatics',
                style: TextStyle(
                  color: kFontColor,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 0.9,
                ),
              ),
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width / 6,
            child: GestureDetector(
              child: Center(
                child: Image(
                  image: AssetImage('assets/icons/profile.png'),
                  height: 50,
                  width: 50,
                ),
              ),
              onTap: () => Scaffold.of(context).openDrawer(),
            ),
          ),
        ],
      ),
      expandedHeight: 70,
      collapsedHeight: 70,
      elevation: 0,
      backgroundColor: kSecondaryColor,
      automaticallyImplyLeading: false,
      floating: true,
      snap: true,
      pinned: false,
    );
  }
}

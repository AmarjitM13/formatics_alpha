import 'package:flutter/material.dart';
import 'package:formatics_alpha/constants/constants.dart';

class SolutionsCardView extends StatefulWidget {
  @override
  _SolutionsCardViewState createState() => _SolutionsCardViewState();
}

class _SolutionsCardViewState extends State<SolutionsCardView> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return Container();
                    },
                  ),
                );
              },
              child: Container(
                decoration: BoxDecoration(
                  color: kSecondaryColor,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 5,
                      spreadRadius: 2,
                      color: Colors.black.withOpacity(0.12),
                    ),
                  ],
                ),
                height: 240,
                width: 364,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 5, right: 5, top: 5),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.blue[500].withOpacity(0.8),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        height: 180,
                      ),
                    ),
                    Align(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 7, top: 15),
                        child: Text(
                          'Class 10 WBBSE',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      ),
                      alignment: Alignment.centerLeft,
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return Container();
                    },
                  ),
                );
              },
              child: Container(
                decoration: BoxDecoration(
                  color: kSecondaryColor,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 5,
                      spreadRadius: 2,
                      color: Colors.black.withOpacity(0.12),
                    ),
                  ],
                ),
                height: 240,
                width: 364,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 5, right: 5, top: 5),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.blue[500].withOpacity(0.8),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        height: 180,
                      ),
                    ),
                    Align(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 7, top: 15),
                        child: Text(
                          'Class 10 ICSE',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      ),
                      alignment: Alignment.centerLeft,
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return Container();
                    },
                  ),
                );
              },
              child: Container(
                decoration: BoxDecoration(
                  color: kSecondaryColor,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 5,
                      spreadRadius: 2,
                      color: Colors.black.withOpacity(0.12),
                    ),
                  ],
                ),
                height: 240,
                width: 364,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 5, right: 5, top: 5),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.blue[500].withOpacity(0.8),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        height: 180,
                      ),
                    ),
                    Align(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 7, top: 15),
                        child: Text(
                          'Class 12 WBCHSE',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      ),
                      alignment: Alignment.centerLeft,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

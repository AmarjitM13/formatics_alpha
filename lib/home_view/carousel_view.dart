import 'package:animations/animations.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:formatics_alpha/algebra_page/algebra_page.dart';
import 'package:formatics_alpha/arithmetic_page/arithmetic_page.dart';
import 'package:formatics_alpha/constants/constants.dart';
import 'package:formatics_alpha/geometry_page/geometry_page.dart';
import 'package:formatics_alpha/page_transitions.dart';

class CarouselView extends StatefulWidget {
  @override
  _CarouselViewState createState() => _CarouselViewState();
}

class _CarouselViewState extends State<CarouselView> {
  int _currentIndex = 0;

  List cardList = [
    CarouselCard(
      name: 'Arithmetic',
      pageroute: ArithmeticPage(),
      colorlist: [
        Color(0xffff4000),
        Color(0xffffcc66),
      ],
    ),
    CarouselCard(
      name: 'Algebra',
      pageroute: AlgebraPage(),
      colorlist: [
        Colors.blue,
        Colors.lightBlueAccent,
      ],
    ),
    CarouselCard(
      name: 'Geometry',
      pageroute: GeometryPage(),
      colorlist: [
        Color(0xffff4000),
        Color(0xffffcc66),
      ],
    ),
    CarouselCard(
      name: 'Calculus',
      pageroute: AlgebraPage(),
      colorlist: [
        Colors.blue[500],
        Colors.lightBlueAccent[100],
      ],
    ),
    CarouselCard(
      name: 'Trigonometry',
      pageroute: AlgebraPage(),
      colorlist: [
        Colors.green,
        Colors.lightGreen,
      ],
    ),
    CarouselCard(
      name: 'Vector',
      pageroute: AlgebraPage(),
      colorlist: [
        Colors.yellow,
        Colors.yellowAccent,
      ],
    ),
  ];

  List<T> map<T>(List list, Function handler) {
    List<T> result = [];
    for (var i = 0; i < list.length; i++) {
      result.add(handler(i, list[i]));
    }
    return result;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Container(
          width: MediaQuery.of(context).size.width,
          child: Column(
            children: <Widget>[
              CarouselSlider(
                options: CarouselOptions(
                  height: 200.0,
                  enlargeCenterPage: true,
                  autoPlay: true,
                  autoPlayInterval: Duration(seconds: 3),
                  autoPlayAnimationDuration: Duration(milliseconds: 800),
                  autoPlayCurve: Curves.fastOutSlowIn,
                  pauseAutoPlayOnTouch: true,
                  aspectRatio: 2.0,
                  onPageChanged: (index, reason) {
                    setState(() {
                      _currentIndex = index;
                    });
                  },
                ),
                items: cardList.map((card) {
                  return Builder(builder: (BuildContext context) {
                    return Container(
                      height: MediaQuery.of(context).size.height * 0.30,
                      width: MediaQuery.of(context).size.width,
                      child: card,
                    );
                  });
                }).toList(),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: map<Widget>(cardList, (index, url) {
                  return Container(
                    width: 10.0,
                    height: 10.0,
                    margin:
                        EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: _currentIndex == index
                          ? Colors.blueAccent
                          : Colors.grey,
                    ),
                  );
                }),
              )
            ],
          )),
    );
  }
}

class CarouselCard extends StatefulWidget {
  final String name;
  final Widget pageroute;
  final List<Color> colorlist;
  CarouselCard({this.name, this.pageroute, this.colorlist});
  @override
  _CarouselCardState createState() => _CarouselCardState();
}

class _CarouselCardState extends State<CarouselCard> {
  @override
  Widget build(BuildContext context) {
    return OpenContainer(
      transitionDuration: Duration(milliseconds: 500),
      closedElevation: 0,
      closedBuilder: (context, action) {
        return Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                stops: [0.3, 1],
                colors: widget.colorlist),
          ),
          child: Center(
              child: Text(
            '${widget.name}',
            style: TextStyle(
              fontSize: 45,
              color: kSecondaryColor,
            ),
          )),
        );
      },
      openBuilder: (context, action) {
        return widget.pageroute;
      },
    );
  }
}

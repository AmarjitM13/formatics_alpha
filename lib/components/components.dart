import 'package:flutter/material.dart';
import 'package:formatics_alpha/constants/constants.dart';

class CardButton extends StatefulWidget {
  final String buttonname;
  final String info;
  final Widget navigateTo;
  CardButton({this.buttonname, this.info, this.navigateTo});
  @override
  _CardButtonState createState() => _CardButtonState();
}

class _CardButtonState extends State<CardButton> {
  bool liked = true;

  openDialogBox() {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(10))),
            title: Text(
              '${widget.buttonname}',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            content: SingleChildScrollView(
              child: ListBody(
                children: <Widget>[
                  Text('${widget.info}'),
                ],
              ),
            ),
            actions: <Widget>[
              TextButton(
                child: Text(
                  'Close',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ],
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
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
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return widget.navigateTo;
                      },
                    ),
                  );
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.blue[500].withOpacity(0.8),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  height: 180,
                  child: Center(
                    child: Text(
                      '${widget.buttonname}',
                      style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: kSecondaryColor),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      openDialogBox();
                    },
                    child: Icon(
                      Icons.info_outline_rounded,
                      color: Colors.black54,
                      size: 35,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        liked ? liked = false : liked = true;
                      });
                    },
                    child: Icon(
                      liked
                          ? Icons.favorite_border_rounded
                          : Icons.favorite_rounded,
                      color: liked ? Colors.black54 : Colors.red,
                      size: 35,
                    ),
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

class PageAppBar extends StatefulWidget {
  final String title;
  PageAppBar({this.title});
  @override
  _PageAppBarState createState() => _PageAppBarState();
}

class _PageAppBarState extends State<PageAppBar> {
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
                  Icons.arrow_back_rounded,
                  color: kSecondaryColor,
                  size: 40,
                ),
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width / 1.5,
            child: Center(
              child: Text(
                '${widget.title}',
                style: TextStyle(
                  color: kSecondaryColor,
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 0.7,
                ),
              ),
            ),
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width / 6,
          ),
        ],
      ),
      expandedHeight: 70,
      collapsedHeight: 70,
      elevation: 0,
      backgroundColor: Colors.lightBlue,
      automaticallyImplyLeading: false,
      floating: true,
      snap: true,
      pinned: false,
    );
  }
}

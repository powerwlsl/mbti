import 'package:flutter/material.dart';
import 'package:mbti/constants.dart';

class ExpandTitleContainer extends StatelessWidget {
  final String title;
  final Function toggleExpand;
  final Image icon;

  bool expanded;
  ExpandTitleContainer({
    this.title,
    this.toggleExpand,
    this.expanded,
    this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.symmetric(horizontal: 10, vertical: 3),
      child: ListTile(
        contentPadding: EdgeInsets.only(left: 0.0, right: 0.0),
        title: Row(
          children: <Widget>[
            // icon,
            SizedBox(width: 10),
            Text(
              title,
//            textAlign: TextAlign.center,
              style: kPrimaryMediumTextStyle,
            ),
          ],
        ),
        trailing: expanded
            ? IconButton(
                icon: Icon(Icons.expand_less),
                onPressed: toggleExpand,
              )
            : IconButton(
                icon: Icon(Icons.expand_more),
                onPressed: toggleExpand,
              ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'constants.dart';

class CategoryCard extends StatelessWidget {
  final String svgSrc;
  final String title;
  final Function press;
  const CategoryCard({Key? key, required this.svgSrc, required this.title, required this.press}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
        borderRadius: BorderRadius.circular(13),
        child:Container(

          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(13),
            boxShadow: [BoxShadow(
              offset: Offset(0,17),
              blurRadius: 17,
              spreadRadius: -23,
              color: kShadowColor,
            ),
            ],
          ),
          child: Material(
            color: Colors.transparent,
            child: InkWell(
              onTap: press(),
              child: Padding(
                padding: EdgeInsets.all(20),
                child: Column(
                  children: <Widget>[
                    Spacer(),
                    SvgPicture.asset(this.svgSrc),
                    Spacer(),
                    Text(
                      this.title,
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.title?.copyWith(fontSize: 15),
                    ),
                  ],
                ),
              ),
            ),
          ),
        )
    );
  }
}
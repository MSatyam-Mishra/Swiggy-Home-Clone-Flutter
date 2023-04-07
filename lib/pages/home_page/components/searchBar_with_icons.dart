import 'package:flutter/material.dart';
import 'package:swiggy_clone/constants.dart';

class SearchBarWithIcons extends StatelessWidget {
  const SearchBarWithIcons({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: defaultPadding, right: defaultPadding),
      height: 45,
      width: size.width - defaultPadding * 2,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15), color: elementBgColor),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding:
                EdgeInsets.only(top: defaultPadding, bottom: defaultPadding),
            child:
                Text("Search for restaurant, item or more", style: textStyle),
          ),
          Container(
              child: Row(
            children: [
              Icon(
                Icons.search,
                size: 20,
                color: textColor,
              ),
              Padding(
                padding: EdgeInsets.only(
                    left: defaultPadding / 2, right: defaultPadding / 2),
                child: Container(
                  width: 1,
                  height: 15,
                  color: textColor,
                ),
              ),
              Icon(
                Icons.mic,
                size: 20,
                color: specialText,
              )
            ],
          ))
        ],
      ),
    );
  }
}

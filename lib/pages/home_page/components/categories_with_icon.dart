import 'package:flutter/material.dart';
import 'package:swiggy_clone/constants.dart';
import 'package:swiggy_clone/model/category_data.dart';

class CategoriesWithIcon extends StatelessWidget {
  const CategoriesWithIcon({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size.height * 0.35,
      child: GridView.builder(
        itemCount: categories.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            crossAxisSpacing: defaultPadding - 8,
            mainAxisSpacing: defaultPadding - 5),
        itemBuilder: (context, index) {
          return Container(
            height: 125,
            //padding: EdgeInsets.only(top: 5.1),
            child: Categorycard(
              size: size,
              cat: categories[index],
            ),
          );
        },

        //             ),
      ),
    );
  }
}

class Categorycard extends StatelessWidget {
  const Categorycard({
    Key? key,
    required this.size,
    required this.cat,
  }) : super(key: key);

  final Size size;
  final CustomCats cat;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
            padding: EdgeInsets.all(5),
            width: (size.width / 3) - (defaultPadding * 2),
            height: 90,
            decoration: BoxDecoration(
                color: elementBgColor, borderRadius: BorderRadius.circular(15)),
            child: Image.asset(
              cat.catImage,
              fit: BoxFit.cover,
            )),
        SizedBox(
          height: 5,
        ),
        Text(
          cat.catName,
          style: TextStyle(
              color: Colors.black, fontSize: 16, fontWeight: FontWeight.w900),
        )
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:swiggy_clone/constants.dart';

class SwiggyOneOffer extends StatelessWidget {
  const SwiggyOneOffer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: defaultPadding, right: defaultPadding),
      child: Container(
        height: 60,
        padding: EdgeInsets.only(
            top: defaultPadding - 5, bottom: defaultPadding - 5),
        decoration: BoxDecoration(
            border: Border(
                top: BorderSide(color: elementBgColor, width: 1),
                bottom: BorderSide(color: elementBgColor, width: 1))),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset(
              "assets/icons/swiggy-two.png",
              fit: BoxFit.cover,
              scale: 2.5,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                RichText(
                  text: TextSpan(style: subHeadingStyle, children: <TextSpan>[
                    TextSpan(text: "Pay "),
                    TextSpan(
                        text: "₹ 0 delivery fee ",
                        style: subHeadingStyle.copyWith(color: specialText)),
                    TextSpan(text: "on food")
                  ]),
                ),
                Text("Get One @₹1199 ₹399/3month", style: subHeadingStyle)
              ],
            ),
            Container(
                height: 40,
                width: 80,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                      color: Color.fromARGB(40, 235, 73, 73), width: 1),
                  color: Color.fromARGB(33, 235, 73, 73),
                ),
                child: Center(
                  child: Text(
                      style: subHeadingStyle.copyWith(color: specialText),
                      "Buy Now"),
                )),
          ],
        ),
      ),
    );
  }
}

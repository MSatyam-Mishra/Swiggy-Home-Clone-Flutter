import 'package:flutter/material.dart';
import 'package:swiggy_clone/constants.dart';

class HomeTextIconWithUserIconAddress extends StatelessWidget {
  const HomeTextIconWithUserIconAddress({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: defaultPadding, right: defaultPadding),
      child: Row(children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Icon(
                    Icons.home,
                    color: specialText,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    "Home",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w800,
                        fontSize: 20),
                  ),
                  Text("")
                ],
              ),
              Text(
                "Burj Khalifa, 2nd Floor, Room Number 203, Dubai,UAE",
                style: TextStyle(color: textColor, fontSize: 15),
              )
            ],
          ),
        ),
        Container(
            // padding: EdgeInsets.all(1),
            height: 30,
            width: 30,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                gradient: LinearGradient(colors: [
                  Color.fromARGB(255, 104, 104, 104),
                  Color.fromARGB(255, 56, 55, 55)
                ])),
            child: Icon(
              Icons.people_alt,
              color: Colors.white,
            )),
      ]),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:swiggy_clone/constants.dart';

import 'package:swiggy_clone/model/user_data.dart';
import 'package:swiggy_clone/pages/home_page/components/home_text_icone_with_user_icone.dart';

import 'components/categories_with_icon.dart';
import 'components/offer_banner_list_section.dart';
import 'components/searchBar_with_icons.dart';
import 'components/swiggy_one_offer.dart';

class HomePage extends StatefulWidget {
  final UserData userdata;

  HomePage({super.key, required this.userdata});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    var buttonChangeColor = Colors.grey;

    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
          elevation: 15,
          iconSize: 28,
          //selectedFontSize: 15,
          selectedLabelStyle:
              TextStyle(fontSize: 14, fontWeight: FontWeight.w900),
          unselectedLabelStyle:
              TextStyle(fontSize: 14, fontWeight: FontWeight.w900),
          unselectedFontSize: 15,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Colors.black,
          currentIndex: currentIndex,
          onTap: (index) => setState(() {
                currentIndex = index;
              }),
          items: [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.food_bank_outlined,
                ),
                label: "Swiggy",
                backgroundColor: Colors.black),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.local_pizza_outlined,
                ),
                label: "Food",
                backgroundColor: Colors.black),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.shopping_basket_outlined,
                ),
                label: "Instmart",
                backgroundColor: Colors.black),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.table_bar_outlined,
                ),
                label: "Dineout",
                backgroundColor: Colors.black),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.save_outlined,
                ),
                label: "genie",
                backgroundColor: Colors.black),
          ]),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(
            top: 45,
          ),
          child: Column(children: [
            HomeTextIconWithUserIconAddress(),
            SizedBox(
              height: defaultPadding,
            ),
            SearchBarWithIcons(size: size),
            //SizedBox(,),
            //

            CategoriesWithIcon(size: size),
            SwiggyOneOffer(),
            SizedBox(
              height: defaultPadding - 3,
            ),
            OfferBannerList(),
            SizedBox(
              height: defaultPadding,
            ),
            Container(
              decoration: BoxDecoration(
                color: elementBgColor,
              ),
              height: 1000,
              child: Column(children: [
                Padding(
                  padding: EdgeInsets.only(top: 30, left: 30, right: 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Center(
                        child: Container(
                          decoration: BoxDecoration(color: Colors.grey),
                          width: 50,
                          height: 1.5,
                        ),
                      ),
                      Text(
                        "Discover Swiggy",
                        style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.w900,
                            color: Color.fromARGB(255, 128, 127, 127)),
                      ),
                      Center(
                        child: Container(
                          decoration: BoxDecoration(color: Colors.grey),
                          width: 50,
                          height: 1.5,
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: defaultPadding,
                ),
                Padding(
                  padding: EdgeInsets.only(
                      left: defaultPadding,
                      right: defaultPadding,
                      top: defaultPadding),
                  child: Container(
                    height: 500,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(29),
                      color: Colors.white,
                    ),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Center(
                            child: ClipRRect(
                                child: Image.asset(
                                  "assets/images/page-img.jpg",
                                  fit: BoxFit.cover,
                                ),
                                borderRadius: BorderRadius.circular(29)),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 20, top: 20),
                            child: Text(
                              "Fantastic food and\nwhere to find them!",
                              style: TextStyle(
                                  color: specialText,
                                  fontSize: 35,
                                  fontWeight: FontWeight.w900),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 20, top: 20),
                            child: Text(
                              "Cuisines from around the world",
                              style: TextStyle(
                                  color: specialText,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w400),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.all(20),
                            padding: EdgeInsets.only(left: 20, right: 20),
                            child: Center(
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Center(
                                      child: Text(
                                        "EXPLORE FOOD",
                                        style: TextStyle(
                                            color: specialText,
                                            fontSize: 20,
                                            fontWeight: FontWeight.w700),
                                      ),
                                    ),
                                    Container(
                                      padding: EdgeInsets.all(5),
                                      decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: specialText),
                                      child: Icon(
                                        Icons.coffee_outlined,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ]),
                            ),
                            height: 50,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(14),
                                border: Border.all(
                                    color: Color.fromARGB(57, 247, 99, 99),
                                    width: 1)),
                          ),
                        ]),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 30, left: 30, right: 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Center(
                        child: Container(
                          decoration: BoxDecoration(color: Colors.grey),
                          width: 50,
                          height: 1.5,
                        ),
                      ),
                      Text(
                        "DO MORE WITH SWIGGY",
                        style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.w900,
                            color: Color.fromARGB(255, 128, 127, 127)),
                      ),
                      Center(
                        child: Container(
                          decoration: BoxDecoration(color: Colors.grey),
                          width: 50,
                          height: 1.5,
                        ),
                      )
                    ],
                  ),
                ),
              ]),
            )
          ]),
        ),
      ),
    );
  }
}

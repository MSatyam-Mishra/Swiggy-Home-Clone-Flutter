import 'package:flutter/material.dart';
import 'package:swiggy_clone/constants.dart';
import 'package:swiggy_clone/model/app_data.dart';

class OfferBannerList extends StatefulWidget {
  //final OfferData offerData;

  //const OfferBannerList({super.key, required this.offerData});

  @override
  State<OfferBannerList> createState() => _OfferBannerListState();
}

class _OfferBannerListState extends State<OfferBannerList> {
  List<Container> indicators = [];

  int currentPage = 0;
  late OfferData offerD;

  Widget updateIndicator() {
    return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: offerCard.map((offerD) {
          var index = offerCard.indexOf(offerD);
          return Container(
            width: currentPage == index ? 28 : 8,
            height: currentPage == index ? 14 : 8,
            margin: EdgeInsets.symmetric(horizontal: 6),
            decoration: currentPage == index
                ? BoxDecoration(
                    borderRadius: BorderRadius.circular(11),
                    color: Colors.black)
                : BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color.fromARGB(255, 199, 199, 199)),
            child: currentPage == index
                ? Center(
                    child: Text(
                      "${(currentPage + 1).toString()}/${offerCard.length}",
                      style: TextStyle(color: Colors.white, fontSize: 12),
                    ),
                  )
                : null,
          );
        }).toList());
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: defaultPadding, right: defaultPadding),
      child: Column(
        children: [
          Container(
            height: 220,
            width: double.infinity,
            child: PageView.builder(
              itemBuilder: (context, index) {
                return OfferbannerCard(offerD: offerCard[index]);
              },
              itemCount: offerCard.length,
              controller: PageController(
                initialPage: 0,
                viewportFraction: 0.83,
              ),
              onPageChanged: (index) {
                setState(() {
                  currentPage = index;
                });
              },
            ),
          ),
          SizedBox(
            height: 10,
          ),
          updateIndicator()
        ],
      ),
    );
  }
}

class OfferbannerCard extends StatelessWidget {
  final OfferData offerD;
  const OfferbannerCard({
    Key? key,
    required this.offerD,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          alignment: Alignment.topLeft,
          children: [
            Container(
              width: 280,
              height: 220,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  gradient: offerD.bgColor),
              child: Image.asset(
                offerD.image,
                alignment: Alignment.centerRight,
                scale: 1.5,
              ),
            ),
            Padding(
              padding: EdgeInsets.all(defaultPadding),
              child: Container(
                height: 190,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      offerD.category,
                      style: offerTextStyle.copyWith(
                          color: Color.fromARGB(101, 255, 255, 255)),
                    ),
                    Text(
                      offerD.offerHeader,
                      style: designedText,
                    ),
                    Text(
                      "Flat ₹100 Off\n& free delivery",
                      style: offerTextStyle,
                    ),
                    Container(
                      height: 30,
                      width: 90,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Colors.white,
                      ),
                      child: Center(
                        child: Text(
                          offerD.category == "Instamart"
                              ? "SHOP NOW"
                              : "ORDER NOW",
                          style: subHeadingStyle.copyWith(
                              color: Colors.red, fontSize: 13),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ],
    );
  }
}

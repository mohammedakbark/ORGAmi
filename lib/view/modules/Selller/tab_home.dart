import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:orgami/utils/colors.dart';
import 'package:orgami/utils/img.dart';

class SellerHomePage extends StatelessWidget {
  const SellerHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      SizedBox(
        height: height * .1,
      ),
      Container(
        margin: const EdgeInsets.all(10),
        width: width,
        height: height * .35,
        decoration: BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.fill, image: NetworkImage(imgsellerHomeCow))),
      ),
      Card(
        color: white,
        elevation: 2,
        margin: EdgeInsets.only(left: 10, right: width / 3.5),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Todays Rate",
                style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w700, fontSize: 21),
              ),
              const Divider(),
              Text(
                "Milk: 50 rs",
                style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w600, fontSize: 21),
              ),
              Text(
                "Ghee: 500 rs",
                style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w600, fontSize: 21),
              ),
              Text(
                "Curd: 500 rs",
                style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w600, fontSize: 21),
              )
            ],
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(top: 10, left: 8),
        child: ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(backgroundColor: grey),
            child: Text(
              "View Orders",
              style: GoogleFonts.poppins(
                  color: black, fontWeight: FontWeight.w700, fontSize: 21),
            )),
      ),
      Expanded(
        child: Center(child: Image.network(imgFarmerAndCow)),
      )
    ]);
  }
}

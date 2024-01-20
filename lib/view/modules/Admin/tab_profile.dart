import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:orgami/utils/colors.dart';
import 'package:orgami/utils/text_style.dart';
import 'package:orgami/view/modules/Buyer/aboutus_page.dart';
import 'package:orgami/view/modules/Selller/aboutus_page.dart';
import 'package:orgami/view/modules/Selller/dailyupdate_page.dart';
import 'package:orgami/view/modules/Selller/notification_page.dart';
import 'package:orgami/view/widgets/custom_button.dart';

class AdminProfilePage extends StatelessWidget {
  const AdminProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.only(left: 40, right: 50),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: height / 3,
          ),
          Text(
            "Buyer ID:user@004",
            style: poppinsStyle(FontWeight.w700, 22, black),
          ),
          SizedBox(
            height: height * .09,
          ),
          InkWell(
            onTap: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => BuyerAboutUsPage()));
            },
            child: ListTile(
              leading: const Icon(
                Icons.menu_book,
                color: black,
                size: 40,
              ),
              title: Text(
                "About us",
                style: poppinsStyle(FontWeight.w700, 20, black),
              ),
            ),
          ),
          const Divider(
            color: black,
          ),
          const Expanded(child: SizedBox()),
          customeButton(
            context: context,
            textcolor: white,
            text: "Log out",
            bgColor: const MaterialStatePropertyAll(brown),
          ),
          const SizedBox(
            height: 30,
          )
        ],
      ),
    );
  }
}

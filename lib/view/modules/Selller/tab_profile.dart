import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:orgami/utils/colors.dart';
import 'package:orgami/utils/text_style.dart';
import 'package:orgami/view/modules/Selller/dailyupdate_page.dart';
import 'package:orgami/view/modules/Selller/notification_page.dart';
import 'package:orgami/view/widgets/custom_button.dart';

class SellerProfilePage extends StatelessWidget {
  const SellerProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Text(
          "My Store",
          style: poppinsStyle(FontWeight.w700, 20, black),
        ),
        Container(
          margin: const EdgeInsets.only(left: 30, right: 30, top: 80),
          decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                    color: Colors.black.withOpacity(.4),
                    // blurStyle: BlurStyle.outer,
                    blurRadius: 5,
                    spreadRadius: .05,
                    offset: const Offset(2, 3)),
              ],
              color: const Color.fromARGB(255, 245, 231, 230),
              borderRadius: BorderRadius.circular(15)),
          child: Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const CircleAvatar(
                  radius: 45,
                ),

                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                  Text(
                    "Farm name",
                    style: poppinsStyle(FontWeight.w600, 16, black),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    "address",
                    style: poppinsStyle(FontWeight.w400, 14, darkgrey),
                  ),
                  Text(
                    "userid",
                    style: poppinsStyle(FontWeight.w400, 14, darkgrey),
                  ),
                  Text(
                    "gst number",
                    style: poppinsStyle(FontWeight.w400, 14, darkgrey),
                  ),
                  const SizedBox(
                    height: 60,
                  )
                ]),
                const SizedBox(
                  width: 10,
                )
                // title: text,
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 80, left: 40, right: 100),
          child: Column(
            children: [
              InkWell(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => DailyUpdatePage()));
                },
                child: ListTile(
                  leading: const Icon(
                    Icons.update,
                    color: black,
                    size: 40,
                  ),
                  title: Text(
                    "Daily Update",
                    style: poppinsStyle(FontWeight.w700, 20, black),
                  ),
                ),
              ),
              const Divider(
                color: black,
              ),
              const SizedBox(
                height: 50,
              ),
              ListTile(
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
              const Divider(
                color: black,
              ),
            ],
          ),
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
    );
  }
}

import 'package:flutter/material.dart';
import 'package:orgami/utils/colors.dart';
import 'package:orgami/utils/text_style.dart';
import 'package:orgami/view/widgets/custom_button.dart';

class DailyUpdatePage extends StatelessWidget {
  const DailyUpdatePage({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: white,
      appBar: AppBar(
        automaticallyImplyLeading: true,
        leadingWidth: 50,
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: IconButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              icon: const Icon(
                Icons.arrow_back_ios_new_outlined,
                color: black,
                size: 20,
              )),
        ),
        backgroundColor: white,
        elevation: 0,
        centerTitle: true,
        title: Center(
          child: Row(
            // crossAxisAlignment: CrossAxisAlignment.center,
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(
                Icons.update,
                color: black,
                size: 40,
              ),
              Text(
                "Daily Update",
                style: poppinsStyle(FontWeight.w700, 20, black),
              ),
            ],
          ),
        ),
      ),
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.only(left: 20, right: 20, top: 20, bottom: 20),
          height: height * .85,
          width: width,
          margin: const EdgeInsets.only(
            left: 10,
            right: 10,
            top: 10,
          ),
          decoration: const BoxDecoration(
              color: Color.fromARGB(166, 190, 198, 206),
              borderRadius: BorderRadius.all(Radius.circular(20))),
          child: ListView.separated(
              itemCount: 4,
              separatorBuilder: (context, index) => const SizedBox(
                    height: 20,
                  ),
              itemBuilder: (context, index) => Container(
                    height: height * .2,
                    color: white,
                    width: width,
                    child: Column(
                      children: [
                        Text(
                          "MILK",
                          style: poppinsStyle(FontWeight.w700, 20, black),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Column(
                              children: [
                                Text(
                                  "Milk Quantity",
                                  style:
                                      poppinsStyle(FontWeight.w400, 17, black),
                                ),

                              ],
                            ),
                            Column(
                              children: [
                                Text(
                                  "Milk Rate",
                                  style:
                                      poppinsStyle(FontWeight.w400, 17, black),
                                ),
                               
                              ],
                            )
                          ],
                        )
                      ],
                    ),
                  )),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: SizedBox(
        width: width,
        height: 200,
        child: Center(
          child: customeButton(
            
              buttonwidth: .6,
              buttonHight: .05,
              context: context,
              text: "Update",
              textcolor: white,
              bgColor: const MaterialStatePropertyAll(brown)),
        ),
      ),
    );
  }
}

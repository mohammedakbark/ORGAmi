import 'package:flutter/material.dart';
import 'package:orgami/utils/colors.dart';
import 'package:orgami/utils/img.dart';
import 'package:orgami/utils/text_style.dart';
import 'package:orgami/view/modules/Buyer/selected_product_page.dart';

class AdminHomePage extends StatelessWidget {
  const AdminHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return Column(
      children: [
        SizedBox(
          height: height * .05,
        ),
        SizedBox(
            height: height * .25,
            width: width * .9,
            child: Image.network(
              imgFarmerAndCow,
              fit: BoxFit.fill,
            )),
        const Expanded(child: SizedBox()),
        SizedBox(
          width: width,
          height: 200,
          child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => InkWell(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => SelectedProductPage()));
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          border: Border.all(),
                          color: white,
                          borderRadius: BorderRadius.circular(20)),
                      width: width * .4,
                      // height: 200,
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            const SizedBox(
                              height: 20,
                            ),
                            Text(
                              "admin",
                              style: poppinsStyle(FontWeight.w700, 15, black),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Expanded(
                                child: Container(
                                    padding: const EdgeInsets.only(
                                      left: 20,
                                    ),
                                    width: width,
                                    decoration: const BoxDecoration(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(20)),
                                        color:
                                            Color.fromARGB(255, 233, 248, 234)),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Farm Name",
                                          style: poppinsStyle(
                                              FontWeight.w600, 15, black),
                                        ),
                                        Text(
                                          "Farm Name",
                                          style: poppinsStyle(
                                              FontWeight.w600, 15, black),
                                        ),
                                        Text(
                                          "Farm Name",
                                          style: poppinsStyle(
                                              FontWeight.w600, 15, black),
                                        ),
                                        Text(
                                          "Farm Name",
                                          style: poppinsStyle(
                                              FontWeight.w600, 15, black),
                                        ),
                                      ],
                                    )))
                          ]),
                    ),
                  ),
              separatorBuilder: (context, index) => const SizedBox(
                    width: 20,
                  ),
              itemCount: 5),
        ),
        SizedBox(
          height: height * .05,
        )
      ],
    );
  }
}

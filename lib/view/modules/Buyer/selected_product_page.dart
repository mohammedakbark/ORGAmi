import 'package:flutter/material.dart';
import 'package:orgami/utils/colors.dart';
import 'package:orgami/utils/text_style.dart';

class SelectedProductPage extends StatelessWidget {
  const SelectedProductPage({super.key});

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
        title: Text(
          "Products",
          style: poppinsStyle(FontWeight.w700, 22, black),
        ),
      ),
      body: Container(
        color: const Color.fromARGB(166, 218, 206, 206),
        height: height,
        width: width,
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "FARM NAME",
              style: poppinsStyle(FontWeight.w700, 20, black),
            ),
            Expanded(
              child: ListView.separated(
                  itemBuilder: (context, index) => Container(
                        decoration: BoxDecoration(
                            border: Border.all(),
                            color: white,
                            borderRadius: BorderRadius.circular(20)),
                        width: width * .4,
                        height: 120,
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const SizedBox(
                                height: 10,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 20),
                                child: Text(
                                  "MILK",
                                  style:
                                      poppinsStyle(FontWeight.w700, 18, black),
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Expanded(
                                  child: Container(
                                      padding: const EdgeInsets.only(
                                          left: 20, right: 20),
                                      width: width,
                                      decoration: const BoxDecoration(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(20)),
                                          color: Color.fromARGB(
                                              255, 233, 248, 234)),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceEvenly,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                "PRICE: 60",
                                                style: poppinsStyle(
                                                    FontWeight.w600, 15, black),
                                              ),
                                              Text(
                                                "QUANTITY: 25L   ",
                                                style: poppinsStyle(
                                                    FontWeight.w600, 15, black),
                                              ),
                                            ],
                                          ),
                                          SizedBox(
                                            width: 100,
                                            height: 30,
                                            child: ElevatedButton(
                                                onPressed: () {},
                                                style: ElevatedButton.styleFrom(
                                                    backgroundColor:
                                                        Color.fromARGB(
                                                            255, 255, 42, 27)),
                                                child: Text(
                                                  "BUY NOW",
                                                  style: poppinsStyle(
                                                      FontWeight.w400,
                                                      16,
                                                      white),
                                                )),
                                          )
                                        ],
                                      )))
                            ]),
                      ),
                  separatorBuilder: (context, index) => SizedBox(
                        height: 20,
                      ),
                  itemCount: 4),
            )
          ],
        ),
      ),
    );
  }
}

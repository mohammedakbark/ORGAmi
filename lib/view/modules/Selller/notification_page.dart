import 'package:flutter/material.dart';
import 'package:orgami/utils/colors.dart';
import 'package:orgami/utils/text_style.dart';

class NotificationPage extends StatelessWidget {
  const NotificationPage({super.key});

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
            "Order",
            style: poppinsStyle(FontWeight.w700, 22, black),
          ),
        ),
        body: Container(
          padding: const EdgeInsets.only(top: 20, left: 5, right: 5),
          margin: const EdgeInsets.only(left: 10, right: 10),
          height: height,
          width: width,
          decoration: BoxDecoration(
              color: Color.fromARGB(255, 215, 202, 200),
              borderRadius: BorderRadius.circular(10)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: const EdgeInsets.only(bottom: 20, left: 25),
                padding: const EdgeInsets.only(
                  left: 6,
                  right: 6,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: const Color.fromARGB(148, 133, 133, 133),
                ),
                child: Text(
                  "All",
                  style: poppinsStyle(FontWeight.w700, 19, black),
                ),
              ),
              Expanded(
                  child: GridView.builder(
                      itemCount: 11,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2,
                              crossAxisSpacing: 10,
                              mainAxisSpacing: 10),
                      itemBuilder: (context, index) => Container(
                            decoration: BoxDecoration(
                                color: white,
                                borderRadius: BorderRadius.circular(20)),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const SizedBox(
                                  height: 20,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 10),
                                  child: Text(
                                    "ORDER 10${index + 1}",
                                    style: poppinsStyle(
                                        FontWeight.w700, 15, black),
                                  ),
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                Expanded(
                                  child: Container(
                                    decoration: const BoxDecoration(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(20)),
                                        color:
                                            Color.fromARGB(255, 233, 248, 234)),
                                    child: ListTile(
                                      leading: Text(
                                        "MILK",
                                        style: poppinsStyle(
                                            FontWeight.w600, 15, black),
                                      ),
                                      title: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "Quantity:2 ltr",
                                            style: poppinsStyle(
                                                FontWeight.w600, 14, black),
                                          ),
                                          Text(
                                            "Price:120",
                                            style: poppinsStyle(
                                                FontWeight.w600, 14, black),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          )))
            ],
          ),
        ));
  }
}

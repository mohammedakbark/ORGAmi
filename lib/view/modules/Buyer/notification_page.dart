import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:orgami/utils/colors.dart';
import 'package:orgami/utils/text_style.dart';

class BuyerNotificationPage extends StatelessWidget {
  const BuyerNotificationPage({super.key});

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
          title: Text(
            "Notification",
            style: poppinsStyle(FontWeight.w700, 22, black),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Recent",
                style: poppinsStyle(FontWeight.w700, 22, black),
              ),
              Expanded(
                child: ListView.separated(
                    itemBuilder: (context, index) => Container(
                          decoration: BoxDecoration(
                              color: grey.withOpacity(.7),
                              borderRadius: BorderRadius.circular(3)),
                          width: width,
                          height: height * .1,
                          child: ListTile(
                            leading: const Icon(
                              CupertinoIcons.bell_fill,
                              color: white,
                              size: 40,
                            ),
                            title: Text(
                              "Successfully orderd!!!",
                              style: poppinsStyle(FontWeight.w700, 22, black),
                            ),
                            subtitle: Text(
                              "Will be placed soon",
                              style: poppinsStyle(FontWeight.w700, 16,
                                  Colors.black.withOpacity(.2)),
                            ),
                            trailing: Text(
                              "06:30 PM",
                              style: poppinsStyle(FontWeight.w200, 14, black),
                            ),
                          ),
                        ),
                    separatorBuilder: (context, index) => const SizedBox(
                          height: 20,
                        ),
                    itemCount: 5),
              )
            ],
          ),
        ));
  }
}

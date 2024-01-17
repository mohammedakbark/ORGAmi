import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:orgami/utils/colors.dart';
import 'package:orgami/utils/text_style.dart';
import 'package:orgami/view/modules/Selller/loginpage.dart';
import 'package:orgami/view/widgets/custom_button.dart';
import 'package:orgami/view/widgets/custome_text.dart';
import 'package:orgami/view/widgets/show.dart';
import 'package:orgami/viewmodel/controller.dart';
import 'package:provider/provider.dart';

class SellerSignPage extends StatelessWidget {
  SellerSignPage({super.key});
  var emailController = TextEditingController();
  var passwordController = TextEditingController();
  var conformpasswordController = TextEditingController();

  var fullNameController = TextEditingController();
  var pinController = TextEditingController();
  var addressController = TextEditingController();
  var farmController = TextEditingController();
  var phonenumberController = TextEditingController();
  final _fromkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(
            left: 30,
            right: 30,
          ),
          child: Form(
            key: _fromkey,
            child: Column(
              children: [
                SizedBox(
                  height: height * .1,
                ),
                customeText(text: "Register", size: 40),
                SizedBox(
                  height: height * .02,
                ),
                TextFormField(
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Enter your Name";
                    } else {
                      return null;
                    }
                  },
                  controller: fullNameController,
                  decoration: const InputDecoration(
                      prefix: Icon(CupertinoIcons.person_fill),
                      labelText: "Full Name",
                      labelStyle: labelStyle,
                      // hintText: "example",
                      enabledBorder: UnderlineInputBorder(),
                      focusedBorder: UnderlineInputBorder(),
                      disabledBorder: UnderlineInputBorder(),
                      focusedErrorBorder: UnderlineInputBorder()),
                ),
                const SizedBox(
                  height: 20,
                ),
                TextFormField(
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Enter your Email";
                    } else if (!(RegExp(
                            r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+"))
                        .hasMatch(value)) {
                      return "Enter correct Email address";
                    } else {
                      return null;
                    }
                  },
                  controller: emailController,
                  decoration: const InputDecoration(
                      labelText: "Enter Email",
                      labelStyle: labelStyle,
                      hintText: "example@gmail.com",
                      enabledBorder: UnderlineInputBorder(),
                      focusedBorder: UnderlineInputBorder(),
                      disabledBorder: UnderlineInputBorder(),
                      focusedErrorBorder: UnderlineInputBorder()),
                ),
                const SizedBox(
                  height: 20,
                ),
                TextFormField(
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Enter your pincode";
                    } else {
                      return null;
                    }
                  },
                  controller: pinController,
                  decoration: const InputDecoration(
                      labelText: "Pincode",
                      labelStyle: labelStyle,
                      hintText: "********",
                      enabledBorder: UnderlineInputBorder(),
                      focusedBorder: UnderlineInputBorder(),
                      disabledBorder: UnderlineInputBorder(),
                      focusedErrorBorder: UnderlineInputBorder()),
                ),
                const SizedBox(
                  height: 20,
                ),
                TextFormField(
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Enter your address";
                    } else {
                      return null;
                    }
                  },
                  controller: addressController,
                  decoration: const InputDecoration(
                      labelText: "Address",
                      labelStyle: labelStyle,
                      hintText: "",
                      enabledBorder: UnderlineInputBorder(),
                      focusedBorder: UnderlineInputBorder(),
                      disabledBorder: UnderlineInputBorder(),
                      focusedErrorBorder: UnderlineInputBorder()),
                ),
                const SizedBox(
                  height: 20,
                ),
                TextFormField(
                  maxLength: 10,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Enter your Mobile number";
                    } else if (!(RegExp(r'^\d{10}$').hasMatch(value))) {
                      return "The number is not valid";
                    } else {
                      return null;
                    }
                  },
                  controller: phonenumberController,
                  decoration: const InputDecoration(
                      prefixText: "+91 ",
                      labelText: "Mobile Number",
                      labelStyle: labelStyle,
                      hintText: "9846475854",
                      enabledBorder: UnderlineInputBorder(),
                      focusedBorder: UnderlineInputBorder(),
                      disabledBorder: UnderlineInputBorder(),
                      focusedErrorBorder: UnderlineInputBorder()),
                ),
                const SizedBox(
                  height: 20,
                ),
                TextFormField(
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Enter your Farm Name";
                    } else {
                      return null;
                    }
                  },
                  controller: farmController,
                  decoration: const InputDecoration(
                      labelText: "Farm Name",
                      labelStyle: labelStyle,
                      // hintText: "example@gmail.com",
                      enabledBorder: UnderlineInputBorder(),
                      focusedBorder: UnderlineInputBorder(),
                      disabledBorder: UnderlineInputBorder(),
                      focusedErrorBorder: UnderlineInputBorder()),
                ),
                const SizedBox(
                  height: 20,
                ),
                // Divider(),
                const SizedBox(
                  height: 20,
                ),
                Consumer<Controller>(builder: (context, controller, child) {
                  return TextFormField(
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Enter your password";
                      } else if (value.length < 8) {
                        return "password must contain 8 digit";
                      } else {
                        return null;
                      }
                    },
                    obscureText: controller.isSecure,
                    controller: passwordController,
                    decoration: InputDecoration(
                        suffix: IconButton(
                            onPressed: () {
                              controller.isSecuree();
                            },
                            icon: controller.isSecure
                                ? const Icon(CupertinoIcons.eye_slash_fill)
                                : const Icon(Icons.remove_red_eye_rounded)),
                        labelText: "Enter Password",
                        labelStyle: labelStyle,
                        hintText: "********",
                        enabledBorder: const UnderlineInputBorder(),
                        focusedBorder: const UnderlineInputBorder(),
                        disabledBorder: const UnderlineInputBorder(),
                        focusedErrorBorder: const UnderlineInputBorder()),
                  );
                }),
                const SizedBox(
                  height: 20,
                ),
                Consumer<Controller>(builder: (context, controller, child) {
                  return TextFormField(
                    obscureText: controller.isSecure,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Confirm your password";
                      } else if (value != passwordController.text) {
                        return "Password is does't match";
                      } else {
                        return null;
                      }
                    },
                    controller: conformpasswordController,
                    decoration: InputDecoration(
                        suffix: IconButton(
                            onPressed: () {
                              controller.isSecuree();
                            },
                            icon: controller.isSecure
                                ? const Icon(CupertinoIcons.eye_slash_fill)
                                : const Icon(Icons.remove_red_eye_rounded)),
                        labelText: "Conform Password",
                        labelStyle: labelStyle,
                        hintText: "********",
                        enabledBorder: const UnderlineInputBorder(),
                        focusedBorder: const UnderlineInputBorder(),
                        disabledBorder: const UnderlineInputBorder(),
                        focusedErrorBorder: const UnderlineInputBorder()),
                  );
                }),
                const SizedBox(
                  height: 20,
                ),

                Align(
                  alignment: Alignment.centerLeft,
                  child: Container(
                    padding: const EdgeInsets.only(left: 10),
                    width: width * .27,
                    height: 35,
                    decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 137, 135, 135),
                        borderRadius: BorderRadius.circular(5)),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: customeText(
                          size: 18,
                          text: "Products",
                          fontweight: FontWeight.bold),
                    ),
                  ),
                ),

                Consumer<Controller>(builder: (context, controller, child) {
                  return Column(
                    children: [
                      Row(
                        children: [
                          Checkbox(
                              checkColor: white,
                              activeColor: black,
                              value: controller.ischeckbox1Enabled,
                              onChanged: (value) {
                                controller.ischeckboxClicked(value, 0);
                              }),
                          Text(
                            "Milk",
                            style: GoogleFonts.poppins(
                              fontSize: 16,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Checkbox(
                              checkColor: white,
                              activeColor: black,
                              value: controller.ischeckbox2Enabled,
                              onChanged: (value) {
                                controller.ischeckboxClicked(value, 1);
                              }),
                          Text(
                            "Curd",
                            style: GoogleFonts.poppins(
                              fontSize: 16,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Checkbox(
                              checkColor: white,
                              activeColor: black,
                              value: controller.ischeckbox3Enabled,
                              onChanged: (value) {
                                controller.ischeckboxClicked(value, 2);
                              }),
                          Text(
                            "Butter",
                            style: GoogleFonts.poppins(
                              fontSize: 16,
                            ),
                          )
                        ],
                      ),
                      Row(
                        children: [
                          Checkbox(
                              checkColor: white,
                              activeColor: black,
                              value: controller.ischeckbox4Enabled,
                              onChanged: (value) {
                                controller.ischeckboxClicked(value, 3);
                              }),
                          Text(
                            "Butter milk",
                            style: GoogleFonts.poppins(
                              fontSize: 16,
                            ),
                          ),
                        ],
                      ),
                    ],
                  );
                }),
                SizedBox(
                  height: height * .02,
                ),

                Consumer<Controller>(builder: (context, controller, child) {
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Checkbox(
                              checkColor: white,
                              activeColor: Colors.green,
                              value: controller.termsAndCondition,
                              onChanged: (value) {
                                controller.ischeckboxClicked(value, 4);
                              }),
                          Text(
                            "I agree to all the",
                            style: GoogleFonts.poppins(),
                          ),
                          TextButton(
                            onPressed: () {},
                            child: Text(
                              "Terms and Conditions",
                              style: GoogleFonts.poppins(
                                  color: Colors.amber,
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                          Text(
                            "and",
                            style: GoogleFonts.poppins(),
                          ),
                        ],
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          "Privacy policy",
                          maxLines: 2,
                          style: GoogleFonts.poppins(
                              color: Colors.amber, fontWeight: FontWeight.w500),
                        ),
                      )
                    ],
                  );
                }),
                // CheckboxListTile(value: value, onChanged: onChanged),
                Consumer<Controller>(builder: (context, controller, child) {
                  return customeButton(
                      onpressed: () {
                        if (_fromkey.currentState!.validate()) {
                        if (controller.termsAndCondition == true) {
                          if (controller.ischeckbox1Enabled == true ||
                              controller.ischeckbox2Enabled == true ||
                              controller.ischeckbox3Enabled == true ||
                              controller.ischeckbox4Enabled == true) {
                            succesRegistrationMessage(context,
                                emailController.text, SellerLoginPage());
                          } else {
                            ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(
                                    content: Text("Select minimum 1 product")));
                          }
                        } else {
                          ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                              content: Text(
                                  "agree the Terms and Condition and proceed")));
                          }
                        }
                      },
                      context: context,
                      bgColor: const MaterialStatePropertyAll(brown),
                      textcolor: white,
                      text: "Sign up");
                }),
                const SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

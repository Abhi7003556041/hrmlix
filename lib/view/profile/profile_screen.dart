import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hrmlix/constants/color.dart';
import 'package:hrmlix/constants/constant.dart';
import 'package:hrmlix/widgets/common_widgets.dart';
import 'package:hrmlix/widgets/user_card.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Profile"),
        surfaceTintColor: Colors.transparent,
        automaticallyImplyLeading: false,
        leading: InkWell(
          onTap: () {
            Get.back();
          },
          child: const Icon(
            Icons.arrow_back_ios,
            size: 18.0,
          ),
        ),
        actions: [
          InkWell(
            onTap: () {
              Get.back();
            },
            child: Icon(
              Icons.edit,
              size: 18.0,
              color: textBlue,
            ),
          ),
          hSpace(25)
        ],
      ),
      // backgroundColor: appBackgroundColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            //// Leave Activity

            Stack(
              children: [
                Container(
                  height: 50,
                  width: fullWidth(context),
                  color: Theme.of(context).colorScheme.secondary,
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      bottom: 10, top: 10, left: 20, right: 20),
                  child: Container(
                    margin: const EdgeInsets.only(bottom: 10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(
                        color: Theme.of(context).colorScheme.onTertiary,
                        width: 1,
                      ),
                      color: Theme.of(context).colorScheme.secondary,
                    ),
                    child: Center(
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                          Padding(
                            padding: EdgeInsets.all(20),
                            child: UserCard(
                                name: "Promodh Promodh",
                                designation: "UI/UX Designer",
                                statusValue: "",
                                statusColor: Colors.black,
                                profileImgUrl: ""),
                          ),
                        ])),
                  ),
                ),
              ],
            ),

            Padding(
              padding: const EdgeInsets.only(left: 20.00, right: 20.00),
              child: Column(
                children: [
                  /// My Details section start
                  Container(
                    margin: const EdgeInsets.only(top: 10, bottom: 10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(
                        color: Theme.of(context).colorScheme.onTertiary,
                        width: 1,
                      ),
                      color: Theme.of(context).colorScheme.secondary,
                    ),
                    child: Center(
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                          vSpace(15),
                          Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    const SizedBox(
                                      height: 22,
                                      width: 8,
                                      child: Image(
                                          image: AssetImage(
                                              AppImage.rectangleBlueLine)),
                                    ),
                                    hSpace(15),
                                    textBold(
                                        color: Theme.of(context)
                                            .colorScheme
                                            .primary,
                                        maxLine: 1,
                                        size: 16,
                                        alignment: TextAlign.left,
                                        text: "My Details"),
                                  ],
                                ),
                              ]),
                          vSpace(10),
                          Divider(
                            color: Theme.of(context).colorScheme.tertiary,
                            thickness: 1,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                bottom: 20, left: 20, right: 20),
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  vSpace(10),
                                  Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      textRegular(
                                          alignment: TextAlign.left,
                                          text: "Father Name",
                                          color: Theme.of(context)
                                              .colorScheme
                                              .onPrimary,
                                          size: 14,
                                          maxLine: 2),
                                      textSemiBold(
                                          alignment: TextAlign.left,
                                          color: Theme.of(context)
                                              .colorScheme
                                              .primary,
                                          text: "Probodh Pradhan",
                                          size: 14,
                                          maxLine: 2),
                                    ],
                                  ),
                                  vSpace(10),
                                  Divider(
                                    color:
                                        Theme.of(context).colorScheme.tertiary,
                                    thickness: 1,
                                  ),
                                  vSpace(10),
                                  Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      textRegular(
                                          alignment: TextAlign.left,
                                          text: "Email",
                                          color: Theme.of(context)
                                              .colorScheme
                                              .onPrimary,
                                          size: 14,
                                          maxLine: 2),
                                      SizedBox(
                                        width: fullWidth(context) * 0.40,
                                        child: textSemiBold(
                                            alignment: TextAlign.right,
                                            color: Theme.of(context)
                                                .colorScheme
                                                .primary,
                                            text:
                                                "probodh.pradhan@ivanwebsolutions.com",
                                            size: 14,
                                            maxLine: 2),
                                      ),
                                    ],
                                  ),
                                  vSpace(10),
                                  Divider(
                                    color:
                                        Theme.of(context).colorScheme.tertiary,
                                    thickness: 1,
                                  ),
                                  vSpace(10),
                                  Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      textRegular(
                                          alignment: TextAlign.left,
                                          text: "Phone No.",
                                          color: Theme.of(context)
                                              .colorScheme
                                              .onPrimary,
                                          size: 14,
                                          maxLine: 2),
                                      SizedBox(
                                        width: fullWidth(context) * 0.30,
                                        child: textSemiBold(
                                            alignment: TextAlign.right,
                                            color: Theme.of(context)
                                                .colorScheme
                                                .primary,
                                            text: "91 2589863547",
                                            size: 14,
                                            maxLine: 2),
                                      ),
                                    ],
                                  ),
                                  vSpace(10),
                                  Divider(
                                    color:
                                        Theme.of(context).colorScheme.tertiary,
                                    thickness: 1,
                                  ),
                                  vSpace(10),
                                  Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      textRegular(
                                          alignment: TextAlign.left,
                                          text: "Alternate Mobile No.",
                                          color: Theme.of(context)
                                              .colorScheme
                                              .onPrimary,
                                          size: 14,
                                          maxLine: 2),
                                      textSemiBold(
                                          alignment: TextAlign.right,
                                          color: Theme.of(context)
                                              .colorScheme
                                              .primary,
                                          text: "91 2589863547",
                                          size: 14,
                                          maxLine: 2),
                                    ],
                                  ),
                                  vSpace(10),
                                  Divider(
                                    color:
                                        Theme.of(context).colorScheme.tertiary,
                                    thickness: 1,
                                  ),
                                  vSpace(10),
                                  Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      textRegular(
                                          alignment: TextAlign.left,
                                          text: "DOB",
                                          color: Theme.of(context)
                                              .colorScheme
                                              .onPrimary,
                                          size: 14,
                                          maxLine: 2),
                                      SizedBox(
                                        width: fullWidth(context) * 0.30,
                                        child: textSemiBold(
                                            alignment: TextAlign.right,
                                            color: Theme.of(context)
                                                .colorScheme
                                                .primary,
                                            text: "12 April 1980",
                                            size: 14,
                                            maxLine: 2),
                                      ),
                                    ],
                                  ),
                                  vSpace(10),
                                  Divider(
                                    color:
                                        Theme.of(context).colorScheme.tertiary,
                                    thickness: 1,
                                  ),
                                  vSpace(10),
                                  Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      textRegular(
                                          alignment: TextAlign.left,
                                          text: "Gender",
                                          color: Theme.of(context)
                                              .colorScheme
                                              .onPrimary,
                                          size: 14,
                                          maxLine: 2),
                                      SizedBox(
                                        width: fullWidth(context) * 0.30,
                                        child: textSemiBold(
                                            alignment: TextAlign.right,
                                            color: Theme.of(context)
                                                .colorScheme
                                                .primary,
                                            text: "Male",
                                            size: 14,
                                            maxLine: 2),
                                      ),
                                    ],
                                  ),
                                  vSpace(10),
                                  Divider(
                                    color:
                                        Theme.of(context).colorScheme.tertiary,
                                    thickness: 1,
                                  ),
                                  vSpace(10),
                                  Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      textRegular(
                                          alignment: TextAlign.left,
                                          text: "Aadhar Card Number",
                                          color: Theme.of(context)
                                              .colorScheme
                                              .onPrimary,
                                          size: 14,
                                          maxLine: 2),
                                      SizedBox(
                                        width: fullWidth(context) * 0.30,
                                        child: textSemiBold(
                                            alignment: TextAlign.right,
                                            color: Theme.of(context)
                                                .colorScheme
                                                .primary,
                                            text: "256 655 665 665",
                                            size: 14,
                                            maxLine: 2),
                                      ),
                                    ],
                                  ),
                                  vSpace(10),
                                  Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Container(
                                        height: fullHeight(context) * 0.1,
                                        width: fullWidth(context) * 0.25,
                                        color: black,
                                      )
                                    ],
                                  ),
                                  vSpace(10),
                                  Divider(
                                    color:
                                        Theme.of(context).colorScheme.tertiary,
                                    thickness: 1,
                                  ),
                                  vSpace(10),
                                  Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      textRegular(
                                          alignment: TextAlign.left,
                                          text: "PAN Card Number",
                                          color: Theme.of(context)
                                              .colorScheme
                                              .onPrimary,
                                          size: 14,
                                          maxLine: 2),
                                      SizedBox(
                                        width: fullWidth(context) * 0.30,
                                        child: textSemiBold(
                                            alignment: TextAlign.right,
                                            color: Theme.of(context)
                                                .colorScheme
                                                .primary,
                                            text: "AKWK251HP",
                                            size: 14,
                                            maxLine: 2),
                                      ),
                                    ],
                                  ),
                                  vSpace(10),
                                  Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Container(
                                        height: fullHeight(context) * 0.1,
                                        width: fullWidth(context) * 0.25,
                                        color: black,
                                      )
                                    ],
                                  ),
                                  vSpace(10),
                                  Divider(
                                    color:
                                        Theme.of(context).colorScheme.tertiary,
                                    thickness: 1,
                                  ),
                                  vSpace(10),
                                  Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      textRegular(
                                          alignment: TextAlign.left,
                                          text: "Passport Number",
                                          color: Theme.of(context)
                                              .colorScheme
                                              .onPrimary,
                                          size: 14,
                                          maxLine: 2),
                                      textSemiBold(
                                          alignment: TextAlign.right,
                                          color: Theme.of(context)
                                              .colorScheme
                                              .primary,
                                          text: "256 655 665 665",
                                          size: 14,
                                          maxLine: 2),
                                    ],
                                  ),
                                  vSpace(10),
                                  Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      textRegular(
                                          alignment: TextAlign.left,
                                          text: "Valid Form",
                                          color: Theme.of(context)
                                              .colorScheme
                                              .onPrimary,
                                          size: 14,
                                          maxLine: 2),
                                      textSemiBold(
                                          alignment: TextAlign.right,
                                          color: Theme.of(context)
                                              .colorScheme
                                              .primary,
                                          text: "12/12/2030",
                                          size: 14,
                                          maxLine: 2),
                                      hSpace(fullWidth(context) * 0.2),
                                    ],
                                  ),
                                  vSpace(10),
                                  Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      textRegular(
                                          alignment: TextAlign.left,
                                          text: "Valid To",
                                          color: Theme.of(context)
                                              .colorScheme
                                              .onPrimary,
                                          size: 14,
                                          maxLine: 2),
                                      textSemiBold(
                                          alignment: TextAlign.right,
                                          color: Theme.of(context)
                                              .colorScheme
                                              .primary,
                                          text: "12/12/2030",
                                          size: 14,
                                          maxLine: 2),
                                      hSpace(fullWidth(context) * 0.2),
                                    ],
                                  ),
                                  vSpace(10),
                                  Divider(
                                    color:
                                        Theme.of(context).colorScheme.tertiary,
                                    thickness: 1,
                                  ),
                                  vSpace(10),
                                  Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      textRegular(
                                          alignment: TextAlign.left,
                                          text: "Nationality",
                                          color: Theme.of(context)
                                              .colorScheme
                                              .onPrimary,
                                          size: 14,
                                          maxLine: 2),
                                      SizedBox(
                                        width: fullWidth(context) * 0.30,
                                        child: textSemiBold(
                                            alignment: TextAlign.right,
                                            color: Theme.of(context)
                                                .colorScheme
                                                .primary,
                                            text: "Indian",
                                            size: 14,
                                            maxLine: 2),
                                      ),
                                    ],
                                  ),
                                  vSpace(10),
                                  Divider(
                                    color:
                                        Theme.of(context).colorScheme.tertiary,
                                    thickness: 1,
                                  ),
                                  vSpace(10),
                                  Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      textRegular(
                                          alignment: TextAlign.left,
                                          text: "Blood Group",
                                          color: Theme.of(context)
                                              .colorScheme
                                              .onPrimary,
                                          size: 14,
                                          maxLine: 2),
                                      SizedBox(
                                        width: fullWidth(context) * 0.30,
                                        child: textSemiBold(
                                            alignment: TextAlign.right,
                                            color: Theme.of(context)
                                                .colorScheme
                                                .primary,
                                            text: "A+",
                                            size: 14,
                                            maxLine: 2),
                                      ),
                                    ],
                                  ),
                                  vSpace(10),
                                  Divider(
                                    color:
                                        Theme.of(context).colorScheme.tertiary,
                                    thickness: 1,
                                  ),
                                  vSpace(10),
                                  Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      textRegular(
                                          alignment: TextAlign.left,
                                          text: "Physical Disability",
                                          color: Theme.of(context)
                                              .colorScheme
                                              .onPrimary,
                                          size: 14,
                                          maxLine: 2),
                                      SizedBox(
                                        width: fullWidth(context) * 0.30,
                                        child: textSemiBold(
                                            alignment: TextAlign.right,
                                            color: Theme.of(context)
                                                .colorScheme
                                                .primary,
                                            text: "No",
                                            size: 14,
                                            maxLine: 2),
                                      ),
                                    ],
                                  ),
                                  vSpace(10),
                                  Divider(
                                    color:
                                        Theme.of(context).colorScheme.tertiary,
                                    thickness: 1,
                                  ),
                                  vSpace(10),
                                  Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      textRegular(
                                          alignment: TextAlign.left,
                                          text: "Religon",
                                          color: Theme.of(context)
                                              .colorScheme
                                              .onPrimary,
                                          size: 14,
                                          maxLine: 2),
                                      SizedBox(
                                        width: fullWidth(context) * 0.30,
                                        child: textSemiBold(
                                            alignment: TextAlign.right,
                                            color: Theme.of(context)
                                                .colorScheme
                                                .primary,
                                            text: "Hindu",
                                            size: 14,
                                            maxLine: 2),
                                      ),
                                    ],
                                  ),
                                  vSpace(10),
                                ]),
                          ),
                          vSpace(10),
                        ])),
                  ),

                  ///// My Details section end
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.00, right: 20.00),
              child: Column(
                children: [
                  /// My Details section start
                  Container(
                    margin: const EdgeInsets.only(top: 10, bottom: 10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(
                        color: Theme.of(context).colorScheme.onTertiary,
                        width: 1,
                      ),
                      color: Theme.of(context).colorScheme.secondary,
                    ),
                    child: Center(
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                          vSpace(15),
                          Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    const SizedBox(
                                      height: 22,
                                      width: 8,
                                      child: Image(
                                          image: AssetImage(
                                              AppImage.rectangleBlueLine)),
                                    ),
                                    hSpace(15),
                                    textBold(
                                        color: Theme.of(context)
                                            .colorScheme
                                            .primary,
                                        maxLine: 1,
                                        size: 16,
                                        alignment: TextAlign.left,
                                        text: "Address"),
                                  ],
                                ),
                              ]),
                          vSpace(10),
                          Divider(
                            color: Theme.of(context).colorScheme.tertiary,
                            thickness: 1,
                          ),
                          Padding(
                              padding: const EdgeInsets.only(
                                  bottom: 10, left: 20, right: 20),
                              child: Column(
                                children: [
                                  vSpace(10),
                                  textSemiBold(
                                      color:
                                          Theme.of(context).colorScheme.primary,
                                      maxLine: 1000,
                                      size: 14,
                                      text:
                                          "147, Alfredo, 8th East Street, Thiruvanmiyur, Chennai-41"),
                                ],
                              )),
                          vSpace(10),
                        ])),
                  ),

                  ///// My Details section end
                ],
              ),
            ),

            vSpace(10),
          ],
        ),
      ),
    );
  }
}

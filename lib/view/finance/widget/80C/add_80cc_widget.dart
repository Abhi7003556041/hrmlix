import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hrmlix/constants/color.dart';
import 'package:hrmlix/constants/constant.dart';
import 'package:hrmlix/widgets/common_widgets.dart';

class AddInvestments80CC extends StatefulWidget {
  const AddInvestments80CC({super.key});

  @override
  State<AddInvestments80CC> createState() => _AddInvestments80CCState();
}

class _AddInvestments80CCState extends State<AddInvestments80CC> {
  var showEdit = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding:
              const EdgeInsets.only(bottom: 20, left: 20, right: 20, top: 80),
          child: Column(
            children: [
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
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    textRegular(
                                        color: appTextColor,
                                        maxLine: 1,
                                        size: 12,
                                        alignment: TextAlign.left,
                                        text: "Section"),
                                    textSemiBold(
                                        color: appTextColor,
                                        maxLine: 1,
                                        size: 16,
                                        alignment: TextAlign.left,
                                        text: "80CC"),
                                  ],
                                ),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 10),
                              child: InkWell(
                                onTap: () {
                                  Get.back();
                                },
                                child: const Icon(
                                  Icons.clear,
                                  color: Colors.red,
                                  size: 25.0,
                                ),
                              ),
                            )
                          ]),
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Column(
                          children: [
                            TextFormField(
                              textInputAction: TextInputAction.done,
                              decoration: InputDecoration(
                                border: customOutlineBorder(),
                                filled: true,
                                fillColor:
                                    Theme.of(context).colorScheme.secondary,
                                labelStyle: TextStyle(
                                  color:
                                      Theme.of(context).colorScheme.onPrimary,
                                  fontSize: 16,
                                ),
                                labelText: "Deduction Name",
                                floatingLabelBehavior:
                                    FloatingLabelBehavior.always,
                                floatingLabelStyle: TextStyle(
                                  color: textBlue,
                                ),
                                contentPadding: const EdgeInsets.all(8),
                                focusedBorder: customOutlineFocusBorder(),
                                errorBorder: customOutlineErrorBorder(),
                                focusedErrorBorder: customOutlineErrorBorder(),
                              ),
                            ),
                            vSpace(15),
                            TextFormField(
                              textInputAction: TextInputAction.done,
                              decoration: InputDecoration(
                                border: customOutlineBorder(),
                                filled: true,
                                fillColor:
                                    Theme.of(context).colorScheme.secondary,
                                labelStyle: TextStyle(
                                  color:
                                      Theme.of(context).colorScheme.onPrimary,
                                  fontSize: 16,
                                ),
                                labelText: "Declaration",
                                floatingLabelBehavior:
                                    FloatingLabelBehavior.always,
                                floatingLabelStyle: TextStyle(
                                  color: textBlue,
                                ),
                                contentPadding: const EdgeInsets.all(8),
                                focusedBorder: customOutlineFocusBorder(),
                                errorBorder: customOutlineErrorBorder(),
                                focusedErrorBorder: customOutlineErrorBorder(),
                              ),
                            ),
                            vSpace(15),
                            DottedBorder(
                              dashPattern: [8, 4],
                              borderType: BorderType.RRect,
                              radius: const Radius.circular(5),
                              color: Theme.of(context).colorScheme.onPrimary,
                              strokeWidth: 1,
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      vSpace(20),
                                      Icon(
                                        Icons.attach_file,
                                        color: appTextColor,
                                        size: 20.0,
                                      ),
                                      vSpace(20),
                                      textRegular(
                                          color: Theme.of(context)
                                              .colorScheme
                                              .onPrimary,
                                          maxLine: 1,
                                          size: 14,
                                          text: "Select Document to Upload"),
                                      vSpace(10),
                                      Container(
                                        margin: const EdgeInsets.all(10),
                                        decoration: BoxDecoration(
                                          borderRadius: const BorderRadius.all(
                                              Radius.circular(5)),
                                          color:
                                              appTextGreyColor.withOpacity(0.3),
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.only(
                                              bottom: 8,
                                              left: 15,
                                              right: 15,
                                              top: 08),
                                          child: textRegular(
                                              color: Theme.of(context)
                                                  .colorScheme
                                                  .onPrimary,
                                              maxLine: 1,
                                              size: 15,
                                              text: "Upload File"),
                                        ),
                                      ),
                                      vSpace(10),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            vSpace(20),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Stack(
                                  children: [
                                    InkWell(
                                      onTap: () {
                                        print("dededed  ");
                                        setState(() {
                                          showEdit = true;
                                        });
                                      },
                                      child: Container(
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(5)),
                                          color: black,
                                        ),
                                        height: 120,
                                        width: fullWidth(context) * 0.35,
                                      ),
                                    ),
                                    if (showEdit)
                                      InkWell(
                                        onTap: () {
                                          setState(() {
                                            showEdit = false;
                                          });
                                        },
                                        child: Container(
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(5)),
                                            color: Theme.of(context)
                                                .colorScheme
                                                .onPrimary,
                                          ),
                                          height: 120,
                                          width: fullWidth(context) * 0.35,
                                          child: Row(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceAround,
                                            children: [
                                              hSpace(2),
                                              Icon(
                                                Icons.visibility,
                                                color: white,
                                                size: 20.0,
                                              ),
                                              Icon(
                                                Icons.download,
                                                color: white,
                                                size: 20.0,
                                              ),
                                              Icon(
                                                Icons.delete,
                                                color: white,
                                                size: 20.0,
                                              ),
                                              hSpace(2),
                                            ],
                                          ),
                                        ),
                                      ),
                                  ],
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(5)),
                                    color: black,
                                  ),
                                  height: 120,
                                  width: fullWidth(context) * 0.35,
                                ),
                              ],
                            ),
                            vSpace(20),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                InkWell(
                                  onTap: () {
                                    print("Add");
                                  },
                                  child: Container(
                                    margin: const EdgeInsets.only(right: 15),
                                    decoration: BoxDecoration(
                                        border: Border.all(
                                            color: textBlue,
                                            width: 1.5,
                                            style: BorderStyle.solid),
                                        borderRadius: const BorderRadius.all(
                                            Radius.circular(8))),
                                    child: Padding(
                                      padding: const EdgeInsets.only(
                                          top: 6,
                                          bottom: 6,
                                          left: 25,
                                          right: 25),
                                      child: textRegular(
                                          size: 14,
                                          color: textBlue,
                                          maxLine: 1,
                                          text: "+ Add"),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ])),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

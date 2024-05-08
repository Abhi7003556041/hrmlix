import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hrmlix/Store/HiveStore.dart';
import 'package:hrmlix/constants/color.dart';
import 'package:intl/intl.dart';
import 'package:shimmer/shimmer.dart';

class Apputil {
  static showError() {
    Get.closeAllSnackbars();
    Get.showSnackbar(GetSnackBar(
        backgroundColor: red.withOpacity(0.4),
        message: "Server Error",
        snackPosition: SnackPosition.BOTTOM,
        duration: Duration(seconds: 2),
        margin: EdgeInsets.only(bottom: 10, left: 0, right: 0)));
  }

  // static storeUserDetails({
  //   String? accessToken,
  //   String? hasUserLogged,
  //   LoginResponseModel? userDetails,
  // }) {
  //   if (accessToken != null) {
  //     HiveStore().put(Keys.accessToken, accessToken);
  //   }
  //   if (hasUserLogged != null) {
  //     HiveStore()
  //         .put(Keys.hasUserLogged, hasUserLogged.toString().toLowerCase());
  //   }

  //   if (userDetails != null) {
  //     HiveStore().put(Keys.userDetails, jsonEncode(userDetails.toJson()));
  //   }
  // }

  static bool isUserLogged() {
    final accessToken = HiveStore().get(Keys.accessToken);
    print("accessToken: $accessToken");
    return accessToken != null
        ? accessToken != ""
            ? true
            : false
        : false;
  }

  static showProgressDialouge() {
    Get.dialog(Center(
      child: Container(
          width: 100,
          height: 100,
          child: Center(
            child: SizedBox(
              width: 35,
              height: 35,
              child: CircularProgressIndicator(
                color: Color(0xff2643E5),
              ),
            ),
          )),
    ));
  }

  static closeProgressDialouge() async {
    while ((Get.isDialogOpen ?? false)
        //  ||
        //     Get.previousRoute.toLowerCase().contains('/dialouge')
        ) {
      // printRed(Get.previousRoute);
      Get.back();
    }
  }

  static getActiveColor() {
    return Color(0xff2643E5);
  }

  ///Stores app user profile image using HiveStorage using key -     Keys.profileImage.
  ///It needs to be updated while pushing live build
  static storProfileImage(String? imgUrl) {
    //update it in live version
    HiveStore().put(Keys.profileImage, imgUrl ?? "");
  }

  // static LoginResponseModel? getUserProfile() {
  //   try {
  //     var data = HiveStore().get(Keys.userDetails);
  //     dev.log(data);
  //     return LoginResponseModel.fromJson(json.decode(data));
  //   } catch (err) {
  //     printRed(err.toString());
  //     return null;
  //   }
  // }

  ///removes necessary key which needs to be deleted while logout
  static logoutStoredKey() async {
    await HiveStore().delete(Keys.accessToken);
    await HiveStore().delete(Keys.userDetails);
    await HiveStore().delete(Keys.userNumber);
    await HiveStore().delete(Keys.userName);
    await HiveStore().delete(Keys.userId);
    await HiveStore().delete(Keys.userEmail);
    await HiveStore().delete(Keys.userCountryCode);
    await HiveStore().delete(Keys.hasUserLogged);
    await HiveStore().delete(Keys.profileImage);
  }

  static Future<bool> showCustomDialougeDialouge(
      {required String titleText,
      required String description,
      required Function onYesTap,
      String positiveButtonLabelText = "Yes",
      String negativeButtonLabelText = "No",
      required Function onNoTap}) async {
    var returnVal = false;
    await Get.dialog(Dialog(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          LayoutBuilder(
            builder: (ctx, constraints) => Container(
              constraints: BoxConstraints(maxWidth: constraints.maxWidth * .8),
              margin: EdgeInsets.only(top: 10),
              padding: EdgeInsets.only(left: 10, top: 3, bottom: 3),
              color: Apputil.getActiveColor(),
              child: Text(
                titleText,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(
                  height: 7,
                ),
                Text(description),
                SizedBox(
                  height: 14,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    ElevatedButton(
                        // onPressed: () {
                        //   returnVal = true;
                        //   onYesTap();
                        //   Get.back();
                        // },
                        onPressed: () => onYesTap(),
                        child: Text(positiveButtonLabelText)),
                    SizedBox(
                      width: 5,
                    ),
                    ElevatedButton(
                        style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all(Colors.grey)),
                        // onPressed: () {
                        //   returnVal = false;
                        //   onNoTap();
                        //   Get.back();
                        // },
                        onPressed: () => onNoTap(),
                        child: Text(negativeButtonLabelText))
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    ));

    return returnVal;
  }

  // static Future<void> refreshProfileDetails() async {
  //   await getProfile();
  // }

  ///load user profile data
  // static Future<ProfileResponseModel?> getProfile() async {
  //   try {
  //     var result = await CoreService().apiService(
  //         baseURL: Url.baseUrl,
  //         header: {
  //           'Authorization': 'Bearer  ${HiveStore().get(Keys.accessToken)}'
  //         },
  //         method: METHOD.POST,
  //         endpoint: Url.getProfile);

  //     if (result != null) {
  //       var profileResponseModel = ProfileResponseModel.fromJson(result);

  //       if (profileResponseModel.success ?? false) {
  //         var profDet = profileResponseModel.data?.professionalDetails;
  //         var usrDet = profileResponseModel.data?.userDetails;
  //         var usrcat = profileResponseModel.data?.categoryDetails?.category;
  //         var eduDet = profileResponseModel.data?.educationalDetails;
  //         Apputil.storeUserDetails(
  //             userDetails: LoginResponseModel(
  //                 success: true,
  //                 data: loginModel.Data(
  //                     personalDetails: loginModel.PersonalDetails(
  //                         categoryDetails: loginModel.CategoryDetails(
  //                             category: loginModel.Category(
  //                                 categoryName: usrcat?.categoryName,
  //                                 id: usrcat?.id,
  //                                 subCategory: usrcat?.subCategory
  //                                     ?.map((e) => loginModel.SubCategory(
  //                                         categoryName: e.categoryName,
  //                                         id: e.id))
  //                                     .toList())),
  //                         educationalDetails: loginModel.EducationalDetails(
  //                             areaOfSpecialization:
  //                                 eduDet?.areaOfSpecialization,
  //                             highestQualification:
  //                                 eduDet?.highestQualification,
  //                             id: eduDet?.id,
  //                             userId: eduDet?.userId),
  //                         userDetails: loginModel.UserDetails(
  //                             biography: usrDet?.biography,
  //                             contactNumber: usrDet?.contactNumber,
  //                             country:
  //                                 loginModel.Country(id: usrDet?.country?.id, flag: usrDet?.country?.flag, name: usrDet?.country?.name, phonecode: usrDet?.country?.phonecode, shortname: usrDet?.country?.shortname),
  //                             createdAt: usrDet?.createdAt,
  //                             email: usrDet?.email,
  //                             emailVerifiedAt: usrDet?.emailVerifiedAt,
  //                             emailVerify: usrDet?.emailVerify,
  //                             id: usrDet?.id,
  //                             isPaid: usrDet?.isPaid,
  //                             name: usrDet?.name,
  //                             phoneCode: usrDet?.phoneCode,
  //                             phoneVerifiedAt: usrDet?.phoneVerifiedAt,
  //                             phoneVerify: usrDet?.phoneVerify,
  //                             profilePicture: usrDet?.profilePicture,
  //                             socialId: usrDet?.socialId,
  //                             socialType: usrDet?.socialType,
  //                             status: usrDet?.status,
  //                             subscription: loginModel.Subscription(id: usrDet?.subscription?.id, planAmount: usrDet?.subscription?.planAmount, planDerscription: usrDet?.subscription?.planDerscription, planDuration: usrDet?.subscription?.planDuration, planName: usrDet?.subscription?.planName, status: usrDet?.subscription?.status),
  //                             type: usrDet?.type,
  //                             updatedAt: usrDet?.updatedAt),
  //                         professionalDetails: loginModel.ProfessionalDetails(id: profDet?.id, officeName: profDet?.officeName, professionalDesignation: profDet?.professionalDesignation, professionalField: profDet?.professionalField, userId: profDet?.userId)),
  //                     token: HiveStore().get(Keys.accessToken))));
  //       }
  //       return profileResponseModel;
  //     }
  //     return null;
  //   } catch (e) {
  //     printRed(e.toString());
  //     return null;
  //   }
  // }

  static String showOnlyInDebugMode(String message) {
    if (!kReleaseMode) {
      return message;
    }
    return "";
  }

  static Widget showShimmer(
      {double width = 100,
      double height = 25,
      EdgeInsets? padding,
      Color shimmerBaseColor = Colors.black,
      Color shimmerHiglightColor = Colors.grey,
      Color borderColor = Colors.white,
      double borderRadius = 20,
      double borderWidth = 1}) {
    return Shimmer.fromColors(
      baseColor: shimmerBaseColor,
      highlightColor: shimmerHiglightColor,
      child: SizedBox(
        width: width + 2,
        height: height + 2,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              flex: 1,
              child: Container(
                width: width,
                height: height,
                margin: EdgeInsets.all(.5),
                padding: padding ?? EdgeInsets.all(7),
                decoration: BoxDecoration(
                    color: Colors.grey,
                    border: Border.all(color: borderColor, width: borderWidth),
                    borderRadius: BorderRadius.circular(borderRadius)),
              ),
            )
          ],
        ),
      ),
    );
  }

  static String timeStampToDateTime(String timeStamp) {
    try {
      var date =
          DateTime.fromMicrosecondsSinceEpoch(int.parse(timeStamp) * 1000);
      var now = DateTime.now();

      if (DateUtils.isSameDay(date, now)) {
        DateFormat dateFormat = DateFormat().add_jm();
        String returnDT = dateFormat.format(date);
        return returnDT;
      } else {
        DateFormat dateFormat = DateFormat("yMMMd").add_jm();
        String returnDT = dateFormat.format(date);
        return returnDT;
      }
    } catch (err) {
      return "";
    }
  }

  static String strToDateTime(String timeStr) {
    try {
      var date = DateTime.tryParse(timeStr);

      if (date != null) {
        DateFormat dateFormat = DateFormat("dd-MM-yy | ").add_jm();
        String returnDT = dateFormat.format(date);
        return returnDT;
      }
      return "";
    } catch (err) {
      return "";
    }
  }

  static String strToDateTimeV2(String timeStr) {
    try {
      var date = DateTime.tryParse(timeStr);

      if (date != null) {
        DateFormat dateFormat = DateFormat("dd-MM-yy ").add_jm();
        String returnDT = dateFormat.format(date);
        return returnDT;
      }
      return "";
    } catch (err) {
      return "";
    }
  }

  static String timeStampToYearDate(String timeStamp) {
    try {
      var date =
          DateTime.fromMicrosecondsSinceEpoch(int.parse(timeStamp) * 1000);

      DateFormat dateFormat = DateFormat("yMMMd");
      String returnDT = dateFormat.format(date);
      return returnDT;
    } catch (err) {
      return "";
    }
  }

  static String timeStampTotime(String timeStamp) {
    try {
      var date =
          DateTime.fromMicrosecondsSinceEpoch(int.parse(timeStamp) * 1000);

      DateFormat dateFormat = DateFormat().add_jm();
      String returnDT = dateFormat.format(date);
      return returnDT;
    } catch (err) {
      return "";
    }
  }
}

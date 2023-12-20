import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';
import 'package:practiceapp/services/fireStoreServices.dart';
import 'package:practiceapp/services/global.dart';

import '../models/user_model.dart';
import '../services/authservices.dart';

class AuthController extends GetxController {
  int currentindex = 0;

  TextEditingController email = TextEditingController();
  TextEditingController name = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController cPassword = TextEditingController();




  bool check = false;
  bool isCheck = false;
   bool check2 = false;
  bool isCheck2 = false;
  suggestName() async {
    if (currentUser.userName == "") {
      // If the current user doesn't have a username
      name.text =
          (currentUser.email.split('@')[0]).replaceAll(RegExp(r"\d"), "");
// Extracts the username from the email address and removes digits
      bool check =
          await Get.find<FirestoreServices>().checkUserNameExit(name.text);
// Calls a method to check if the generated username already exists in the database

      if (check) {
        // If the generated username already exists
        bool check = await Get.find<FirestoreServices>()
            .checkUserNameExit(name.text);
// Check again (this looks like redundant code)
        if (check) {
          suggestName();
        }
      }
      currentUser.userName = name.text;
    } else {
      name.text =
          (currentUser.email.split('@')[0]).replaceAll(RegExp(r"\d"), "");
      // username.text = username.text + randomNumeric(2);
      bool check =
          await Get.find<FirestoreServices>().checkUserNameExit(name.text);
      if (check) {
        // If it still exists (another redundant check)
        suggestName();
        // Recursively call the suggestName() function to generate a new username
      }
      currentUser.userName = name.text;
      // Set the generated (or existing) username to the currentUser object
    }
    update();
  }

  updateUser() async {
    await Get.find<FirestoreServices>().updateUser(currentUser);
  }

  changeEmail() async {
    if (email.text.isEmpty) {
      EasyLoading.showInfo('Enter Email Address');
      return;
    }
// Check if the email text field is empty. If so, show an info message and return without further processing.

    if (!email.text.isEmail) {
      EasyLoading.showInfo('Enter Valid Email');
      return;
    }
    // Check if the entered email is a valid email format. If not, show an info message and return without further processing.

    String message = await Get.find<AuthServices>().changeEmail(email.text);
// Call a method from the `AuthServices` to attempt to change the user's email address.
//The method returns a message, possibly indicating success or an error message.
    if (message == "") {
      // If the message is empty, it likely means the email change was successful.
      currentUser.email = email.text;
      // Update the `currentUser` object's email field with the new email address.
      await Get.find<FirestoreServices>().registerUser();
      // Register the updated user information, which may include the new email address, in a Firestore database.

      Get.back();
      // Navigate back, possibly closing the current screen or dialog.
    } else {
      // If there is a non-empty message, it likely indicates an error.
      EasyLoading.showInfo(message);
      // Show an info message to the user, displaying the error message received from the `AuthServices`.
    }
  }

  loginUser() async {
    if (email.text.isEmpty) {
      EasyLoading.showInfo('Enter Email Address');
      return;
    }
    // Check if the email text field is empty. If so, show an info message and return without further processing.

    if (!email.text.isEmail) {
      EasyLoading.showInfo('Enter Valid Email');
      return;
    }
    // Check if the entered email is in a valid email format.
    //If not, show an info message and return without further processing.
    if (password.text.isEmpty) {
      EasyLoading.showInfo('Enter Password');
      return;
    }
    // Check if the password text field is empty. If so, show an info message and return without further processing.

    EasyLoading.show();
// Show a loading indicator to indicate that the login process is in progress.
    String str =
        await Get.find<AuthServices>().emailSignIn(email.text, password.text);
    // Call a method from the `AuthServices` to attempt to sign in the user with the provided email and password.
    // The method returns a string `str`, which may indicate success or an error message.
    if (str == "") {
      // If the `str` is empty, it likely means the login was successful.
      currentUser =
          await Get.put(FirestoreServices()).getUser(currentUser.id) ??
              UserModel();
      // Fetch the user's data from the Firestore database using `FirestoreServices`.
      //If the user is found, update the `currentUser` object with the retrieved data; otherwise,
      //create a new `UserModel`.
      await Get.find<FirestoreServices>().updateUser(currentUser);
      // Update the user's information in the Firestore database.
      EasyLoading.dismiss();
      // Dismiss the loading indicator.
      if (FirebaseAuth.instance.currentUser!.emailVerified) {
        // Check if the user's email is verified (assuming email verification is required for login).
        print('login');
        // Get.offAll(Home());
// If the email is verified, print 'login'.
        // You might navigate to the home screen here, but the navigation code is commented out.
      } else {
        print('verify');
        // Get.offAll(const VerifyEmail());
        // If the email is not verified, print 'verify'. You might navigate
        //to a screen for email verification here, but the navigation code is also commented out.
      }
    } else {
      EasyLoading.showError(str);
    }
  }

  forgetPassword() async {
    if (email.text.isEmpty) {
      EasyLoading.showInfo('Enter Email Address');
      return;
    }
    // Check if the email text field is empty. If so, show an info message and return without
    //further processing.

    if (!email.text.isEmail) {
      EasyLoading.showInfo('Enter Valid Email');
      return;
    }
    // Check if the entered email is in a valid email format.
    //If not, show an info message and return without further processing.
    EasyLoading.show();
    // Show a loading indicator to indicate that the password reset process is in progress.
    String str = await Get.find<AuthServices>().forgetPassword(email.text);
    // Call a method from the `AuthServices` to initiate the password reset process for the provided email address. The method returns a string `str`, which may indicate success or an error message.

    if (str == "") {
      // If the `str` is empty, it likely means the password reset process was initiated successfully.
      EasyLoading.dismiss();
      // Dismiss the loading indicator.
      EasyLoading.showInfo('Check your email\nfor reset password');
      // Show an info message indicating that the user should check their email for instructions on resetting their password.

      Get.back();
      // Navigate back, possibly closing the current screen or dialog.
    } else {
      // If there was an error (i.e., `str` is not empty), show an error message using `EasyLoading`.
      EasyLoading.showError(str);
    }
  }

  registerUser() async {
    EasyLoading
        .show(); // Show a loading indicator to indicate that the registration process is in progress.

    if (name.text.isEmpty) {
      return; // If the username is empty, return without further processing.
    }

    if (email.text.isEmpty) {
      EasyLoading.showInfo('Enter Email Address');
      return; // If the email is empty, show an info message and return.
    }

    if (!email.text.isEmail) {
      EasyLoading.showInfo('Enter Valid Email');
      return; // If the email is not in a valid format, show an info message and return.
    }

    if (password.text.isEmpty) {
      EasyLoading.showInfo('Enter Password');
      return; // If the password is empty, show an info message and return.
    }

    if (password.text.length < 6) {
      EasyLoading.showInfo('Your password is weak');
      return; // If the password is weak (less than 6 characters), show an info message and return.
    }

    if (password.text != cPassword.text) {
      EasyLoading.showInfo('Password doesn\'t match');
      return; // If the password and its confirmation don't match, show an info message and return.
    }

    try {
      if (currentUser.userType == 1) {
        name.text = name.text.replaceAll(' ', '');
        // Remove spaces from the username.

        bool check = await Get.find<FirestoreServices>()
            .checkUserNameExit(name.text.toLowerCase());
        // Check if the username is available in Firestore. Convert it to lowercase for consistent checking.

        if (check) {
          EasyLoading.showInfo('Username is not available');
          return; // If the username is not available, show an info message and return.
        }
        currentUser.userName = name.text;
        // Set the username in the `currentUser` object.
      } else {
        currentUser.name = name.text;
        // Set the user's name in the `currentUser` object.
      }

      currentUser.email = email.text;
      currentUser.initialPassword = password.text;
      currentUser.createDate = DateTime.now();
      // Set various user attributes in the `currentUser` object.

      String str = await Get.find<AuthServices>().emailSignUp();
      // Call a method from `AuthServices` to sign up the user using email and password. The method returns a string `str`, which may indicate success or an error message.

      if (str == "") {
        await Get.find<FirestoreServices>().registerUser();
        // Register the user in Firestore using `FirestoreServices`.

        EasyLoading.dismiss();
        // Dismiss the loading indicator.

        await Get.find<AuthServices>().sendEmailVarification();
        // Send an email verification request (assuming email verification is required).

        // You have navigation code commented out. Depending on your app's flow, you might navigate the user to a verification screen.
      } else {
        EasyLoading.showError(str);
        // If there was an error during the signup process, show an error message.
      }
    } catch (_) {
      // Catch and handle any exceptions that may occur during the registration process.
    }

    EasyLoading.dismiss();
    // Dismiss the loading indicator (even if there was an error).
  }

  gmailLogin() async {
    EasyLoading
        .show(); // Show a loading indicator to indicate that the login process is in progress.

    bool value = await Get.find<AuthServices>().googleLogin();
    // Call a method from `AuthServices` to initiate Google Sign-In. The method returns a boolean `value`, indicating whether the sign-in was successful.

    if (value) {
      // If Google Sign-In was successful:

      EasyLoading.dismiss();
      // Dismiss the loading indicator.

      UserModel? user =
          await Get.find<FirestoreServices>().getUser(currentUser.id);
      // Attempt to retrieve user data from Firestore using `FirestoreServices` based on the current user's ID.

      if (user == null) {
        // If the user doesn't exist in Firestore:

        currentUser.userType = 0;
        // Set the user type to 0 (or any default value).

        await Get.find<FirestoreServices>().registerUser();
        // Register the user in Firestore using `FirestoreServices`.
      } else {
        // If the user exists in Firestore:

        currentUser = user;
        // Update the `currentUser` object with the retrieved user data.

        await Get.find<FirestoreServices>().updateUser(currentUser);
        // Update the user's information in Firestore using `FirestoreServices`.
      }

      // You have navigation code commented out. Depending on your app's flow, you might navigate the user to the home screen here.
    } else {
      // If Google Sign-In was not successful:

      currentUser = UserModel();
      // Reset the `currentUser` object.

      EasyLoading.showInfo('Error in Login');
      // Show an info message indicating an error in login.
    }
 
}
}
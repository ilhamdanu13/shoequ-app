import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shoequ/pages/cart_page.dart';
import 'package:shoequ/pages/checkout_page.dart';
import 'package:shoequ/pages/checkout_success_page.dart';
import 'package:shoequ/pages/detail_chat_page.dart';
import 'package:shoequ/pages/edit_profile_page.dart';
import 'package:shoequ/pages/home/main_page.dart';
import 'package:shoequ/pages/product_page.dart';
import 'package:shoequ/pages/sign_in_page.dart';
import 'package:shoequ/pages/sign_up_page.dart';
import 'pages/splash_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => SplashPage(),
        '/sign-in': (context) => SignInPage(),
        '/sign-up': (context) => SignUpPage(),
        '/home': (context) => MainPage(),
        '/detail-chat': (context) => DetailChatPage(),
        '/edit-profile': (context) => EditProfilePage(),
        '/product': (context) => ProductPage(),
        '/cart': (context) => CartPage(),
        '/checkout': (context) => CheckoutPage(),
        '/checkout-success': (context) => CheckoutSuccessPage()
      },
    );
  }
}

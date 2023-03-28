import 'package:flutter/material.dart';
import 'package:shoequ/theme.dart';

class CheckoutSuccessPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget header() {
      return AppBar(
        backgroundColor: backgroundColor1,
        elevation: 0,
        centerTitle: true,
        title: Text('Checkout Success'),
      );
    }

    Widget content() {
      return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/icon_cart.png',
              width: 80,
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'You made a transaction',
              style: primaryTextStyle.copyWith(
                fontSize: 16,
                fontWeight: medium,
              ),
            ),
            SizedBox(
              height: 12,
            ),
            Text(
              'Stay at home while we\nprepare your dream shoes',
              style: secondaryTextStyle,
              textAlign: TextAlign.center,
            ),
            Container(
              width: 196,
              height: 44,
              margin: EdgeInsets.only(
                top: defaultMargin,
              ),
              child: TextButton(
                onPressed: () {
                  Navigator.pushNamedAndRemoveUntil(
                      context, '/home', (route) => false);
                },
                style: TextButton.styleFrom(
                    backgroundColor: primaryColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    )),
                child: Text(
                  'Order Other Shoes',
                  style: primaryTextStyle.copyWith(
                    fontSize: 16,
                    fontWeight: medium,
                  ),
                ),
              ),
            ),
            Container(
              width: 196,
              height: 44,
              margin: EdgeInsets.only(
                top: 12,
              ),
              child: TextButton(
                onPressed: () {},
                style: TextButton.styleFrom(
                    backgroundColor: Color(0xff39374b),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    )),
                child: Text(
                  'View My Shoes',
                  style: primaryTextStyle.copyWith(
                    fontSize: 16,
                    fontWeight: medium,
                    color: Color(0xffb7b6bf),
                  ),
                ),
              ),
            )
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: backgroundColor3,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(70),
        child: header(),
      ),
      body: content(),
    );
  }
}

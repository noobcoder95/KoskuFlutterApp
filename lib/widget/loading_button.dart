import 'package:flutter/material.dart';

import 'package:Koskuappfront/theme.dart';

class LoadingButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: double.infinity,
      margin: EdgeInsets.only(top: 30),
      child: TextButton(
        onPressed: () {},
        style: TextButton.styleFrom(
            backgroundColor: primaryColor,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12))),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
                width: 16,
                height: 16,
                child: CircularProgressIndicator(
                  valueColor: AlwaysStoppedAnimation(primaryTextColor),
                )),
            SizedBox(
              width: 6,
            ),
            Text(
              'Loading',
              style:
                  primaryTextStyle.copyWith(fontWeight: semiBold, fontSize: 18),
            ),
          ],
        ),
      ),
    );
  }
}

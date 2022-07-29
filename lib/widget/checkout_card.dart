import 'package:Koskuappfront/models/models.dart';
import 'package:flutter/material.dart';
import 'package:Koskuappfront/theme.dart';

class CheckoutCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 12),
      padding: EdgeInsets.symmetric(
        horizontal: 12,
        vertical: 20,
      ),
      decoration: BoxDecoration(
        color: backgroundColor3,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.network(
              "",
              width: 90,
              height: 90,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(
            width: 10,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Kos Bu Haji Rojah",
                style: primaryTextStyle.copyWith(fontWeight: semiBold),
              ),
              SizedBox(
                height: 3,
              ),
              Text(
                'Rp.' + '50000',
                style: priceTextStyle2.copyWith(fontWeight: medium),
              )
            ],
          ),
        ],
      ),
    );
  }
}

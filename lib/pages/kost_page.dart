import 'package:Koskuappfront/models/models.dart';
import 'package:Koskuappfront/pages/kost_maps.dart';
import 'package:flutter/material.dart';
import 'package:Koskuappfront/theme.dart';
import 'package:intl/intl.dart';

class KostPage extends StatefulWidget {
  final KostModel kost;

  KostPage(
    this.kost,
  );
  // KostPage({this.transaction});
  @override
  _KostPageState createState() => _KostPageState();
}

class _KostPageState extends State<KostPage> {
  List galeriViews = [
    'assets/product.png',
    'assets/product.png',
    'assets/product.png',
    'assets/product.png',
    'assets/product.png',
    'assets/product.png',
  ];
  @override
  Widget build(BuildContext context) {
    Widget galeriCardViews(String picture) {
      return Container(
        height: 70,
        width: 70,
        margin: EdgeInsets.only(
          right: 20,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(6),
          image: DecorationImage(
            image: AssetImage(picture),
          ),
        ),
      );
    }

    Widget header() {
      return Column(
        children: [
          Container(
            margin: EdgeInsets.only(
              top: 20,
              left: defaultMargin,
              right: defaultMargin,
            ),
            child: Stack(
              children: [
                Image.network(
                  widget.kost.picture,
                  width: MediaQuery.of(context).size.width,
                  height: 350,
                ),
                Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Icon(Icons.chevron_left),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      );
    }

    Widget content() {
      return Container(
        width: double.infinity,
        margin: EdgeInsets.only(top: 10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.vertical(
            top: Radius.circular(22),
          ),
          color: backgroundColor,
        ),
        child: Column(
          children: [
            //HEADER
            Container(
              margin: EdgeInsets.only(
                top: 15,
                left: defaultMargin,
                right: defaultMargin,
              ),
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Expanded(
                              child: Text(
                                widget.kost.name,
                                style: primaryTextStyle.copyWith(
                                    fontSize: 18, fontWeight: semiBold),
                              ),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Icon(
                              Icons.star,
                              color: starColor,
                            ),
                            SizedBox(
                              width: 2,
                            ),
                            Text(
                              widget.kost.ratings.toString(),
                              style: primaryTextStyleWht.copyWith(
                                  fontSize: 14, fontWeight: light),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 3,
                        ),
                        Text(
                          widget.kost.status,
                          style: priceTextStyle2,
                        ),
                        SizedBox(
                          height: 3,
                        ),
                        Text(widget.kost.tags, style: alertTextStyle2),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          'Pemilik : ${widget.kost.user.name} ',
                          style: primaryTextStyleWht,
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 30),
                    child: Image.asset(
                      'assets/btn_wishlist.png',
                      width: 40,
                    ),
                  ),
                ],
              ),
            ),

            //price

            Container(
              width: double.infinity,
              margin: EdgeInsets.only(
                top: 15,
                left: defaultMargin,
                right: defaultMargin,
              ),
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: backgroundColor3,
                borderRadius: BorderRadius.circular(2),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Harga/Bulan:',
                    style: primaryTextStyle,
                  ),
                  Text(
                    NumberFormat.currency(
                      symbol: 'IDR ',
                      locale: 'id-IDR',
                      decimalDigits: 0,
                    ).format(widget.kost.price),
                    style: primaryTextStyle.copyWith(
                        fontWeight: bold, fontSize: 16),
                  ),
                ],
              ),
            ),

            //fasilitas
            Container(
              width: double.infinity,
              margin: EdgeInsets.only(
                top: 15,
                left: defaultMargin,
                right: defaultMargin,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Alamat: ',
                    style: primaryTextStyle.copyWith(
                      fontSize: 16,
                      fontWeight: medium,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    widget.kost.address,
                    style: subTextStyle.copyWith(fontWeight: light),
                    textAlign: TextAlign.left,
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    'Kabupaten: ' + widget.kost.district,
                    style: subTextStyle.copyWith(fontWeight: light),
                    textAlign: TextAlign.left,
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    'Provinsi: ' + widget.kost.regency,
                    style: subTextStyle.copyWith(fontWeight: light),
                    textAlign: TextAlign.left,
                  ),
                ],
              ),
            ),

            //Info
            Container(
              width: double.infinity,
              margin: EdgeInsets.only(
                top: 15,
                left: defaultMargin,
                right: defaultMargin,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Info:',
                    style: primaryTextStyle.copyWith(
                      fontSize: 16,
                      fontWeight: medium,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'No Telfon/Whatsapp: ' + widget.kost.whatsappNumber,
                    style: subTextStyle.copyWith(fontWeight: light),
                    textAlign: TextAlign.left,
                  ),
                ],
              ),
            ),

            ///alamat
            Container(
              width: double.infinity,
              margin: EdgeInsets.only(
                top: 15,
                left: defaultMargin,
                right: defaultMargin,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Fasilitas:',
                    style: primaryTextStyle.copyWith(
                      fontSize: 16,
                      fontWeight: medium,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    widget.kost.facility,
                    style: subTextStyle.copyWith(fontWeight: light),
                    textAlign: TextAlign.justify,
                  ),
                ],
              ),
            ),

            //galeri

            Container(
              width: double.infinity,
              margin: EdgeInsets.only(top: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: defaultMargin),
                    child: Text(
                      'Galeri',
                      style: primaryTextStyle.copyWith(
                          fontSize: 14, fontWeight: medium),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Padding(
                      padding: EdgeInsets.only(left: 30),
                      child: Row(
                        children: galeriViews
                            .map((picture) => galeriCardViews(picture))
                            .toList(),
                      ),
                    ),
                  ),
                ],
              ),
            ),

            //call to action
            Container(
              width: double.infinity,
              margin: EdgeInsets.only(top: 10, left: 30, right: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Fitur Lainnya',
                    style: primaryTextStyle.copyWith(
                      fontSize: 16,
                      fontWeight: medium,
                    ),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 54,
                        width: 54,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('assets/btn_chat_white.png'),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Container(
                        height: 54,
                        width: 54,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('assets/btn_call_white.png'),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => KostMaps(widget.kost)));
                        },
                        child: Container(
                          height: 54,
                          width: 54,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('assets/btn_maps_white.png'),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),

            /// button pesan
            Container(
              width: double.infinity,
              margin: EdgeInsets.all(30),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 54,
                      child: TextButton(
                        onPressed: () {
                          Navigator.pushNamed(context, '/checkout');
                        },
                        style: TextButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadiusDirectional.circular(12),
                          ),
                          backgroundColor: primaryColor,
                        ),
                        child: Text(
                          'Pesan Sekarang',
                          style: primaryTextStyle.copyWith(
                              fontSize: 18, fontWeight: semiBold),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: backgroundColor2,
      body: ListView(
        children: [
          header(),
          content(),
        ],
      ),
    );
  }
}

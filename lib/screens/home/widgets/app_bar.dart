import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

PreferredSize appBar() {
  return PreferredSize(
    preferredSize: const Size.fromHeight(kToolbarHeight),
    child: AppBar(
      backgroundColor: Colors.transparent,
      toolbarHeight: (kToolbarHeight),
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: const [
          LeadingSection(),
          TrailingSection(),
        ],
      ),
      elevation: 0,
      systemOverlayStyle: const SystemUiOverlayStyle(
        // status bar color
        statusBarColor: Colors.transparent,
        // Status bar brightness (optional)
        statusBarIconBrightness: Brightness.light, // For Android (dark icons)
        statusBarBrightness: Brightness.light, // For iOS (dark icons)
      ),
    ),
  );
}

class LeadingSection extends StatelessWidget {
  const LeadingSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          alignment: Alignment.center,
          height: 17,
          width: 17,
          decoration: BoxDecoration(
            color: const Color(0xFFFF1A1A),
            borderRadius: BorderRadius.circular(9)
          ),
          padding: const EdgeInsets.all(2.0),
          child: const AutoSizeText(
            '8',
            minFontSize: 7,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w700,
              fontFamily: 'poppins_bold',
            ),
          ),
        ),
        const SizedBox(width: 3,),
        const Image(
          height: 27,
          width: 27,
          image: AssetImage('assets/images/home/app_bar/leading_section/circle.PNG'),),
      ],
    );
  }
}

class TrailingSection extends StatelessWidget {
  const TrailingSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30,
      width: 101,
      decoration: BoxDecoration(
        color: const Color(0xFF0E2D5B),
        borderRadius: BorderRadius.circular(15)
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            mainAxisSize: MainAxisSize.min,
            children: const [
              Image(
                height: 11,
                width: 11,
                image: AssetImage(
                  'assets/images/home/app_bar/trailing_section/coin.png',
                ),
              ),
              SizedBox(width: 3,),
              AutoSizeText(
                '500',
                minFontSize: 9,
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'poppins_regular',
                  fontWeight: FontWeight.w600,
                  fontSize: 13,
                ),
              )
            ],
          ),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: const [
              Image(
                height: 11,
                width: 11,
                image: AssetImage(
                  'assets/images/home/app_bar/trailing_section/money.png',
                ),
              ),
              SizedBox(width: 3,),
              AutoSizeText(
                '500',
                minFontSize: 9,
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'poppins_regular',
                  fontSize: 13,
                  fontWeight: FontWeight.w600,
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}




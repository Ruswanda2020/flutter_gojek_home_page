import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gojek_ui/theme.dart';

class Search extends StatelessWidget {
  const Search({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 25, left: 15, right: 15),
      child: Row(
        children: [
          Flexible(
            fit: FlexFit.tight,
            child: Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                    color: dark4,
                    borderRadius: BorderRadius.circular(30),
                    border: Border.all(color: const Color(0xFF999798))),
                child: Row(
                  children: [
                    SvgPicture.asset(
                      "assets/icons/search-icon.svg",
                      colorFilter: ColorFilter.mode(dark1, BlendMode.srcIn),
                      width: 20,
                      height: 20,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Text(
                      "Cari Layanan, makanan, & tujuan",
                      style: reguler14.copyWith(color: dark3),
                    ),
                  ],
                )),
          ),
          const SizedBox(
            width: 10,
          ),
          SizedBox(
            width: 35,
            height: 35,
            child: Stack(
              children: [
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(35 / 2)),
                  clipBehavior: Clip.hardEdge,
                  child: Image.asset("assets/images/Avatar.png"),
                ),
                Positioned(
                    right: 0,
                    bottom: 0,
                    child: Container(
                      width: 16,
                      height: 16,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(35 / 2),
                          color: const Color(0xFFD1E7EE)),
                      clipBehavior: Clip.hardEdge,
                      child: SvgPicture.asset("assets/icons/start.svg"),
                    )),
              ],
            ),
          )
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gojek_ui/theme.dart';

class Akses extends StatelessWidget {
  const Akses({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15, right: 15, top: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Akses Cepat",
            style: bold18.copyWith(color: dark1),
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            width: 345,
            height: 120,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                border: Border.all(color: const Color(0xFFE8E8E8))),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ...[
                  "Pintu Masuk, MNC Land",
                  "Pintu Keluar, MNC Land"
                ].map((text) => Padding(
                    padding: const EdgeInsets.all(16),
                    child: Row(
                      children: [
                        Stack(
                          alignment: Alignment.center,
                          children: [
                            Container(
                              width: 24,
                              height: 25,
                              decoration: BoxDecoration(
                                color: green2,
                                borderRadius: BorderRadius.circular(20),
                              ),
                            ),
                            SizedBox(
                              width: 16, // Ukuran baru ikon
                              height: 16, // Ukuran baru ikon
                              child: SvgPicture.asset(
                                'assets/icons/goride.svg',
                                colorFilter: const ColorFilter.mode(
                                  Colors.white,
                                  BlendMode.srcIn,
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          width: 12,
                        ),
                        Flexible(
                          fit: FlexFit.tight,
                          child: Text(
                            text,
                            style: reguler14.copyWith(color: dark1),
                          ),
                        ),
                        const SizedBox(
                          width: 24,
                        ),
                        SvgPicture.asset(
                          "assets/icons/left.svg",
                          height: 24,
                          colorFilter: ColorFilter.mode(dark1, BlendMode.srcIn),
                        )
                      ],
                    )))
              ],
            ),
          )
        ],
      ),
    );
  }
}

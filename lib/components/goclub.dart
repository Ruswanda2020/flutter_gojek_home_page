import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gojek_ui/theme.dart';

class GoClub extends StatelessWidget {
  const GoClub({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 19, left: 15, right: 15),
      child: Container(
        width: double.infinity,
        height: 65,
        clipBehavior: Clip.hardEdge,
        decoration: BoxDecoration(
            gradient: const LinearGradient(
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                colors: [Color(0xFFEAF3F6), Colors.white]),
            borderRadius: BorderRadius.circular(15),
            border: Border.all(color: const Color(0xFFE8E8E8))),
        child: Stack(
          children: [
            Positioned(
              left: 8,
              top: 4,
              bottom: 4,
              child: SvgPicture.asset("assets/icons/dots.svg"),
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SvgPicture.asset(
                    "assets/icons/start.svg",
                    height: 40,
                  ),
                  const SizedBox(
                    width: 16,
                  ),
                  Flexible(
                      fit: FlexFit.tight,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text("117 XP lagi ada harta Karun",
                              style: semibold14.copyWith(color: dark1)),
                          const SizedBox(
                            height: 8,
                          ),
                          Container(
                            clipBehavior: Clip.hardEdge,
                            width: double.infinity,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(2),
                            ),
                            child: LinearProgressIndicator(
                              backgroundColor: dark3,
                              color: green1,
                              value: .8,
                            ),
                          )
                        ],
                      )),
                  const SizedBox(
                    width: 24,
                  ),
                  SvgPicture.asset(
                    "assets/icons/left.svg",
                    height: 24,
                    colorFilter: ColorFilter.mode(dark1, BlendMode.srcIn),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

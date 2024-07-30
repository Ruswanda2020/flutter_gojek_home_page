import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gojek_ui/datas/icon.dart';
import 'package:gojek_ui/theme.dart';

class Menu extends StatelessWidget {
  const Menu({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 27,
        right: 27,
        top: 32,
      ),
      child: SizedBox(
        height: 157,
        child: GridView.count(
          crossAxisCount: 4,
          mainAxisSpacing: 8,
          children: [
            ...menuIcons.map((icon) => Column(
                  children: [
                    Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                          color:
                              icon.icon == "goclub" ? Colors.white : icon.color,
                          borderRadius: BorderRadius.circular(20)),
                      child: Center(
                        child: SizedBox(
                          width: 25,
                          height: 25,
                          child: SvgPicture.asset(
                            'assets/icons/${icon.icon}.svg',
                            colorFilter: icon.icon == 'goclub'
                                ? ColorFilter.mode(icon.color!, BlendMode.srcIn)
                                : icon.icon == 'other'
                                    ? ColorFilter.mode(dark2, BlendMode.srcIn)
                                    : const ColorFilter.mode(
                                        Colors.white, BlendMode.srcIn),
                            width: 24,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 9,
                    ),
                    Text(
                      icon.title,
                      style: reguler12_5.copyWith(color: dark2),
                    ),
                  ],
                ))
          ],
        ),
      ),
    );
  }
}

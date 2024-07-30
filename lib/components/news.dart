import 'package:flutter/material.dart';
import 'package:gojek_ui/datas/news.dart';
import 'package:gojek_ui/theme.dart';

class News extends StatelessWidget {
  const News({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20, top: 32),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            'assets/images/image 8.png',
            height: 14,
          ),
          const SizedBox(
            height: 8,
          ),
          Text(
            "Lebih Hemat Pake GoPayLater 🤩",
            style: bold16.copyWith(color: dark1),
          ),
          const SizedBox(
            height: 8,
          ),
          Text(
            "Yuk, belanja di Tokopedia pake GoPay Later dan nikmati Cashback-nya~",
            style: reguler14.copyWith(color: dark2),
          ),
          const SizedBox(
            height: 24,
          ),
          ...news.map((image) => Padding(
                padding: const EdgeInsets.only(bottom: 24, left: 16, right: 16),
                child: Container(
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(color: dark4)),
                  child: Column(
                    children: [
                      Image.asset("assets/images/${image.image}"),
                      Padding(
                          padding: const EdgeInsets.all(24),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                image.title,
                                style: bold16.copyWith(color: dark1),
                              ),
                              Text(
                                image.description,
                                style: reguler14.copyWith(color: dark2),
                              ),
                            ],
                          ))
                    ],
                  ),
                ),
              ))
        ],
      ),
    );
  }
}

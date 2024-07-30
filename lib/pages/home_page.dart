import 'package:flutter/material.dart';
import 'package:gojek_ui/components/akses.dart';
import 'package:gojek_ui/components/goclub.dart';
import 'package:gojek_ui/components/gopay.dart';
import 'package:gojek_ui/components/header.dart';
import 'package:gojek_ui/components/menus.dart';
import 'package:gojek_ui/components/news.dart';
import 'package:gojek_ui/components/search.dart';
import 'package:gojek_ui/datas/icon.dart';
import 'package:gojek_ui/theme.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: green2,
        elevation: 0,
        toolbarHeight: 71,
        title: const Header(),
      ),
      body: const SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [Search(), Gopay(), Menu(), GoClub(), Akses(), News()],
        ),
      ),
    );
  }
}

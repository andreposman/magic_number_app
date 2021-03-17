import 'package:flutter/material.dart';
import 'package:magic_number_app/pages/asset_form_page.dart';

class HomeScreenPage extends StatefulWidget {
  @override
  _HomeScreenPage createState() => _HomeScreenPage();
}

class _HomeScreenPage extends State<HomeScreenPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AssetFormPage(),
    );
  }
}

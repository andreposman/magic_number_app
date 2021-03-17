import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:magic_number_app/pages/components/form_component.dart';

class AssetFormPage extends StatelessWidget {
  String _assetSymbol;
  String _desiredMonthlyIncome;

  void _showSnackBarSuccess(
      BuildContext context, String assetSymbol, String desiredMonthlyIncome) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Icon(Icons.info_outline, size: 32),
            const SizedBox(width: 16),
            Expanded(
              child: Text(
                'FII: $assetSymbol \nRenda mensal desejada: R\$$desiredMonthlyIncome',
                style: TextStyle(fontSize: 16),
              ),
            ),
          ],
        ),
        backgroundColor: Colors.blue,
        duration: Duration(seconds: 5),
        shape: RoundedRectangleBorder(
          side: BorderSide.none,
          borderRadius: BorderRadius.circular(20.0),
        ),
        margin: EdgeInsets.symmetric(vertical: 16, horizontal: 12),
        behavior: SnackBarBehavior.floating,
        elevation: 8,
      ),
    );

    // Scaffold.of(context)
    //   ..removeCurrentSnackBar()
    //   ..showSnackBar(snackBar);
  }

  void _showSnackBarError(
      BuildContext context, String assetSymbol, String desiredMonthlyIncome) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Icon(Icons.error_outline, size: 32),
            const SizedBox(width: 16),
            Expanded(
              child: Text(
                'This is a error message',
                style: TextStyle(fontSize: 16),
              ),
            ),
          ],
        ),
        backgroundColor: Colors.red,
        duration: Duration(seconds: 5),
        shape: RoundedRectangleBorder(
          side: BorderSide.none,
          borderRadius: BorderRadius.circular(20.0),
        ),
        margin: EdgeInsets.symmetric(vertical: 16, horizontal: 12),
        behavior: SnackBarBehavior.floating,
        elevation: 8,
      ),
    );

// ScaffoldMessenger.removeCurrentSnackBar
    // Scaffold.of(context)
    //   ..removeCurrentSnackBar()
    //   ..showSnackBar(snackBar);
  }

  @override
  Widget build(BuildContext context) {
    final theme = NeumorphicTheme.currentTheme(context);
    final baseColor = theme.baseColor;
    final accentColor = theme.accentColor;

    return Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: Container(
              child: Image.asset(
                "assets/logo_transparent.png",
                fit: BoxFit.contain,
              ),
              height: 300,
              width: 300,
            ),
          ),
          assetForm(context),
          NeumorphicButton(
              onPressed: () {
                print(NeumorphicTheme.of(context).themeMode);
                NeumorphicTheme.of(context).themeMode = ThemeMode.dark;
              },
              style: NeumorphicStyle(
                color: theme.baseColor,
                boxShape: NeumorphicBoxShape.roundRect(
                  BorderRadius.circular(10),
                ),
              ),
              child: Text('teste'))
        ]);
  }
}

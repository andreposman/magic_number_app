import 'package:flutter/material.dart';
import 'package:magic_number_app/model/asset.dart';

class AssetDetailsPage extends StatelessWidget {
  final Asset assetData;

  AssetDetailsPage({
    Key key,
    this.assetData,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: 450,
              ),
              Text('assetData'),
            ],
          ),
        ),
      ),
    );
  }
}

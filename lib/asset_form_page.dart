import 'dart:ui';

import 'package:flutter/material.dart';

class AssetFormPage extends StatefulWidget {
  @override
  _AssetFormState createState() => _AssetFormState();
}

class _AssetFormState extends State<AssetFormPage> {
  // global key, is a reference to the form itself. standard way to use forms in flutter
  final GlobalKey<_AssetFormState> _formKey = GlobalKey<_AssetFormState>();

  Widget _buildAssetSymbol() {
    return TextFormField(
      maxLength: 6,
      textCapitalization: TextCapitalization.words,
      decoration: InputDecoration(
        labelText: 'Digite o codigo do FII',
        labelStyle: TextStyle(
          color: Colors.black,
          fontSize: 20,
          fontWeight: FontWeight.normal,
          wordSpacing: 0.5,
          letterSpacing: 1,
          decorationThickness: 10,
        ),
        helperText: 'Ex: HGLG11',
        helperStyle: (TextStyle(
          color: Colors.grey,
          fontSize: 10,
          fontStyle: FontStyle.italic,
        )),
      ),
      // ignore: missing_return
      validator: (String value) {
        if (value.isEmpty) {
          return 'O codigo do FII é obrigatório';
        }
      },
      onSaved: (String value) {
        _assetSymbol = value;
      },
    );
  }

  Widget _buildDesiredMonthlyIncome() {
    return TextFormField(
      decoration: InputDecoration(
        labelText: 'Digite a renda mensal desejada',
        labelStyle: TextStyle(
          color: Colors.black,
          fontSize: 20,
          fontWeight: FontWeight.normal,
          wordSpacing: 0.5,
          letterSpacing: 1,
          decorationThickness: 10,
        ),
        helperText: 'Ex: 1000',
        helperStyle: (TextStyle(
          color: Colors.grey,
          fontSize: 10,
          fontStyle: FontStyle.italic,
        )),
      ),
    );
  }

  String _assetSymbol;
  String _desiredMonthlyIncome;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        margin: EdgeInsets.all(24),
        child: Form(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              _buildAssetSymbol(),
              _buildDesiredMonthlyIncome(),
              SizedBox(height: 50),
              RaisedButton(
                child: Text(
                  'Calcular',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.normal,
                      wordSpacing: 0.5,
                      letterSpacing: 1),
                ),
                // elevation: 2.5,
                onPressed: () {},
                color: Colors.blue,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

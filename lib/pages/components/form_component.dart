import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

Widget assetForm(BuildContext context) {
  final theme = NeumorphicTheme.currentTheme(context);
  final baseColor = theme.baseColor;
  final accentColor = theme.accentColor;
  final assetController = TextEditingController();
  final incomeController = TextEditingController();

  return Container(
    padding: EdgeInsets.only(
      left: 32,
      right: 32,
    ),
    child: Column(
      children: [
        Text(
          "Calcule sua renda passiva",
          style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: theme.defaultTextColor),
        ),
        SizedBox(
          height: 24,
        ),
        _buildAssetSymbol(assetController),
        SizedBox(
          height: 10,
        ),
        _buildDesiredMonthlyIncome(incomeController),
      ],
    ),
  );
}

Widget _buildAssetSymbol(TextEditingController assetController) {
  final label = 'Qual é o FII?';
  final _icon = Icon(Icons.apartment_sharp);
  final color = Colors.black;

  return TextFormField(
    controller: assetController,
    style: TextStyle(
      fontSize: 13,
      height: 1.5,
      letterSpacing: 1.2,
    ),
    maxLength: 6,
    textCapitalization: TextCapitalization.words,
    decoration: _inputDecoration(label, _icon, color),
    validator: (String value) {
      if (value.isEmpty || value.length < 6) {
        return 'O codigo do FII é obrigatório!';
      }

      return null;
    },
    onSaved: (String value) {
      value = value.trim();
    },
  );
}

Widget _buildDesiredMonthlyIncome(TextEditingController incomeController) {
  final label = 'Quanto quer ganhar por mês?';
  final icon = Icon(Icons.monetization_on_sharp);
  final color = Colors.black;

  return TextFormField(
    controller: incomeController,
    keyboardType: TextInputType.numberWithOptions(decimal: false),
    inputFormatters: <TextInputFormatter>[
      FilteringTextInputFormatter.digitsOnly,
    ],
    maxLength: 8,
    style: TextStyle(
      fontSize: 13,
      height: 1.5,
      letterSpacing: 1.2,
    ),
    decoration: _inputDecoration(label, icon, color),
    validator: (String value) {
      if (value.isEmpty) {
        final _icon = Icon(Icons.error_outline_outlined);

        _inputDecorationError(_icon);

        return 'A renda mensal é obrigatória e maior que R\$0 !';
      }

      return null;
    },
    onSaved: (String value) {
      value = value.trim();
    },
  );
}

InputDecoration _inputDecoration(String _label, Icon _icon, Color _color) {
  final decoration = InputDecoration(
    prefixIcon: _icon,
    fillColor: _color,
    enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(20)),
        borderSide:
            BorderSide(color: Colors.white70, style: BorderStyle.solid)),
    focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(10)),
        borderSide: BorderSide(color: Colors.blue, style: BorderStyle.solid)),
    hintText: _label,
    hintStyle: TextStyle(color: Colors.black45),
  );

  return decoration;
}

InputDecoration _inputDecorationError(Icon _icon) {
  final errorDecoration = InputDecoration(
    alignLabelWithHint: false,
    contentPadding: EdgeInsets.all(15),
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(20),
      gapPadding: 5,
    ),
    prefixIcon: _icon,
    labelStyle: TextStyle(
      color: Colors.black,
      fontSize: 25,
      wordSpacing: 0.5,
      letterSpacing: 1,
      decorationThickness: 10,
    ),
  );

  return errorDecoration;
}

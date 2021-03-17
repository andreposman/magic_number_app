import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:magic_number_app/model/asset.dart';

class AssetRepository {
  final url = 'https://magic-number-posman.herokuapp.com/asset';

  Future<Asset> getData(String symbol, String desiredMonthlyIncome) async {
    final result = await http.Client().get(url);

    if (result.statusCode != 200) {
      throw Exception('\nMAGIC NUMBER API FETCH ERROR\n');
    }

    return parsedJSON(result.body);
  }

  Asset parsedJSON(final response) {
    final decodedJSON = json.decode(response);

    final assetJSON = decodedJSON['asset'];
    final asset = Asset.fromJson(assetJSON);

    print(asset.name);

    return asset;
  }
}

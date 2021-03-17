import 'dart:convert';

AssetData assetDataFromJson(String str) => AssetData.fromJson(json.decode(str));

String assetDataToJson(AssetData data) => json.encode(data.toJson());

class AssetData {
  AssetData({
    this.asset,
  });

  Asset asset;

  factory AssetData.fromJson(Map<String, dynamic> json) => AssetData(
        asset: Asset.fromJson(json["asset"]),
      );

  Map<String, dynamic> toJson() => {
        "asset": asset.toJson(),
      };
}

class Asset {
  Asset({
    this.symbol,
    this.name,
    this.price,
    this.yieldAverage24M,
    this.dividendYield,
    this.minPrice52Wk,
    this.maxPrice52Wk,
    this.performanceLast12M,
    this.performanceThisMonth,
    this.goals,
  });

  String symbol;
  String name;
  String price;
  String yieldAverage24M;
  String dividendYield;
  String minPrice52Wk;
  String maxPrice52Wk;
  String performanceLast12M;
  String performanceThisMonth;
  Goals goals;

  factory Asset.fromJson(Map<String, dynamic> json) => Asset(
        symbol: json["symbol"],
        name: json["name"],
        price: json["price"],
        yieldAverage24M: json["yieldAverage24m"],
        dividendYield: json["dividendYield"],
        minPrice52Wk: json["minPrice52wk"],
        maxPrice52Wk: json["maxPrice52wk"],
        performanceLast12M: json["performanceLast12m"],
        performanceThisMonth: json["performanceThisMonth"],
        goals: Goals.fromJson(json["goals"]),
      );

  Map<String, dynamic> toJson() => {
        "symbol": symbol,
        "name": name,
        "price": price,
        "yieldAverage24m": yieldAverage24M,
        "dividendYield": dividendYield,
        "minPrice52wk": minPrice52Wk,
        "maxPrice52wk": maxPrice52Wk,
        "performanceLast12m": performanceLast12M,
        "performanceThisMonth": performanceThisMonth,
        "goals": goals.toJson(),
      };
}

class Goals {
  Goals({
    this.magicNumber,
    this.capitalSnowBallEffect,
    this.desiredMonthlyIncome,
    this.assetQuantityDesiredIncome,
    this.capitalDesiredMonthlyIncome,
  });

  String magicNumber;
  String capitalSnowBallEffect;
  String desiredMonthlyIncome;
  String assetQuantityDesiredIncome;
  String capitalDesiredMonthlyIncome;

  factory Goals.fromJson(Map<String, dynamic> json) => Goals(
        magicNumber: json["magicNumber"],
        capitalSnowBallEffect: json["capitalSnowBallEffect"],
        desiredMonthlyIncome: json["desiredMonthlyIncome"],
        assetQuantityDesiredIncome: json["assetQuantityDesiredIncome"],
        capitalDesiredMonthlyIncome: json["capitalDesiredMonthlyIncome"],
      );

  Map<String, dynamic> toJson() => {
        "magicNumber": magicNumber,
        "capitalSnowBallEffect": capitalSnowBallEffect,
        "desiredMonthlyIncome": desiredMonthlyIncome,
        "assetQuantityDesiredIncome": assetQuantityDesiredIncome,
        "capitalDesiredMonthlyIncome": capitalDesiredMonthlyIncome,
      };
}

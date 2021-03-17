import 'package:equatable/equatable.dart';

class AssetEvent extends Equatable {
  @override
  List<Object> get props => [];
}

class FetchAsset extends AssetEvent {
  FetchAsset(this.symbol, this.desiredMonthlyIncome);

  final symbol;
  final desiredMonthlyIncome;

  @override
  // props
  List<Object> get props => [symbol, desiredMonthlyIncome];
}

class ResetAsset extends AssetEvent {}

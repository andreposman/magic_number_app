import 'package:equatable/equatable.dart';
import 'package:magic_number_app/model/asset.dart';

class AssetState extends Equatable {
  @override
  // TODO: implement props
  List<Object> get props => [];
}

class AssetNotSearched extends AssetState {}

class AssetIsLoading extends AssetState {}

class AssetIsFetched extends AssetState {
  final _asset;

  Asset get getAsset => _asset;

  AssetIsFetched(this._asset);

  @override
  //  props
  List<Object> get props => [_asset];
}

class AssetLoadingError extends AssetState {}

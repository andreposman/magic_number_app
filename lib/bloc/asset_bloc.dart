import 'package:bloc/bloc.dart';
import 'package:magic_number_app/bloc/asset_events.dart';
import 'package:magic_number_app/model/asset.dart';
import 'package:magic_number_app/repository/asset_repository.dart';

import 'asset_states.dart';

class AssetBloc extends Bloc<AssetEvent, AssetState> {
  AssetBloc(this.repository);

  AssetRepository repository;

  @override
  // initialState
  AssetState get initialState => AssetNotSearched();

  @override
  Stream<AssetState> mapEventToState(AssetEvent event) async* {
    // mapEventToState
    if (event is FetchAsset) {
      // yield returns something but does not terminates the function, return does
      yield AssetIsLoading();
      try {
        Asset asset = await repository.getData(
          event.symbol,
          event.desiredMonthlyIncome,
        );

        yield AssetIsFetched(asset);
      } catch (_) {
        yield AssetLoadingError();
      }
    } else if (event is ResetAsset) {
      yield AssetNotSearched();
    }
  }
}

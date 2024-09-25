// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:calculator_frontend/data/dio_calc_hist_impl.dart' as _i841;
import 'package:calculator_frontend/domain/calculation/calculation_gateway.dart'
    as _i126;
import 'package:calculator_frontend/domain/history/history_gateway.dart'
    as _i1020;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;

extension GetItInjectableX on _i174.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.singleton<_i1020.HistoryGateway>(() => _i841.DioHistoryRepository());
    gh.singleton<_i126.CalculationGateway>(
        () => _i841.DioCalculationRepository());
    return this;
  }
}

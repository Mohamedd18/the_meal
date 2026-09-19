// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format width=80

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:dio/dio.dart' as _i361;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;
import 'package:themeal/core/network/dio_factory.dart' as _i809;
import 'package:themeal/feature/home/data/data_source/home_data_source.dart'
    as _i877;
import 'package:themeal/feature/home/data/data_source/home_data_source_interface.dart'
    as _i884;
import 'package:themeal/feature/home/data/repo/home_repo_imp.dart' as _i985;
import 'package:themeal/feature/home/domain/repo/home_repo_interface.dart'
    as _i147;
import 'package:themeal/feature/home/persentation/cubit/home_cubit.dart'
    as _i930;

extension GetItInjectableX on _i174.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(this, environment, environmentFilter);
    final dioModule = _$DioModule();
    gh.lazySingleton<_i361.Dio>(() => dioModule.dio);
    gh.factory<_i884.HomeDataSourceInterface>(
      () => _i877.HomeRemoteDataSourceImpl(gh<_i361.Dio>()),
    );
    gh.factory<_i147.HomeRepoInterface>(
      () => _i985.HomeRepoImp(gh<_i884.HomeDataSourceInterface>()),
    );
    gh.factory<_i930.HomeCubit>(
      () => _i930.HomeCubit(gh<_i147.HomeRepoInterface>()),
    );
    return this;
  }
}

class _$DioModule extends _i809.DioModule {}

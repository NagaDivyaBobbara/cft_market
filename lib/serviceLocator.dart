import 'package:cft_market/domain/my_account/my_account_api.dart';
import 'package:cft_market/domain/my_account/my_account_api_impl.dart';
import 'package:cft_market/domain/sale_order_list/sale_order_list_api.dart';
import 'package:cft_market/domain/sale_order_list/sale_order_list_api_impl.dart';
import 'package:cft_market/pages/home/home_screen_viewmodel.dart';
import 'package:cft_market/pages/my_account/my_account_viewmodel.dart';
import 'package:cft_market/pages/sale_order_list/sale_order_list_viewmodel.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:get_it/get_it.dart';


final serviceLocator = GetIt.instance;
const jwt = "";

Future<void> initServiceProvider() async {
  await dotenv.load(fileName: ".env");
  serviceLocator.registerLazySingleton<HomeScreenViewmodel>(()=> HomeScreenViewmodel());
  serviceLocator.registerLazySingleton<SaleOrderListApi>(() => SaleOrderListApiImpl());
  serviceLocator.registerLazySingleton<SaleOrderListViewmodel>(() => SaleOrderListViewmodel(saleOrderListApi: serviceLocator.get<SaleOrderListApi>()));
  serviceLocator.registerLazySingleton<MyAccountApi>(() => MyAccountApiImpl());
  serviceLocator.registerLazySingleton<MyAccountViewmodel>(() => MyAccountViewmodel(myAccountApi: serviceLocator.get<MyAccountApi>()));


}



import 'package:cft_market/domain/sale_order_list/model/sale_order_list_model.dart';
import 'package:cft_market/domain/sale_order_list/sale_order_list_api.dart';
import 'package:cft_market/serviceLocator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final saleOrderListViewmodelProvider = ChangeNotifierProvider((ctx) => serviceLocator.get<SaleOrderListViewmodel>());

class SaleOrderListViewmodel extends ChangeNotifier {

  final SaleOrderListApi saleOrderListApi;
  SaleOrderListViewmodel({required this.saleOrderListApi});

  List<SalesDataModel> saleOrderList = [];

  Future<void> fetchSaleOrderList() async {
    saleOrderList = (await saleOrderListApi.fetchSaleOrderListResponse());
    notifyListeners();
  }

}
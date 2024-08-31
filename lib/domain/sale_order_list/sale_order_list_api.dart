import "model/sale_order_list_model.dart";

abstract class SaleOrderListApi {
  Future<List<SalesDataModel>> fetchSaleOrderListResponse();
}
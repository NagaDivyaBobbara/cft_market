import 'package:cft_market/pages/sale_order_detail/sale_order_detail_screen.dart';
import 'package:cft_market/pages/sale_order_list/sale_order_list_viewmodel.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../serviceLocator.dart';


class SaleOrderListScreen extends StatefulWidget {

  const SaleOrderListScreen({super.key});

  @override
  State<SaleOrderListScreen> createState() => _SaleOrderListScreenState();
}

class _SaleOrderListScreenState extends State<SaleOrderListScreen> {
  final _saleOrderListViewModel = serviceLocator.get<SaleOrderListViewmodel>();

  int rowsPerPage = 3;
  final rowsPerPageOptions = [3, 5, 10, 15, 20];

  @override
  void initState() {
    super.initState();
    _saleOrderListViewModel.fetchSaleOrderList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey.shade50,
        body: Consumer(
          builder: (context, ref, child) {
            final saleOrderListViewModel = ref.watch(saleOrderListViewmodelProvider);
            final salesData = saleOrderListViewModel.saleOrderList;
            return  Column(
              children: [
                 Container(
                   height: 45,
                   decoration: const BoxDecoration(
                     color: Colors.white,
                   ),
                   margin: const EdgeInsets.only(left: 16,right: 16,top: 16, bottom: 4),
                   child: TextField(
                    decoration: InputDecoration(
                      labelStyle: TextStyle(color: Colors.grey, fontSize: 14),
                      labelText: "Search Here..",
                      contentPadding: EdgeInsets.symmetric(horizontal: 8),
                      border: const OutlineInputBorder(borderSide: BorderSide(color: Colors.grey, width: 4)),
                      enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.grey.shade300, width: 1)),
                      prefixIcon: const Icon(Icons.search),
                    ),
                                   ),
                 ),

                Expanded(
                  child: ListView.builder(
                    itemCount: salesData.length,
                    itemBuilder: (BuildContext context, int index) {
                      final item = salesData[index];
                      return Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(color: Colors.grey.withOpacity(0.2), blurRadius: 5,spreadRadius: 3,offset: Offset(0,0))
                          ]
                        ),
                        margin: const EdgeInsets.only(top: 12, left: 16, right: 16, bottom: 12),
                        padding: const EdgeInsets.all(16),
                        child: InkWell(
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: (ctx) => const SaleOrderDetailScreen()));
                          },
                          child: Row(
                            children: [
                              Image.asset("assets/images/expense.png", height: 24, width: 24,),
                              Expanded(
                                  child: Container(
                                    margin:  const EdgeInsets.only(left: 16),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(item.saleOrderNumber, style: const TextStyle(fontWeight: FontWeight.bold, color: Colors.teal)),
                                        Text(item.deliveryType, style: TextStyle(fontWeight: FontWeight.bold),),
                                        Text(item.createdDate, style:TextStyle(fontWeight: FontWeight.bold)),
                                        Container(
                                          padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 12),
                                          decoration: BoxDecoration(
                                            color: Colors.teal,
                                            borderRadius: BorderRadius.circular(10),

                                          ),
                                            child: Text(item.status,
                                                style:TextStyle(fontWeight: FontWeight.bold, color: Colors.white))),
                                      ],),
                                  )),
                            ],
                          ),
                        ),
                      );
                    },
                  
                  ),
                ),
              ],
            );
          }
        )
    );
  }
}


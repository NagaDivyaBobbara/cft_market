import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';


class SaleOrderDetailScreen extends StatelessWidget {
  const SaleOrderDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      body: Column(
        children: [
          _getNavigationHeader(context),
          Expanded(
            child: ListView(
              children: [
                _getOrderStatusTilesView(),
                _getSaleOrderDetailsView(),
                _getProductDetailsView(),
                _getCommercialsDetailsView(),
                _getReferenceDetailsView(),
                _getSummaryDetailsView(),
                _getCustomerDetailsView(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

Widget _getNavigationHeader(BuildContext context) {
  return Container(
    height: 70,
    alignment: Alignment.bottomCenter,
    decoration: BoxDecoration(
      color: Colors.teal.shade400,
    ),
    child: Row(
      children: [
        IconButton(onPressed: () {
          Navigator.of(context).pop();
        }, icon: const Icon(Icons.arrow_back_rounded, color: Colors.white,)),
        const Text("Order Detail", style: TextStyle(fontSize: 18,color: Colors.white),),
      ],
    ),
  );
}

Widget _getProductDetailsView() {
  return Container(
    decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10)),
    margin: EdgeInsets.only(left: 16, right: 16, bottom: 24),
    // padding: EdgeInsets.all(16.0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: EdgeInsets.symmetric(vertical: 16),
          padding: EdgeInsets.symmetric(horizontal: 16),
          // padding: EdgeInsets,
          decoration: const BoxDecoration(
            border: Border(left: BorderSide(color: Colors.teal, width: 3)),
          ),
          child: const Text(
            "Order Number: #ORD2024weuroiweyu4yiuw",
            style: TextStyle(fontSize: 18),
          ),
        ),
        const Padding(
          padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(child: Text("Product:")),
              Expanded(
                  child: Text("mango -yellow - Quality potatoes will be fairly well shaped, skin will resist abrasion and be free of damage and sprouts (reds, whites and yellows) and will be brightly colored.")),
            ],
          ),
        ),
        const Padding(
          padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(child: Text("Quantity:")),
              Expanded(
                  child: Text("2")),
            ],
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(top: 8, left: 16, right: 16, bottom: 16),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(child: Text("Discount%")),
              Expanded(
                  child: Text("0%")),
            ],
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(top: 8, left: 16, right: 16, bottom: 16),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(child: Text("Price")),
              Expanded(
                  child: Text("0")),
            ],
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(top: 8, left: 16, right: 16, bottom: 16),
          child: Row(
            children: [
              Expanded(child: Text("Amount")),
              Expanded(
                  child: Text("0")),
            ],
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(top: 8, left: 16, right: 16, bottom: 16),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(child: Text("Delivery Date")),
              Expanded(
                  child: Text("24-08-2024")),
            ],
          ),
        ),
      ],
    ),
  );
}

Widget _getCustomerDetailsView() {
  return Container(
    decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10)),
    margin: EdgeInsets.symmetric(vertical:24, horizontal: 16),
    // padding: EdgeInsets.all(16.0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: EdgeInsets.symmetric(vertical: 16),
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: Text(
            "Customer Details",
            style: TextStyle(fontSize: 18),
          ),
          // padding: EdgeInsets,
          decoration: BoxDecoration(
            border: Border(left: BorderSide(color: Colors.teal, width: 3)),
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
          child: Row(
            children: [
              Expanded(child: Text("Name:")),
              Expanded(
                  child: Text("Divya")),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
          child: Row(
            children: [
              Expanded(child: Text("Email Address:")),
              Expanded(
                  child: Text("nagadivyabobbaraa@gmail.com")),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 8, left: 16, right: 16, bottom: 16),
          child: Row(
            children: [
              Expanded(child: Text("Billing Address")),
              Expanded(
                  child: Text("MindSpace, Hyderabad.")),
            ],
          ),
        ),
      ],
    ),
  );
}

Widget _getSummaryDetailsView() {
  return Container(
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10)
      ),
      margin: EdgeInsets.symmetric(horizontal: 16),
      // padding: EdgeInsets.all(16.0),
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.symmetric(vertical: 16),
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Text("Summary",
                style: TextStyle(fontSize: 18),),
              // padding: EdgeInsets,
              decoration: BoxDecoration(
                border: Border(left: BorderSide(color: Colors.teal, width: 3)),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
              child: Row(
                children: [
                  Expanded(child: Text("Sub Total:")),
                  Expanded(child: Container(alignment:Alignment.centerRight,child: Text("\$200"))),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
              child: Row(
                children: [
                  Expanded(child: Text("Shipping:")),
                  Expanded(child: Container(alignment:Alignment.centerRight,child: Text("\$0"))),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
              child: Row(
                children: [
                  Expanded(child: Text("Tax(0%)")),
                  Expanded(child: Container(alignment:Alignment.centerRight,child: Text("\$0"))),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
              child: Row(
                children: [
                  Expanded(child: Text("Discount:")),
                  Expanded(child: Container(alignment:Alignment.centerRight,child: Text("\$0"))),
                ],
              ),
            ),
            Container(margin: EdgeInsets.symmetric(vertical: 8), height: 1, color: Colors.grey.shade300,),
             Padding(
              padding: EdgeInsets.only(top: 8, left: 16, right: 16, bottom: 16),
              child: Row(
                children: [
                  Expanded(child: Text("Total:")),
                  Expanded(child: Container(alignment:Alignment.centerRight,child: Text("\$200"))),
                ],
              ),
            ),
          ]
      )
  );
}

Widget _getReferenceDetailsView() {
  return Container(
    decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10)
    ),
    margin: EdgeInsets.symmetric(vertical: 24.0, horizontal: 16),
    // padding: EdgeInsets.all(16.0),
    child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
    Container(
    margin: EdgeInsets.symmetric(vertical: 16),
    padding: EdgeInsets.symmetric(horizontal: 16),
    child: Text("Reference",
      style: TextStyle(fontSize: 18),),
    // padding: EdgeInsets,
    decoration: BoxDecoration(
      border: Border(left: BorderSide(color: Colors.teal, width: 3)),
    ),
  ),
  const Padding(
          padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
          child: Row(
            children: [
              Expanded(child: Text("Communication Mode:")),
              Expanded(child: Text("")),
            ],
          ),
        ),
        const Padding(
          padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
          child: Row(
            children: [
              Expanded(child: Text("Additional Details:")),
              Expanded(child: Text("")),
            ],
          ),
        ),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
            child: Row(
              children: [
                Expanded(child: Text("Communication Details:")),
                Expanded(child: Text("")),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 8, left: 16, right: 16, bottom: 16),
            child: Row(
              children: [
                Expanded(child: Text("Ref#:")),
                Expanded(child: Text("")),
              ],
            ),
          ),
      ]));
}

Widget _getOrderStatusTilesView() {
  return Padding(
    padding: const EdgeInsets.only(left: 16,right: 16),
    child: Row(
      children: [
        Flexible(
            child: ClipPath(
              clipper: CustomClipPathTopContainerOne(),
              child: Container(
                padding: const EdgeInsets.only(left: 8),
                height: 30,
                decoration: BoxDecoration(
                  color: Colors.grey.shade300,
                ),
                child:  Row(
                  children: [
                    Icon(Icons.approval_outlined,color: Colors.grey.shade600,),
                    Text("Approved", style: TextStyle(fontSize: 13, color: Colors.grey.shade600,fontWeight:  FontWeight.bold),),
                  ],
                ),
              ),
            )),
        Flexible(
            child: ClipPath(
              clipper: CustomClipPathTopContainerSecond(),
              child: Container(
                padding: const EdgeInsets.only(left: 20),
                alignment: Alignment.center,
                height: 30,
                decoration: BoxDecoration(
                    color: Colors.teal.shade50,
                    borderRadius: BorderRadius.circular(10)),
                child: const Row(
                  children: [
                    Icon(Icons.approval_outlined, color: Colors.teal,),
                    Text("Accepted", style: TextStyle(fontSize: 13, color: Colors.teal,fontWeight:  FontWeight.bold),),
                  ],
                ),
              ),
            )),
        Flexible(
            child: ClipPath(
              clipper: CustomClipPathTopContainerSecond(),
              child: Container(
                padding: const EdgeInsets.only(left: 20),
                alignment: Alignment.center,
                height: 30,
                decoration: BoxDecoration(
                    color: Colors.grey.shade300,
                    borderRadius: BorderRadius.circular(10)),
                child:  Row(
                  children: [
                    Icon(Icons.approval_outlined,color: Colors.grey.shade600,),
                    Text("Created", style: TextStyle(fontSize: 13, color: Colors.grey.shade600,fontWeight:  FontWeight.bold),),
                  ],
                ),
              ),
            )),
      ],
    ),
  );
}

Widget _getSaleOrderDetailsView() {
  return   Container(
    decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10)
    ),
    margin: EdgeInsets.symmetric(vertical: 24.0, horizontal: 16),
    // padding: EdgeInsets.all(16.0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: EdgeInsets.symmetric(vertical: 16),
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: Text("Sale Order Details",
            style: TextStyle(fontSize: 18),),
          // padding: EdgeInsets,
          decoration: BoxDecoration(
            border: Border(left: BorderSide(color: Colors.teal, width: 3)),
          ),
        ),
        const Padding(
          padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(child: Text("Sale Order Number:")),
              Expanded(child: Text("ORDwer2342dsds")),
            ],
          ),
        ),
        const Padding(
          padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
          child: Row(
            children: [
              Expanded(child: Text("Created Date:")),
              Expanded(child: Text("25-Aug-2024")),
            ],
          ),
        ),
        const Padding(
          padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
          child: Row(
            children: [
              Expanded(child: Text("Status:")),
              Expanded(child: Text("Accepted")),
            ],
          ),
        ),
        const Padding(
          padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
          child: Row(
            children: [
              Expanded(child: Text("Delivery Type:")),
              Expanded(child: Text("Dispatch")),
            ],
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(top: 8, left: 16, right: 16, bottom: 16),
          child: Row(
            children: [
              Expanded(child: Text("Delivery Date:")),
              Expanded(child: Text("29-Aug-2024")),
            ],
          ),
        ),
      ],

    ),
  );
}

Widget _getCommercialsDetailsView() {
  return  Container(
    decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10)
    ),
    margin: EdgeInsets.symmetric(horizontal: 16),
    // padding: EdgeInsets.all(16.0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: EdgeInsets.symmetric(vertical: 16),
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: Text("Commercials",
            style: TextStyle(fontSize: 18),),
          // padding: EdgeInsets,
          decoration: BoxDecoration(
            border: Border(left: BorderSide(color: Colors.teal, width: 3)),
          ),
        ),
        const Padding(
          padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(child: Text("Payment Terms:")),
              Expanded(child: Text("Payments must be paid within 15 days of the Sale order. If payment has not been received within 30 days then the account will be suspended.")),
            ],
          ),
        ),
        const Padding(
          padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(child: Text("Loading Terms:")),
              Expanded(child: Text("Driver Assisted Unloading Requested")),
            ],
          ),
        ),
        const Padding(
          padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(child: Text("General Terms::")),
              Expanded(child: Text("Packing of Items are required to be in containers that are clean, debris free and in good condition")),
            ],
          ),
        ),
        const Padding(
          padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(child: Text("Packing Terms:")),
              Expanded(child: Text("Packing of Items are required to be in containers that are clean, debris free and in good condition")),
            ],
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(top: 8, left: 16, right: 16, bottom: 16),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(child: Text("Transportation Terms:")),
              Expanded(child: Text("Address:CFT Warehouse DC 7923 Shaina Locks,North Lizaton, Oklahoma, 53001, USA. Delivery Acceptance: Mon-Fri: 8am-5pm, Saturday: 8am-1pm.")),
            ],
          ),
        ),
      ],

    ),
  );
}

class CustomClipPathTopContainerOne extends CustomClipper<Path> {

  @override
  Path getClip(Size size) {
    double w = size.width;
    double h = size.height;

    Paint paint = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth=10.0
      ..color = Colors.black;

    Path path0 = Path();
    path0.moveTo(0,size.height);
    path0.lineTo(0,size.height*0.4890143);
    path0.lineTo(0,0);
    path0.lineTo(size.width*0.8545167,0);
    path0.lineTo(size.width,size.height*0.4991714);
    path0.lineTo(size.width*0.8551250,size.height);
    path0.lineTo(0,size.height);
    path0.lineTo(size.width*0.0013417,size.height);
    path0.lineTo(0,size.height);
    path0.close();
    return path0;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}

class CustomClipPathTopContainerSecond extends CustomClipper<Path> {

  @override
  Path getClip(Size size) {
    double w = size.width;
    double h = size.height;

    Paint paint = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth=10.0
      ..color = Colors.black;

    Path path0 = Path();
    path0.moveTo(0,size.height);
    path0.lineTo(size.width*0.1459833,size.height*0.5012000);
    path0.lineTo(0,0);
    path0.lineTo(size.width*0.8545167,0);
    path0.lineTo(size.width,size.height*0.4991714);
    path0.lineTo(size.width*0.8551250,size.height);
    path0.lineTo(0,size.height);
    path0.lineTo(size.width*0.0013417,size.height);
    path0.lineTo(0,size.height);
    path0.close();
    return path0;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}

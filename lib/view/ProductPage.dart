import 'package:fb_coba_getx/SetUpFile/appColor.dart';
import 'package:fb_coba_getx/viewmodel/DataProduct.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:get/get.dart';
import 'package:flutter/src/widgets/framework.dart';

class ProductPage extends StatefulWidget {
  const ProductPage({Key? key}) : super(key: key);

  @override
  State<ProductPage> createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  final xData = Get.put(DataProduct());

  @override
  void initState() {
    // TODO: implement initState
    xData.getDataListProduk();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GetBuilder<DataProduct>(
      builder: (stateXData) {
        return Scaffold(
          floatingActionButton: FloatingActionButton(
            backgroundColor: AppColor.peach,
            child: Icon(
              Icons.arrow_back_ios,
              size: 30,
              color: Colors.white,
            ),
            onPressed: () {
              Get.back();
            },
          ),
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.fromLTRB(14, 60, 14, 2),
                width: 300,
                height: 50,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Omari Product',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                    ),
                    Text(
                      'This is list of our magnificent product',
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
                    ),
                  ],
                ),
              ),
              Container(
                  margin: EdgeInsets.fromLTRB(14, 10, 14, 20),
                  padding: EdgeInsets.all(10),
                  width: 360,
                  height: 600,
                  decoration: BoxDecoration(
                      color: AppColor.purple,
                      borderRadius: BorderRadius.circular(12)),
                  child: ListView.builder(
                    itemCount: stateXData.produk.length,
                    itemBuilder: (context, index) {
                      if(stateXData.produk == null){
                        return Center(
                          child: Container(
                            width: 200,
                            height: 200,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                CircularProgressIndicator(
                                  strokeWidth: 5,
                                  color: Colors.blue,
                                ),
                                Padding(
                                    padding: EdgeInsets.all(10),
                                    child: Text('Loading Data'))
                              ],
                            ),
                          ),
                        );
                      }
                      return 
                          Container(
                            padding: EdgeInsets.all(5),
                            width: 230,
                            height: 300,
                            margin: EdgeInsets.symmetric(vertical: 15),
                            decoration: BoxDecoration(
                                color: AppColor.peach,
                                borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(40),
                                  bottomLeft: Radius.circular(40),
                                ),
                                boxShadow: [
                                  BoxShadow(
                                      blurRadius: 3.5,
                                      spreadRadius: 0.7,
                                      color: Colors.black.withOpacity(0.5),
                                      offset: Offset(1, 9))
                                ]),
                            child: Column(
                              children: [
                                Stack(
                                  children: [
                                    Container(
                                      width: 450,
                                      height: 180,
                                      child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(20),
                                          child: Image.network(
                                            '${stateXData.produk[index]['image']}',
                                          )),
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(14)),
                                    ),
                                    Container(
                                      padding: EdgeInsets.all(4),
                                      width: 70,
                                      height: 40,
                                      decoration: BoxDecoration(
                                          color: Colors.red,
                                          borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(14),
                                            bottomRight: Radius.circular(14),
                                          )),
                                      child: Row(
                                        children: [
                                          Image.asset(
                                            'assets/star.png',
                                            width: 20,
                                          ),
                                          Text(
                                            '${stateXData.produk[index]['rating']['rate']}',
                                            style: TextStyle(
                                                fontSize: 18,
                                                color: Colors.white),
                                          )
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      '${stateXData.produk[index]['title']}',
                                      style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w600,
                                          color: Colors.black),
                                    ),
                                    Text(
                                      '${stateXData.produk[index]['price']}',
                                      style: TextStyle(fontSize: 20),
                                    ),
                                    Text(
                                      'Maemnya enakk, gak gosong \nwenak wes pokok e worth to buy',
                                      style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w600,
                                          color: Colors.black),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          );
                    },
                  ))
            ],
          ),
        );
      },
    );
  }
}

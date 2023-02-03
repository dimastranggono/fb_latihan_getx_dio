import 'package:fb_coba_getx/SetUpFile/appAsset.dart';
import 'package:fb_coba_getx/SetUpFile/appColor.dart';
import 'package:fb_coba_getx/view/ProductPage.dart';
import 'package:fb_coba_getx/view/TeamProfile.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Omari'),
        backgroundColor: AppColor.darkPurple,
      ),
      body: Container(
        padding: EdgeInsets.fromLTRB(14, 12, 14,10),
        constraints: BoxConstraints.expand(),
        child: ListView(
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: AppColor.peach,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.2),
                    spreadRadius: 1.5,
                    offset: Offset(2,3)
                  )
                ]
              ),
              padding: EdgeInsets.fromLTRB(14, 12,14, 10),
              margin: EdgeInsets.symmetric(horizontal: 14),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('OmariElektronik',style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w600
                  ),),
                   Text('Cari barang kebutuhan mu disini',style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w400
                  ),),
                  Padding(padding: EdgeInsets.all(5)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        onTap: () {
                          Get.to(TeamProfilePage());
                        },
                        child: Image.asset(AppAsset.appLogo,scale: 10,)),
                      Image.asset(AppAsset.appLogo,scale: 10,),
                      Image.asset(AppAsset.appLogo,scale: 10,),
                      Image.asset(AppAsset.appLogo,scale: 10,)
                    ],
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(14, 20, 14,10),
              padding: EdgeInsets.all(5),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Best Omari Product',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600
                    ),
                  ),
                  Text('Our best selling product',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(context,MaterialPageRoute(builder: (context){
                        return ProductPage();
                      }));
                    },
                    child: Container(
                      padding: EdgeInsets.all(5),
                      height: 50,
                      decoration: BoxDecoration(
                        color: AppColor.seaBlue,
                        borderRadius: BorderRadius.circular(12)
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Take a look for more stuff',
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w500
                            ),
                          ),
                          Icon(Icons.arrow_forward_rounded)
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(14,10, 14, 10),
              padding: EdgeInsets.all(5),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12)
              ),
              child: Stack(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(14),
                    child: Image.asset('assets/nasigoreng.jpg',fit: BoxFit.cover,
                    
                    ),
                  ),
                  Container(
                    width: 170,
                    height: 60,
                    decoration: BoxDecoration(
                      color: Colors.red[600],
                      borderRadius: BorderRadius.only(topLeft: Radius.circular(12),bottomRight: Radius.circular(12))
                    ),
                    child: Column(
                      children: [
                        Text('Nasi Goreng',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 24,
                            fontStyle: FontStyle.italic,
                            decoration: TextDecoration.underline,
                            fontWeight: FontWeight.w600
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                             Text('Rating',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w600
                          ),
                        ),
                        Image.asset('assets/star.png',width: 15,),
                        Text('4.5',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w600
                          ),
                        ),
                          ],
                        ),
                       
                      ],
                    ),
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(14,10, 14, 10),
              padding: EdgeInsets.all(5),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12)
              ),
              child: Stack(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(14),
                    child: Image.asset('assets/ayambakar.jpg',fit: BoxFit.cover,
                    
                    ),
                  ),
                  Container(
                    width: 170,
                    height: 60,
                    decoration: BoxDecoration(
                      color: Colors.red[600],
                      borderRadius: BorderRadius.only(topLeft: Radius.circular(12),bottomRight: Radius.circular(12))
                    ),
                    child: Column(
                      children: [
                        Text('Ayam Bakar',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 24,
                            fontStyle: FontStyle.italic,
                            decoration: TextDecoration.underline,
                            fontWeight: FontWeight.w600
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                             Text('Rating',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w600
                          ),
                        ),
                        Image.asset('assets/star.png',width: 15,),
                        Text('4.5',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w600
                          ),
                        ),
                          ],
                        ),
                       
                      ],
                    ),
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(14,10, 14, 10),
              padding: EdgeInsets.all(5),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12)
              ),
              child: Stack(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(14),
                    child: Image.asset('assets/kerang.jpg',fit: BoxFit.cover,
                    
                    ),
                  ),
                  Container(
                    width: 170,
                    height: 60,
                    decoration: BoxDecoration(
                      color: Colors.red[600],
                      borderRadius: BorderRadius.only(topLeft: Radius.circular(12),bottomRight: Radius.circular(12))
                    ),
                    child: Column(
                      children: [
                        Text('Kerang',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 24,
                            fontStyle: FontStyle.italic,
                            decoration: TextDecoration.underline,
                            fontWeight: FontWeight.w600
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                             Text('Rating',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w600
                          ),
                        ),
                        Image.asset('assets/star.png',width: 15,),
                        Text('4.7',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w600
                          ),
                        ),
                          ],
                        ),
                       
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        )
      )
    );
  }
}
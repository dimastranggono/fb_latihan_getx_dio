import 'package:fb_coba_getx/SetUpFile/appAsset.dart';
import 'package:fb_coba_getx/SetUpFile/appColor.dart';
import 'package:fb_coba_getx/view/HomePage.dart';
import 'package:fb_coba_getx/viewmodel/loginX.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final lgn = Get.put(LoginX());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColor.purple,
        body: GetBuilder<LoginX>(
          builder: (xLogin) {
            return LayoutBuilder(
              builder: (context, constraints) {
                return Padding(
                  padding: EdgeInsets.symmetric(vertical: 100),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset(
                        AppAsset.appLogo,
                        width: 120,
                      ),
                      Padding(padding: EdgeInsets.symmetric(vertical: 20)),
                      Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                        child: Column(
                          children: [
                            TextFormField(
                              onChanged: (value) {
                                lgn.inputEmail(value);
                              },
                              decoration: InputDecoration(
                                  hintText: 'Email',
                                  isDense: true,
                                  filled: true,
                                  fillColor: Colors.white,
                                  contentPadding: EdgeInsets.symmetric(
                                      vertical: 20, horizontal: 15),
                                  border: OutlineInputBorder()),
                            ),
                            SizedBox(
                              height: 40,
                            ),
                            TextFormField(
                              onChanged: (value) {
                                lgn.inputPassword(value);
                              },
                              obscureText: true,
                              decoration: InputDecoration(
                                  hintText: 'Password',
                                  isDense: true,
                                  filled: true,
                                  fillColor: Colors.white,
                                  contentPadding: EdgeInsets.symmetric(
                                      vertical: 20, horizontal: 15),
                                  border: OutlineInputBorder()),
                            ),
                            SizedBox(
                              height: 30,
                            ),
                            ElevatedButton(
                                onPressed: () async{
                                  var responLogin = await lgn.loginUser(
                                    imel: lgn.email,
                                    pass: lgn.password
                                  );
                                  if(responLogin.statusCode == 200){
                                    Get.to(HomePage());
                                  }
                                },
                                style: ElevatedButton.styleFrom(
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(14))),
                                child: Text(
                                  'Login',
                                  style: TextStyle(
                                    fontSize: 24,
                                  ),
                                )),
                            SizedBox(
                              height: 20,
                            ),
                            RichText(
                              text: TextSpan(
                                  text: 'Belum Punya Akun?',
                                  style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w600),
                                  children: [
                                    TextSpan(
                                        text: ' Register',
                                        style: TextStyle(
                                            fontSize: 16,
                                            color: Colors.blue,
                                            fontWeight: FontWeight.w600))
                                  ]),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                );
              },
            );
          },
        ));
  }
}

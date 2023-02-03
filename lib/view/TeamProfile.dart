import 'package:fb_coba_getx/SetUpFile/appColor.dart';
import 'package:fb_coba_getx/viewmodel/ProfileX.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

class TeamProfilePage extends StatefulWidget {
  const TeamProfilePage({Key? key}) : super(key: key);

  @override
  State<TeamProfilePage> createState() => _TeamProfilePageState();
}

class _TeamProfilePageState extends State<TeamProfilePage> {
  final xTeam = Get.put(ProfileX());

  @override
  void initState() {
    // TODO: implement initState
    xTeam.ListTeamX();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ProfileX>(builder: (xTeam) {
      return Scaffold(
        body: Column(
          children: [
            Container(
              margin: EdgeInsets.fromLTRB(14, 40, 14, 10),
              padding: EdgeInsets.all(10),
              width: 360,
              height: 100,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(14),
                  color: AppColor.peach),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Meet our team!',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
                  ),
                  Text(
                    'People who dedicated to imrove our products!',
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
                  )
                ],
              ),
            ),
            Container(
                margin: EdgeInsets.fromLTRB(14, 40, 14, 10),
                padding: EdgeInsets.all(20),
                width: 360,
                height: 560,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(14),
                    color: AppColor.darkPurple),
                child: ListView.builder(
                  itemCount: xTeam.listTeam?.length,
                  itemBuilder: (context, index) {
                    return Container(
                      padding: EdgeInsets.fromLTRB(12, 20, 12, 20),
                      width: 230,
                      height: 150,
                      decoration: BoxDecoration(
                          color: AppColor.seaBlue,
                          borderRadius: BorderRadius.circular(14)),
                      child: Row(
                        children: [
                          Column(
                            children: [
                              Image.network(
                                '${xTeam.listTeam?["data"][index]["avatar"]}',
                                width: 100,
                              )
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                '${xTeam.listTeam?["data"][index]["last_name"]}',
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.w600),
                              ),
                              Text(
                                '${xTeam.listTeam?["data"][index]["first_name"]}',
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.w400),
                              ),
                              Text(
                                '${xTeam.listTeam?["data"][index]["email"]}',
                                style: TextStyle(
                                    fontSize: 12, fontWeight: FontWeight.w400),
                              )
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
    });
  }
}

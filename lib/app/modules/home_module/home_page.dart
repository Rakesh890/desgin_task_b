import 'package:desgin_task_b/app/modules/dashboard_module/dashboard_page.dart';
import 'package:desgin_task_b/app/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:desgin_task_b/app/modules/home_module/home_controller.dart';
import '../../layout/customappbar.dart';
import '../../utils/strings.dart';
import 'View/BottomNavigation.dart';


class HomePage extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child:  SingleChildScrollView(
          child: Container(
            height: MediaQuery.of(context).size.height,
            child: Stack(
              children: [
                Container(
                  padding:
                  EdgeInsets.symmetric(horizontal: 16, vertical: 15),
                  height: MediaQuery.of(context).size.height,
                  decoration: BoxDecoration(
                    color: appPrimaryColor,
                  ),
                  child: Column(
                    children: [
                      CustomAppBar(),
                      _buildUserDashboard(context),
                    ],
                  ),
                ),
                Positioned(
                    top: 270,
                    bottom: -10,
                    width: MediaQuery.of(context).size.width,
                    child: Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(40),
                              topRight: Radius.circular(40))),
                      margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
                      color: Colors.white,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 12, horizontal: 14),
                        child: Column(
                          children: [
                            SizedBox(height: 10),
                            Row(
                              children: [
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  "My Cards",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 22,
                                      fontWeight: FontWeight.bold),
                                ),
                                Spacer(),
                                //Add Card Button
                                SizedBox(
                                  height: 25,
                                  child: FloatingActionButton.small(
                                    onPressed: () {},
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                        BorderRadius.circular(10)),
                                    elevation: 0,
                                    child: Icon(
                                      Icons.add,
                                      size: 20,
                                    ),
                                  ),
                                ),
                                //Add Some Space From Right Side
                                SizedBox(
                                  width: 5,
                                )
                              ],
                            ),
                            SizedBox(height: 10),
                            _buildUserCardView(context),
                          ],
                        ),
                      ),
                    )),
              ],
            ),
          ),
        ),

      ),
      bottomNavigationBar: _buildAppFooter(),
    );
  }

  _buildUserDashboard(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 40,
        ),
        //Available balance
        Align(
          alignment: Alignment.centerLeft,
          child: Text(
            availableBalance,
            style: TextStyle(fontSize: 14, color: appSecondaryTextColor),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Align(
          alignment: Alignment.centerLeft,
          child: Text(
            "Rs $amount",
            style: TextStyle(
                fontSize: 28, color: Colors.white, fontWeight: FontWeight.w500),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 20.0),
          child: Row(
            children: [
              Expanded(
                child: Container(
                    height: 45,
                    width: MediaQuery.of(context).size.width / 2,
                    child: RaisedButton.icon(
                      onPressed: () {},
                      icon: Icon(
                        Icons.arrow_upward_sharp,
                        color: Colors.white,
                      ),
                      label: Text(
                        "$pay",
                        style: TextStyle(color: Colors.white),
                      ),
                      color: buttonColor,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(6)),
                    )),
              ),
              SizedBox(
                width: 10,
              ),
              Expanded(
                child: Container(
                    height: 45,
                    width: MediaQuery.of(context).size.width / 2,
                    child: RaisedButton.icon(
                      onPressed: () {},
                      icon: Icon(Icons.arrow_downward),
                      label: Text("$request"),
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(6)),
                    )),
              )
            ],
          ),
        )
      ],
    );
  }

  //show user cards sections
  _buildUserCardView(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.only(bottom: 20.0),
        child: ListView.builder(
            shrinkWrap: true,
            addAutomaticKeepAlives: true,
            itemCount: 4,
            controller: controller.scrollController,
            itemBuilder: (context, int index) {
              return Container(
                  child: Image.asset("assets/images/cards.jpeg"));
            }),
      ),
    );
  }

  //App Footer for bottom tabs
  _buildAppFooter()
  {
   return SafeArea(
        child: Obx(() => (controller.isVisible == true)
            ? Container(height: 0,)
            : BottomNavigation()));
  }
}

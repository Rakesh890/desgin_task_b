import 'package:desgin_task_b/app/modules/dashboard_module/View/BottomNavigation_dash.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:desgin_task_b/app/modules/dashboard_module/dashboard_controller.dart';
import 'package:pie_chart/pie_chart.dart';
import '../../theme/app_colors.dart';
import '../../utils/strings.dart';
import '../CommonModule/BottomNavigation.dart';
import '../CommonModule/customAppBar.dart';
/**
 * GetX Template Generator - fb.com/htngu.99
 * */

class DashboardPage extends GetView<DashboardController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            height: MediaQuery.of(context).size.height,
            child:Stack(
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
                      _buildInfo(context),
                    ],
                  ),
                ),
                Positioned(
                    top: 280,
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
                                  "My Transaction",
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
                                      Icons.filter_frames_outlined,
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
                            _buildCardList(context),
                          ],
                        ),
                      ),
                    )),
              ],
            )),
          ),
        ),
      bottomNavigationBar: SafeArea(
          child: Obx(() => (controller.isVisible == true)
              ? Container(
            height: 0,
          )
              : BottomNavigation_dash())),
    );
  }

  _buildInfo(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 20,
        ),
        PieChart(
          dataMap: controller.dataMap,
          animationDuration: Duration(milliseconds: 1000),
          chartLegendSpacing: 60,
          chartRadius: MediaQuery.of(context).size.width / 2.6,
          colorList: controller.colorList,
          initialAngleInDegree: 0,
          chartType: ChartType.ring,
          ringStrokeWidth: 12,
          centerText: "Available Coins",
          legendOptions: LegendOptions(
            showLegendsInRow: false,
            legendPosition: LegendPosition.right,
            showLegends: true,
            legendTextStyle: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.white
            ),
          ),
          chartValuesOptions: ChartValuesOptions(
            showChartValueBackground: true,
            showChartValues: false,
            showChartValuesInPercentage: false,
            showChartValuesOutside: false,
            decimalPlaces: 1,
          ),
          // gradientList: ---To add gradient colors---
          // emptyColorGradient: ---Empty Color gradient---
        ),
        SizedBox(
          height: 40,
        ),
      ],
    );
  }
  _buildCardList(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.only(bottom: 20.0),
        child: ListView.builder(
            shrinkWrap: true,
            addAutomaticKeepAlives: true,
            itemCount: 10,
            controller: controller.scrollController,
            itemBuilder: (context, int index) {
              return Container(
                  child: ListTile(
                    leading: ClipRect(
                      child: CircleAvatar(
                        child: Text("AB"),
                      ),
                    ),
                    title: Text("Bitcoin",style: TextStyle(
                      color: appPrimaryTextColor,
                      fontSize: 15,
                      fontWeight: FontWeight.w500
                    ),),
                    subtitle: Text("-3.0987 BTC",style: TextStyle(
                      fontSize: 14,color: appSecondaryTextColor,fontWeight: FontWeight.w400
                    ),),
                    trailing: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text("01 Apirl 2022",style: TextStyle(
                            color: appPrimaryTextColor,
                            fontSize: 15,
                            fontWeight: FontWeight.w500
                        )),
                        SizedBox(height: 5,),
                        Text("Sent",style: TextStyle(
                            color: Colors.red,
                            fontSize: 14,
                            fontWeight: FontWeight.w400
                        )),
                      ],
                    ),
                  ));
            }),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:desgin_task_b/app/modules/dashboard_module/dashboard_controller.dart';
import 'package:pie_chart/pie_chart.dart';
import '../../layout/customappbar.dart';
import '../../theme/app_colors.dart';



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
                      _buildDashboardWithGrph(context),
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
      // bottomNavigationBar: _buildAppFooter()
    );
  }


  _buildDashboardWithGrph(BuildContext context) {
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
            itemCount: controller.userTransactionList.length,
            controller: controller.scrollController,
            itemBuilder: (context, int index) {
              return ListTile(
                contentPadding:EdgeInsets.zero,
                leading: ClipRect(
                  child: CircleAvatar(
                    child: Text("${controller.userTransactionList[index]["name"].toString().substring(0, 1).toUpperCase()}"),
                  ),
                ),
                title: Row(
                  children: [
                    Text("${controller.userTransactionList[index]["name"]}",style: TextStyle(
                      color: appPrimaryTextColor,
                      fontSize: 15,
                      fontWeight: FontWeight.w500
                    ),),
                    Spacer(),
                    Text("${controller.userTransactionList[index]["date"]}",style: TextStyle(
                        color: appPrimaryTextColor,
                        fontSize: 13,
                        fontWeight: FontWeight.w500
                    )),
                  ],
                ),
                subtitle: Padding(
                  padding: const EdgeInsets.only(top:4.0),
                  child: Row(
                    children: [
                      Text("${controller.userTransactionList[index]["bitcoinValue"]}",style: TextStyle(
                        fontSize: 14,color: appSecondaryTextColor,fontWeight: FontWeight.w400
                      ),),
                      Spacer(),
                      Text("${controller.userTransactionList[index]["status"].toString().capitalizeFirst}",style: TextStyle(
                          color:(controller.userTransactionList[index]["status"].toString().toLowerCase() == "sent") ?
                          Colors.red : Colors.green,
                          fontSize: 13,
                          fontWeight: FontWeight.w400
                      )),
                    ],
                  ),
                ),
              );
            }),
      ),
    );
  }
}

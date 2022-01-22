import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';
import 'dart:math';

class PerformanceWidget extends StatefulWidget {
  @override
  State<PerformanceWidget> createState() => _PerformanceWidgetState();
}

class _PerformanceWidgetState extends State<PerformanceWidget>
    with TickerProviderStateMixin {
  final List<FlSpot> dummyData1 = List.generate(12, (index) {
    return FlSpot(
        index.toDouble(), 10000000 + 190 * (index * Random().nextDouble()));
  });

  final List<FlSpot> dummyData2 = List.generate(12, (index) {
    return FlSpot(
        index.toDouble(), 10000000 + 143 * (index * Random().nextDouble()));
  });

  final List<FlSpot> dummyData3 = List.generate(12, (index) {
    return FlSpot(
        index.toDouble(), 10000000 + 154 * (index * Random().nextDouble()));
  });

  @override
  Widget build(BuildContext context) {
    late TabController performancetabController;
    performancetabController = TabController(
      initialIndex: 0,
      length: 5,
      vsync: this,
    );

    return Container(
      height: MediaQuery.of(context).size.height * 0.35,
      width: MediaQuery.of(context).size.width * 0.65,
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: Colors.white),
        borderRadius: BorderRadius.all(Radius.circular(5)),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 1,
            blurRadius: 1,
            offset: Offset(0, 3), // changes position of shadow
          )
        ],
      ),
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.fromLTRB(15, 0, 15, 0),
            height: MediaQuery.of(context).size.height * 0.048,
            child: Row(
              children: [
                Text("Performance",
                    style: TextStyle(fontSize: 20, color: Color(0xff6a6a6a))),
                TabBar(
                  indicatorWeight: 5,
                  indicatorColor: Colors.red,
                  labelColor: Colors.red,
                  unselectedLabelColor: Color(0xff6a6a6a),
                  controller: performancetabController,
                  tabs: [
                    Container(
                        height: MediaQuery.of(context).size.height * 0.05,
                        child: Center(child: Text("Customer Services"))),
                    Container(
                        height: MediaQuery.of(context).size.height * 0.05,
                        child: Center(child: Text("Investment Explorer"))),
                    Container(
                        height: MediaQuery.of(context).size.height * 0.05,
                        child: Center(child: Text("Investment Explorer"))),
                    Container(
                        height: MediaQuery.of(context).size.height * 0.05,
                        child: Center(child: Text("Investment Explorer"))),
                    Container(
                        height: MediaQuery.of(context).size.height * 0.05,
                        child: Center(child: Text("Investment Explorer"))),
                  ],
                ),
              ],
            ),
          ),
          // ListTile(leading: Text("Performance", style: TextStyle(fontSize: 20,color:Color(0xff6a6a6a)),),
          // ),
          Container(
              height: 1,
              width: MediaQuery.of(context).size.width * 0.65,
              color: Color(0xffEAEAEA)),
          Container(
            width: MediaQuery.of(context).size.width * 0.65,
            height: MediaQuery.of(context).size.height * 0.28,
            padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
            child: TabBarView(
              controller: performancetabController,
              children: [
                Container(
                  margin: EdgeInsets.all(15),
                  width: MediaQuery.of(context).size.width * 0.65,
                  height: MediaQuery.of(context).size.height * 0.2,
                  child: LineChart(
                    LineChartData(
                      borderData: FlBorderData(show: false),
                      lineBarsData: [
                        LineChartBarData(
                          spots: dummyData1,
                          isCurved: false,
                          barWidth: 3,
                          colors: [
                            Colors.red,
                          ],
                        ),
                        LineChartBarData(
                          spots: dummyData2,
                          isCurved: false,
                          barWidth: 3,
                          colors: [
                            Color(0xff6a6a6a),
                          ],
                        ),
                        LineChartBarData(
                          spots: dummyData3,
                          isCurved: false,
                          barWidth: 3,
                          colors: [
                            Color(0xffD9D9D9),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                Center(
                  child: Text(
                    'First Page',
                    style: TextStyle(color: Colors.black),
                  ),
                ),
                Center(
                  child: Text(
                    'Second Page',
                    style: TextStyle(color: Colors.black),
                  ),
                ),
                Center(
                  child: Text(
                    'Second Page',
                    style: TextStyle(color: Colors.black),
                  ),
                ),
                Center(
                  child: Text(
                    'Second Page',
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

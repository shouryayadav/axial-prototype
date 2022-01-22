import 'package:fl_chart/fl_chart.dart';
import 'dart:math';
import 'package:flutter/material.dart';

class PerformanceSummaryTile extends StatefulWidget {

  @override
  State<PerformanceSummaryTile> createState() => _PerformanceSummaryTileState();
}

class _PerformanceSummaryTileState extends State<PerformanceSummaryTile> with TickerProviderStateMixin{

final List<FlSpot> dummyData1 = List.generate(12, (index) {
    return FlSpot(index.toDouble(), 32434+ 20*(index * Random().nextDouble()));
  });

  final List<FlSpot> dummyData2 = List.generate(12, (index) {
    return FlSpot(index.toDouble(), 32434+ 20*(index * Random().nextDouble()));
  });

  final List<FlSpot> dummyData3 = List.generate(12, (index) {
    return FlSpot(index.toDouble(), 32434+ 20*(index * Random().nextDouble()));
  });

@override
  Widget build(BuildContext context) {
  PageController controller2 = PageController(initialPage: 0);

    return Container(height: MediaQuery.of(context).size.height*0.35,width: MediaQuery.of(context).size.width*0.65,
              decoration: BoxDecoration(color: Colors.white,border: Border.all(color: Colors.white),borderRadius: BorderRadius.all(Radius.circular(5)),boxShadow: [
      BoxShadow(
        color: Colors.grey.withOpacity(0.5),
        spreadRadius: 1,
        blurRadius: 1,
        offset: Offset(0, 3), // changes position of shadow
      )],),
      child: Column(children: [
                Container(
                  padding: EdgeInsets.fromLTRB(15, 0, 15, 0),
                  height: MediaQuery.of(context).size.height*0.048,
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0,0,10,0),
                        child: Text("Performance", style: TextStyle(fontSize: 20,color:Color(0xff6a6a6a))),
                      ),
                      Container(height: MediaQuery.of(context).size.height*0.03,width: 1,color:Color(0xffEAEAEA)),
                      TextButton(
                    onPressed: (){
                      controller2.animateToPage(0, duration: Duration(milliseconds: 500), curve: Curves.easeIn);
                    },
                    child: Container(
                      margin: EdgeInsets.fromLTRB(0, 3, 0, 0),
                      child: Text('Summary',
                          style: TextStyle(
                              color: Color(0xff6a6a6a),
                              fontSize: 15,
                              )),
                    )),
                    TextButton(
                    onPressed: (){
                      controller2.animateToPage(1, duration: Duration(milliseconds: 500), curve: Curves.easeIn);
                    },
                    child: Container(
                      margin: EdgeInsets.fromLTRB(0, 3, 0, 0),
                      child: Text('Return',
                          style: TextStyle(
                              color: Color(0xff6a6a6a),
                              fontSize: 15,
                              )),
                    )),
                    TextButton(
                    onPressed: (){
                      controller2.animateToPage(2, duration: Duration(milliseconds: 500), curve: Curves.easeIn);
                    },
                    child: Container(
                      margin: EdgeInsets.fromLTRB(0, 3, 0, 0),
                      child: Text('Risk',
                          style: TextStyle(
                              color: Color(0xff6a6a6a),
                              fontSize: 15,
                              )),
                    )),
                    TextButton(
                    onPressed: (){
                      controller2.animateToPage(3, duration: Duration(milliseconds: 500), curve: Curves.easeIn);
                    },
                    child: Container(
                      margin: EdgeInsets.fromLTRB(0, 3, 0, 0),
                      child: Text('Stresstest',
                          style: TextStyle(
                              color: Color(0xff6a6a6a),
                              fontSize: 15,
                              )),
                    )),
                    TextButton(
                    onPressed: (){
                      controller2.animateToPage(4, duration: Duration(milliseconds: 500), curve: Curves.easeIn);
                    },
                    child: Container(
                      margin: EdgeInsets.fromLTRB(0, 3, 0, 0),
                      child: Text('Goal Attainment',
                          style: TextStyle(
                              color: Color(0xff6a6a6a),
                              fontSize: 15,
                              )),
                    ))
                    ],
                  ),
                ),
                // ListTile(leading: Text("Performance", style: TextStyle(fontSize: 20,color:Color(0xff6a6a6a)),), 
                // ),
                Container(height: 1,width: MediaQuery.of(context).size.width*0.65,color:Color(0xffEAEAEA)),
                Container(
                  width: MediaQuery.of(context).size.width*0.65,
                  height: MediaQuery.of(context).size.height*0.28,
                  padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                  child: PageView(
                    scrollDirection: Axis.horizontal,
                    controller: controller2,
                    children:  <Widget>[
                      Container(
                        margin: EdgeInsets.all(15),
                  width: MediaQuery.of(context).size.width*0.65,
                  height: MediaQuery.of(context).size.height*0.2,
                        child: LineChart(

                LineChartData(
                  lineTouchData: LineTouchData(touchTooltipData: LineTouchTooltipData(tooltipBgColor: Colors.white, )),
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
                          'Third Page',
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                      Center(
                        child: Text(
                          'Fourth Page',
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                    ],
                  ),
                ),
              ],));
  }
}
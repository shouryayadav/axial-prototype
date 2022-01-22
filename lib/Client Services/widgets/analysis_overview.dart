import 'package:fl_chart/fl_chart.dart';
import 'dart:math';
import 'package:flutter/material.dart';

class AnalysisOverviewTile extends StatefulWidget {
  @override
  State<AnalysisOverviewTile> createState() => _AnalysisOverviewTileState();
}

class _AnalysisOverviewTileState extends State<AnalysisOverviewTile>
    with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    PageController controller3 = PageController(initialPage: 0);
    return Container(
        height: MediaQuery.of(context).size.height * 0.35,
        width: MediaQuery.of(context).size.width * 0.465,
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
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 0, 10, 0),
                    child: Text("Analysis",
                        style:
                            TextStyle(fontSize: 20, color: Color(0xff6a6a6a))),
                  ),
                  Container(
                      height: MediaQuery.of(context).size.height * 0.03,
                      width: 1,
                      color: Color(0xffEAEAEA)),
                  TextButton(
                      onPressed: () {
                        controller3.animateToPage(0,
                            duration: Duration(milliseconds: 500),
                            curve: Curves.easeIn);
                      },
                      child: Container(
                        margin: EdgeInsets.fromLTRB(0, 3, 0, 0),
                        child: Text('Overview',
                            style: TextStyle(
                              color: Color(0xff6a6a6a),
                              fontSize: 15,
                            )),
                      )),
                  TextButton(
                      onPressed: () {
                        controller3.animateToPage(1,
                            duration: Duration(milliseconds: 500),
                            curve: Curves.easeIn);
                      },
                      child: Container(
                        margin: EdgeInsets.fromLTRB(0, 3, 0, 0),
                        child: Text('Sectors',
                            style: TextStyle(
                              color: Color(0xff6a6a6a),
                              fontSize: 15,
                            )),
                      )),
                  TextButton(
                      onPressed: () {
                        controller3.animateToPage(2,
                            duration: Duration(milliseconds: 500),
                            curve: Curves.easeIn);
                      },
                      child: Container(
                        margin: EdgeInsets.fromLTRB(0, 3, 0, 0),
                        child: Text('Regions',
                            style: TextStyle(
                              color: Color(0xff6a6a6a),
                              fontSize: 15,
                            )),
                      )),
                  TextButton(
                      onPressed: () {
                        controller3.animateToPage(3,
                            duration: Duration(milliseconds: 500),
                            curve: Curves.easeIn);
                      },
                      child: Container(
                        margin: EdgeInsets.fromLTRB(0, 3, 0, 0),
                        child: Text('Currencies',
                            style: TextStyle(
                              color: Color(0xff6a6a6a),
                              fontSize: 15,
                            )),
                      )),
                ],
              ),
            ),
            // ListTile(leading: Text("Analysis", style: TextStyle(fontSize: 20,color:Color(0xff6a6a6a)),),onTap: ()=> {},),
            Container(
                height: 1,
                width: MediaQuery.of(context).size.width * 0.65,
                color: Color(0xffEAEAEA)),
            Container(
              width: MediaQuery.of(context).size.width * 0.465,
              height: MediaQuery.of(context).size.height * 0.29,
              padding: EdgeInsets.fromLTRB(20, 20, 20, 10),
              child: PageView(
                scrollDirection: Axis.horizontal,
                controller: controller3,
                children: <Widget>[
                  Container(
                    width: MediaQuery.of(context).size.width * 0.465,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Total Performance (Last 5 Years)",
                          style: TextStyle(color: Color(0xff6a6a6a)),
                        ),
                        SizedBox(
                          height: 3,
                        ),
                        Container(
                          height: 10,
                          width: MediaQuery.of(context).size.width * 0.3,
                          decoration: BoxDecoration(
                              color: Colors.red,
                              border: Border.all(color: Colors.red),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(5))),
                        ),
                        SizedBox(
                          height: 3,
                        ),
                        Container(
                          height: 10,
                          width: MediaQuery.of(context).size.width * 0.25,
                          decoration: BoxDecoration(
                              color: Color(0xff6a6a6a),
                              border: Border.all(color: Color(0xff6a6a6a)),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(5))),
                        ),
                        SizedBox(
                          height: 3,
                        ),
                        Container(
                          height: 10,
                          width: MediaQuery.of(context).size.width * 0.2,
                          decoration: BoxDecoration(
                              color: Color(0xffD9D9D9),
                              border: Border.all(color: Color(0xffD9D9D9)),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(5))),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Volatility (Last 5 Years)",
                          style: TextStyle(color: Color(0xff6a6a6a)),
                        ),
                        SizedBox(
                          height: 3,
                        ),
                        Container(
                          height: 10,
                          width: MediaQuery.of(context).size.width * 0.3,
                          decoration: BoxDecoration(
                              color: Colors.red,
                              border: Border.all(color: Colors.red),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(5))),
                        ),
                        SizedBox(
                          height: 3,
                        ),
                        Container(
                          height: 10,
                          width: MediaQuery.of(context).size.width * 0.25,
                          decoration: BoxDecoration(
                              color: Color(0xff6a6a6a),
                              border: Border.all(color: Color(0xff6a6a6a)),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(5))),
                        ),
                        SizedBox(
                          height: 3,
                        ),
                        Container(
                          height: 10,
                          width: MediaQuery.of(context).size.width * 0.2,
                          decoration: BoxDecoration(
                              color: Color(0xffD9D9D9),
                              border: Border.all(color: Color(0xffD9D9D9)),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(5))),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Text(
                          "Risk Figures (Last 5 Years)",
                          style: TextStyle(color: Color(0xff6a6a6a)),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width * 0.465,
                          height: MediaQuery.of(context).size.height * 0.06,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Sharpe Ratio",
                                      style: TextStyle(
                                          color: Color(0xff6a6a6a),
                                          fontWeight: FontWeight.w100),
                                    ),
                                    Text(
                                      "Longest Loss Period",
                                      style: TextStyle(
                                          color: Color(0xff6a6a6a),
                                          fontWeight: FontWeight.w100),
                                    ),
                                    Text(
                                      "Maximum Drawdown",
                                      style: TextStyle(
                                          color: Color(0xff6a6a6a),
                                          fontWeight: FontWeight.w100),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                  height:
                                      MediaQuery.of(context).size.height * 0.1,
                                  width: 1,
                                  color: Color(0xffEAEAEA)),
                              Container(
                                height:
                                    MediaQuery.of(context).size.height * 0.06,
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text(
                                      "0.75",
                                      style: TextStyle(
                                          color: Colors.red,
                                          fontWeight: FontWeight.w100),
                                    ),
                                    Text(
                                      "40 Months",
                                      style: TextStyle(
                                          color: Colors.red,
                                          fontWeight: FontWeight.w100),
                                    ),
                                    Text(
                                      "12.22%",
                                      style: TextStyle(
                                          color: Colors.red,
                                          fontWeight: FontWeight.w100),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                  height:
                                      MediaQuery.of(context).size.height * 0.1,
                                  width: 1,
                                  color: Color(0xffEAEAEA)),
                              Container(
                                height:
                                    MediaQuery.of(context).size.height * 0.06,
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text(
                                      "0.68",
                                      style: TextStyle(
                                          color: Color(0xff6a6a6a),
                                          fontWeight: FontWeight.w100),
                                    ),
                                    Text(
                                      "21 Months",
                                      style: TextStyle(
                                          color: Color(0xff6a6a6a),
                                          fontWeight: FontWeight.w100),
                                    ),
                                    Text(
                                      "13.01%",
                                      style: TextStyle(
                                          color: Color(0xff6a6a6a),
                                          fontWeight: FontWeight.w100),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                  height:
                                      MediaQuery.of(context).size.height * 0.1,
                                  width: 1,
                                  color: Color(0xffEAEAEA)),
                              Container(
                                height:
                                    MediaQuery.of(context).size.height * 0.06,
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text(
                                      "0.55",
                                      style: TextStyle(
                                          color: Color(0xffD9D9D9),
                                          fontWeight: FontWeight.w100),
                                    ),
                                    Text(
                                      "5 Months",
                                      style: TextStyle(
                                          color: Color(0xffD9D9D9),
                                          fontWeight: FontWeight.w100),
                                    ),
                                    Text(
                                      "11.09%",
                                      style: TextStyle(
                                          color: Color(0xffD9D9D9),
                                          fontWeight: FontWeight.w100),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                width: 1,
                              )
                            ],
                          ),
                        )
                      ],
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
                ],
              ),
            ),
          ],
        ));
  }
}

import 'package:axial/Client%20Services/widgets/allocation.dart';
import 'package:axial/Investment%20Explorer/investment_explorer.dart';
import 'package:axial/Client Services/widgets/analysis_overview.dart';
import 'package:axial/Client Services/widgets/performance_summary.dart';
import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:kumi_popup_window/kumi_popup_window.dart';

class SMAHomePage extends StatefulWidget {
  @override
  State<SMAHomePage> createState() => _SMAHomePageState();
}

class _SMAHomePageState extends State<SMAHomePage>
    with TickerProviderStateMixin {
  bool status = false;
  String? dropdownValue = 'HKD';
  String? accountValue = 'All Accounts';

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(40, 0, 40, 0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.015,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                DropdownButton<String>(
                  dropdownColor: Colors.white,
                  value: dropdownValue,
                  icon: const Icon(Icons.keyboard_arrow_down),
                  iconSize: 24,
                  elevation: 16,
                  style: const TextStyle(color: Color(0xff6a6a6a)),
                  underline: Container(
                    height: 2,
                    color: Color(0xff6a6a6a),
                  ),
                  onChanged: (String? newValue) {
                    setState(() {
                      dropdownValue = newValue;
                    });
                  },
                  items: <String>['HKD', 'USD', 'SGD', 'INR']
                      .map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(5, 0, 5, 0),
                  child: FlutterSwitch(
                    width: 55,
                    height: 30,
                    valueFontSize: 10,
                    toggleSize: 20,
                    value: status,
                    borderRadius: 20.0,
                    padding: 4.0,
                    showOnOff: true,
                    activeText: dropdownValue,
                    activeColor: Colors.red,
                    inactiveText: "%",
                    onToggle: (val) {
                      setState(() {
                        status = val;
                      });
                    },
                  ),
                ),
                IconButton(
                    onPressed: () => {
                          showPopupWindow(
                            context,
                            gravity: KumiPopupGravity.rightTop,
                            //curve: Curves.elasticOut,
                            bgColor: Colors.grey.withOpacity(0.0),
                            clickOutDismiss: true,
                            clickBackDismiss: true,
                            customAnimation: false,
                            customPop: false,
                            customPage: false,
                            //targetRenderBox: (btnKey.currentContext.findRenderObject() as RenderBox),
                            //needSafeDisplay: true,
                            underStatusBar: false,
                            underAppBar: true,
                            offsetX: 20,
                            offsetY: MediaQuery.of(context).size.height * 0.05,
                            duration: Duration(milliseconds: 200),
                            onShowStart: (pop) {
                              print("showStart");
                            },
                            onShowFinish: (pop) {
                              print("showFinish");
                            },
                            onDismissStart: (pop) {
                              print("dismissStart");
                            },
                            onDismissFinish: (pop) {
                              print("dismissFinish");
                            },
                            onClickOut: (pop) {
                              print("onClickOut");
                            },
                            onClickBack: (pop) {
                              print("onClickBack");
                            },
                            childFun: (pop) {
                              return Container(
                                key: GlobalKey(),
                                padding: EdgeInsets.all(10),
                                margin: EdgeInsets.all(10),
                                height:
                                    MediaQuery.of(context).size.height * 0.2,
                                width: MediaQuery.of(context).size.width * 0.2,
                                child: ListView(
                                  children: <Widget>[
                                    ListTile(
                                      leading: Text("CRM",
                                          style: TextStyle(
                                            color: Color(0xff6a6a6a),
                                            fontSize: 15,
                                          )),
                                      trailing: Icon(
                                        Icons.people,
                                        color: Colors.red,
                                      ),
                                      onTap: () => {},
                                    ),
                                    ListTile(
                                      leading: Text("Risk Prfiling",
                                          style: TextStyle(
                                            color: Color(0xff6a6a6a),
                                            fontSize: 15,
                                          )),
                                      trailing: Icon(
                                        Icons.dangerous,
                                        color: Colors.red,
                                      ),
                                      onTap: () => {},
                                    ),
                                    ListTile(
                                      leading: Text("Wealth Management",
                                          style: TextStyle(
                                            color: Color(0xff6a6a6a),
                                            fontSize: 15,
                                          )),
                                      trailing: Icon(
                                        Icons.money,
                                        color: Colors.red,
                                      ),
                                      onTap: () => {},
                                    ),
                                    ListTile(
                                      leading: Text("Reports",
                                          style: TextStyle(
                                            color: Color(0xff6a6a6a),
                                            fontSize: 15,
                                          )),
                                      trailing: Icon(
                                        Icons.report,
                                        color: Colors.red,
                                      ),
                                      onTap: () => {},
                                    ),
                                  ],
                                ),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  border: Border.all(color: Colors.white),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(5)),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.5),
                                      spreadRadius: 1,
                                      blurRadius: 1,
                                      offset: Offset(
                                          0, 3), // changes position of shadow
                                    )
                                  ],
                                ),
                              );
                            },
                          )
                        },
                    icon: Icon(Icons.wallet_travel),
                    color: Colors.red)
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                DropdownButton<String>(
                  dropdownColor: Colors.white,
                  value: accountValue,
                  icon: const Icon(Icons.keyboard_arrow_down),
                  iconSize: 24,
                  elevation: 16,
                  style:
                      const TextStyle(color: Color(0xff6a6a6a), fontSize: 30),
                  onChanged: (String? newValue) {
                    setState(() {
                      accountValue = newValue;
                    });
                  },
                  items: <String>['All Accounts', 'Account 1', 'Account 2']
                      .map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                ),
                Spacer(),
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "32%",
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.green,
                          fontWeight: FontWeight.w600),
                    ),
                    Text(
                      "Return",
                      style: TextStyle(fontSize: 10, color: Colors.green),
                    ),
                  ],
                ),
                Container(
                    margin: EdgeInsets.fromLTRB(10, 0, 10, 0),
                    height: MediaQuery.of(context).size.height * 0.04,
                    width: 1,
                    color: Color(0xff6a6a6a)),
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "\$13,200,000",
                      style: TextStyle(
                          fontSize: 20,
                          color: Color(0xff6a6a6a),
                          fontWeight: FontWeight.w600),
                    ),
                    Text(
                      "Total Relationship",
                      style: TextStyle(fontSize: 10, color: Color(0xff6a6a6a)),
                    ),
                  ],
                ),
                Container(
                    margin: EdgeInsets.fromLTRB(10, 0, 10, 0),
                    height: MediaQuery.of(context).size.height * 0.04,
                    width: 1,
                    color: Color(0xff6a6a6a)),
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      "\$10,000,000",
                      style: TextStyle(
                          fontSize: 20,
                          color: Color(0xff6a6a6a),
                          fontWeight: FontWeight.w600),
                    ),
                    Text(
                      "Initial Investment",
                      style: TextStyle(fontSize: 10, color: Color(0xff6a6a6a)),
                    ),
                  ],
                )
              ],
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.015),
            Stack(
              children: [
                AllocationOverviewTile(),
                Row(
                  children: [
                    Spacer(),
                    PerformanceSummaryTile(),
                  ],
                )
              ],
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.025),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  children: [
                    Container(
                        height: MediaQuery.of(context).size.height * 0.12,
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
                              offset:
                                  Offset(0, 3), // changes position of shadow
                            )
                          ],
                        ),
                        child: Column(
                          children: [
                            ListTile(
                                leading: Text(
                                  "Benchmark",
                                  style: TextStyle(
                                      fontSize: 20, color: Color(0xff6a6a6a)),
                                ),
                                onTap: () => {
                                      showPopupWindow(
                                        context,
                                        gravity: KumiPopupGravity.center,
                                        //curve: Curves.elasticOut,
                                        bgColor: Colors.black.withOpacity(0.9),
                                        clickOutDismiss: true,
                                        clickBackDismiss: true,
                                        customAnimation: false,
                                        customPop: false,
                                        customPage: false,
                                        //targetRenderBox: (btnKey.currentContext.findRenderObject() as RenderBox),
                                        //needSafeDisplay: true,
                                        underStatusBar: false,
                                        underAppBar: true,
                                        offsetX: 0,
                                        offsetY: 0,
                                        duration: Duration(milliseconds: 200),
                                        onShowStart: (pop) {
                                          print("showStart");
                                        },
                                        onShowFinish: (pop) {
                                          print("showFinish");
                                        },
                                        onDismissStart: (pop) {
                                          print("dismissStart");
                                        },
                                        onDismissFinish: (pop) {
                                          print("dismissFinish");
                                        },
                                        onClickOut: (pop) {
                                          print("onClickOut");
                                        },
                                        onClickBack: (pop) {
                                          print("onClickBack");
                                        },
                                        childFun: (pop) {
                                          return Container(
                                            key: GlobalKey(),
                                            padding: EdgeInsets.all(10),
                                            height: MediaQuery.of(context)
                                                    .size
                                                    .height *
                                                0.7,
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                0.7,
                                            decoration: BoxDecoration(
                                              color: Colors.white,
                                              border: Border.all(
                                                  color: Colors.white),
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(5)),
                                              boxShadow: [
                                                BoxShadow(
                                                  color: Colors.grey
                                                      .withOpacity(0.5),
                                                  spreadRadius: 1,
                                                  blurRadius: 1,
                                                  offset: Offset(0,
                                                      3), // changes position of shadow
                                                )
                                              ],
                                            ),
                                          );
                                        },
                                      )
                                    },
                                trailing: Text(
                                  "Click to Change",
                                  style: TextStyle(
                                      fontSize: 10,
                                      fontWeight: FontWeight.w500),
                                )),
                            Container(
                                height: 1,
                                width:
                                    MediaQuery.of(context).size.width * 0.465,
                                color: Color(0xffEAEAEA)),
                            Container(
                                padding: EdgeInsets.fromLTRB(0, 20, 0, 15),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Row(
                                      children: [
                                        Container(
                                          height: 10,
                                          width: 10,
                                          decoration: BoxDecoration(
                                              color: Colors.red,
                                              border:
                                                  Border.all(color: Colors.red),
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(5))),
                                        ),
                                        SizedBox(
                                          width: 5,
                                        ),
                                        Text(
                                          accountValue!,
                                          style: TextStyle(
                                              color: Color(0xff6a6a6a)),
                                        )
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Container(
                                          height: 10,
                                          width: 10,
                                          decoration: BoxDecoration(
                                              color: Color(0xff6a6a6a),
                                              border: Border.all(
                                                  color: Color(0xff6a6a6a)),
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(5))),
                                        ),
                                        SizedBox(
                                          width: 5,
                                        ),
                                        Text(
                                          "Benchmark 1",
                                          style: TextStyle(
                                              color: Color(0xff6a6a6a)),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Container(
                                          height: 10,
                                          width: 10,
                                          decoration: BoxDecoration(
                                              color: Color(0xffEAEAEA),
                                              border: Border.all(
                                                  color: Color(0xffEAEAEA)),
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(5))),
                                        ),
                                        SizedBox(
                                          width: 5,
                                        ),
                                        Text(
                                          "Bechmark 2",
                                          style: TextStyle(
                                              color: Color(0xff6a6a6a)),
                                        ),
                                      ],
                                    )
                                  ],
                                )),
                          ],
                        )),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                        height: MediaQuery.of(context).size.height * 0.15,
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
                              offset:
                                  Offset(0, 3), // changes position of shadow
                            )
                          ],
                        ),
                        child: Column(
                          children: [
                            ListTile(
                              leading: Text(
                                "Additional Space",
                                style: TextStyle(
                                    fontSize: 20, color: Color(0xff6a6a6a)),
                              ),
                            ),
                            Container(
                                height: 1,
                                width:
                                    MediaQuery.of(context).size.width * 0.465,
                                color: Color(0xffEAEAEA)),
                            SizedBox(
                              height: 10,
                            ),
                            IconButton(
                                onPressed: () => {}, icon: Icon(Icons.add))
                          ],
                        )),
                  ],
                ),
                Spacer(),
                AnalysisOverviewTile(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

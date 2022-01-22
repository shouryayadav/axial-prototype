import 'package:axial/Client Services/SMA_homepage.dart';
import 'package:axial/Investment Explorer/investment_explorer.dart';
import 'package:axial/widgets/modal.dart';
import 'package:flutter/material.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:kumi_popup_window/kumi_popup_window.dart';

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> with TickerProviderStateMixin {
  bool status = false;
  String? dropdownValue = 'HKD';
  String? accountValue = 'All Accounts';

  @override
  Widget build(BuildContext context) {
    late TabController maintabController;
    maintabController = TabController(
      initialIndex: 0,
      length: 2,
      vsync: this,
    );

    return Scaffold(
      backgroundColor: Color(0xffF8F5F5),
      appBar: AppBar(
        leading: Row(children: [
          SizedBox(
              width: MediaQuery.of(context).size.width * 0.04,
              height: MediaQuery.of(context).size.height * 0.05),
          Image.asset("BEA_logo.png", fit: BoxFit.contain),
          SizedBox(width: MediaQuery.of(context).size.width * 0.05),
          Image.asset(
            "Axial.png",
            fit: BoxFit.contain,
            height: MediaQuery.of(context).size.height * 0.025,
          )
        ]),
        toolbarHeight: MediaQuery.of(context).size.height * 0.05,
        backgroundColor: Colors.white,
        title: Center(
          child: Container(
            height: MediaQuery.of(context).size.height * 0.05,
            width: MediaQuery.of(context).size.width * 0.21,
            child: TabBar(
              indicatorWeight: 5,
              indicatorColor: Colors.red,
              labelColor: Colors.red,
              unselectedLabelColor: Color(0xff6a6a6a),
              controller: maintabController,
              tabs: [
                Container(
                    height: MediaQuery.of(context).size.height * 0.05,
                    child: Center(child: Text("Customer Services"))),
                Container(
                    height: MediaQuery.of(context).size.height * 0.05,
                    child: Center(child: Text("Investment Explorer"))),
              ],
            ),
          ),
        ),
        actions: <Widget>[
          IconButton(
            onPressed: () => {},
            icon: Icon(Icons.settings),
            color: Color(0xff6a6a6a),
          ),
          // SizedBox(width:5),
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
                    margin: EdgeInsets.all(10),
                    height: MediaQuery.of(context).size.height * 0.07,
                    width: MediaQuery.of(context).size.width * 0.2,
                    child: TextField(
                      cursorColor: Color(0xff6a6a6a),
                      decoration: InputDecoration(
                        fillColor: Color(0xff6a6a6a),
                        hoverColor: Color(0xff6a6a6a),
                        labelText: 'Enter Customer ID to Change Client',
                      ),
                    ),
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
                  );
                },
              )
            },
            icon: Icon(Icons.refresh),
            color: Color(0xff6a6a6a),
          ),
          Container(
              height: MediaQuery.of(context).size.height * 0.001,
              width: 1,
              color: Color(0xffEAEAEA)),
          Container(
              padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
              height: MediaQuery.of(context).size.height * 0.025,
              child: Center(
                  child: Text(
                "LAU Andy",
                style: TextStyle(color: Color(0xff6a6a6a)),
              ))),
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
                          padding: EdgeInsets.all(0),
                          margin: EdgeInsets.all(10),
                          height: MediaQuery.of(context).size.height * 0.18,
                          width: MediaQuery.of(context).size.width * 0.1,
                          child: ListView(
                            children: <Widget>[
                              ListTile(
                                leading: Text("Edit Details",
                                    style: TextStyle(
                                      color: Color(0xff6a6a6a),
                                      fontSize: 15,
                                    )),
                                trailing: Icon(
                                  Icons.edit,
                                  color: Colors.red,
                                ),
                                onTap: () => {},
                              ),
                              ListTile(
                                leading: Text("Settings",
                                    style: TextStyle(
                                      color: Color(0xff6a6a6a),
                                      fontSize: 15,
                                    )),
                                trailing: Icon(
                                  Icons.settings,
                                  color: Colors.red,
                                ),
                                onTap: () => {},
                              ),
                              ListTile(
                                leading: Text("Logout",
                                    style: TextStyle(
                                      color: Color(0xff6a6a6a),
                                      fontSize: 15,
                                    )),
                                trailing: Icon(
                                  Icons.logout,
                                  color: Colors.red,
                                ),
                                onTap: () => {},
                              ),
                            ],
                          ),
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
                        );
                      },
                    )
                  },
              icon: Icon(
                Icons.keyboard_arrow_down,
                color: Color(0xff6a6a6a),
              )),
        ],
      ),
      body: TabBarView(controller: maintabController, children: [
        SMAHomePage(),
        InvestmentExplorerPage(),
      ]),
      bottomNavigationBar: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height * 0.05,
          decoration: BoxDecoration(color: Colors.white, boxShadow: [
            BoxShadow(
              offset: Offset(0, -1),
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 2,
              blurRadius: 2,
            )
          ]),
          child: Container(
            padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
            child: Row(
              children: [
                IconButton(
                    onPressed: () => showMaterialModalBottomSheet(
                          expand: false,
                          context: context,
                          backgroundColor: Colors.transparent,
                          builder: (context) => ModalFit(),
                        ),
                    icon: Icon(
                      Icons.keyboard_arrow_up,
                      color: Color(0xff6a6a6a),
                    )),
                SizedBox(
                  width: 20,
                ),
                Row(
                  children: [
                    Icon(
                      Icons.check_circle_outline_sharp,
                      color: Colors.red,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      "Risk",
                      style: TextStyle(color: Color(0xff6a6a6a)),
                    ),
                  ],
                ),
                SizedBox(
                  width: 20,
                ),
                Row(
                  children: [
                    Icon(
                      Icons.check_circle_outline_sharp,
                      color: Colors.red,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      "Structure",
                      style: TextStyle(color: Color(0xff6a6a6a)),
                    ),
                  ],
                ),
                SizedBox(
                  width: 20,
                ),
                Row(
                  children: [
                    Icon(
                      Icons.check_circle_outline_sharp,
                      color: Colors.red,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      "Diversification",
                      style: TextStyle(color: Color(0xff6a6a6a)),
                    ),
                  ],
                ),
                Spacer(),
                Text(
                  "ESG Score",
                  style: TextStyle(color: Color(0xff6a6a6a)),
                ),
                Spacer(),
                InkWell(
                  onTap: () => {},
                  child: Container(
                    height: 30,
                    width: MediaQuery.of(context).size.width * 0.06,
                    decoration: BoxDecoration(
                        color: Colors.red,
                        border: Border.all(color: Colors.red),
                        borderRadius: BorderRadius.all(Radius.circular(5))),
                    child: Center(
                        child: Text(
                      "Summary",
                      style: TextStyle(color: Colors.white),
                    )),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                InkWell(
                  onTap: () => {},
                  child: Container(
                    height: 30,
                    width: MediaQuery.of(context).size.width * 0.06,
                    decoration: BoxDecoration(
                        color: Colors.red,
                        border: Border.all(color: Colors.red),
                        borderRadius: BorderRadius.all(Radius.circular(5))),
                    child: Center(
                        child: Text(
                      "Save",
                      style: TextStyle(color: Colors.white),
                    )),
                  ),
                )
              ],
            ),
          )),
    );
  }
}

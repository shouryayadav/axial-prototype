import 'dart:math';

import 'package:axial/widgets/modal.dart';
import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:axial/widgets/modal.dart';




void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,

      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

bool status = false;
String? dropdownValue = 'HKD';
String? accountValue = 'All Accounts';

final List<FlSpot> dummyData1 = List.generate(12, (index) {
    return FlSpot(index.toDouble(), 32434+ 20*(index * Random().nextDouble()));
  });

  final List<FlSpot> dummyData2 = List.generate(12, (index) {
    return FlSpot(index.toDouble(), 32434+ 20*(index * Random().nextDouble()));
  });

  final List<FlSpot> dummyData3 = List.generate(12, (index) {
    return FlSpot(index.toDouble(), 32434+ 20*(index * Random().nextDouble()));
  });



  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.

    });
  }

  @override
  Widget build(BuildContext context) {
  PageController controller1 = PageController(initialPage: 0);
  PageController controller2 = PageController(initialPage: 0);
  PageController controller3 = PageController(initialPage: 0);


    return Scaffold(
      backgroundColor: Color(0xffF8F5F5),
      appBar: AppBar(
        leading: Row(
          children: [
            SizedBox(width: MediaQuery.of(context).size.width* 0.05),
            Image.asset("BEA_logo.png",fit: BoxFit.contain, height: MediaQuery.of(context).size.height* 0.04,),
            SizedBox(width: MediaQuery.of(context).size.width* 0.05),
            Image.asset("Axial.png",fit: BoxFit.contain,height: MediaQuery.of(context).size.height* 0.025,)
          ]
        ),
        toolbarHeight: MediaQuery.of(context).size.height* 0.05,
        backgroundColor: Colors.white,
        actions: <Widget>[
          IconButton(onPressed: () => {}, icon: Icon(Icons.settings), color: Color(0xff6a6a6a),),
          // SizedBox(width:5),
          IconButton(onPressed: () => {}, icon: Icon(Icons.refresh), color: Color(0xff6a6a6a),),
          Container(height: MediaQuery.of(context).size.height* 0.025,child: Center(child: Text("LAU Andy",style: TextStyle(color: Color(0xff6a6a6a)),))),
          IconButton(onPressed: () => {}, icon: Icon(Icons.keyboard_arrow_down, color: Color(0xff6a6a6a),)),


        ],
      ),
      body: SingleChildScrollView(
        
        child: Padding(
          padding: const EdgeInsets.fromLTRB(40, 0, 40, 0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SizedBox(height: MediaQuery.of(context).size.height* 0.015,),
              Row(mainAxisAlignment: MainAxisAlignment.end,
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
                            onChanged: (String? newValue) {setState(() {
                              dropdownValue=newValue;
                            });},
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
            ),),
              IconButton(onPressed: () => {}, icon: Icon(Icons.wallet_travel),color: Colors.red)            
              ],),
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
              children: [
              DropdownButton<String>(
                            dropdownColor: Colors.white,
                            value: accountValue,
                            icon: const Icon(Icons.keyboard_arrow_down),
                            iconSize: 24,
                            elevation: 16,
                            style: const TextStyle(color: Color(0xff6a6a6a),fontSize: 30),
                            
                            onChanged: (String? newValue) {setState(() {
                              accountValue=newValue;
                            });},
                            items: <String>['All Accounts', 'Account 1', 'Account 2']
                                .map<DropdownMenuItem<String>>((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Text(value),
                              );
                            }).toList(),
                          ),
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text("\$10,000,000",style: TextStyle(fontSize: 20,color:Color(0xff6a6a6a),fontWeight: FontWeight.w600),),
                  Text("Total Relationship",style: TextStyle(fontSize: 10,color:Color(0xff6a6a6a)),),

              ],)
            ],),
            SizedBox(height: MediaQuery.of(context).size.height*0.015),
            Row(children: [
              Container(height: MediaQuery.of(context).size.height*0.35,width: MediaQuery.of(context).size.width*0.28,
              decoration: BoxDecoration(color: Colors.white,border: Border.all(color: Colors.white),borderRadius: BorderRadius.all(Radius.circular(5)),boxShadow: [
      BoxShadow(
        color: Colors.grey.withOpacity(0.5),
        spreadRadius: 1,
        blurRadius: 1,
        offset: Offset(0, 3), // changes position of shadow
      ),
    ],),child: Column(children: [
                ListTile(leading: Text("Allocation", style: TextStyle(fontSize: 20,color:Color(0xff6a6a6a)),),onTap: ()=> {},trailing:Icon(Icons.keyboard_arrow_right,color: Color(0xff6a6a6a,))),
                Container(height: 1,width: MediaQuery.of(context).size.width*0.28,color:Color(0xffEAEAEA)),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(20,5,20,0),
                        child: InkWell(
                          onTap:() => {},
                          child: Container(
                            width: MediaQuery.of(context).size.width*0.28,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly, crossAxisAlignment: CrossAxisAlignment.start,children: [
                                  Text("Liquidity", style: TextStyle(color: Color(0xff6a6a6a)),),
                                  Container(height: 10,width: MediaQuery.of(context).size.width*0.1,decoration: BoxDecoration(color: Colors.red,border: Border.all(color: Colors.red), borderRadius: BorderRadius.all(Radius.circular(5))),),
                                  SizedBox(height: 3,),
                                  Container(height: 10,width: MediaQuery.of(context).size.width*0.05,decoration: BoxDecoration(color: Color(0xff6a6a6a),border: Border.all(color: Color(0xff6a6a6a)), borderRadius: BorderRadius.all(Radius.circular(5))),),
                                  SizedBox(height: 3,),
                                  Container(height: 10,width: MediaQuery.of(context).size.width*0.12,decoration: BoxDecoration(color: Color(0xffD9D9D9),border: Border.all(color: Color(0xffD9D9D9)), borderRadius: BorderRadius.all(Radius.circular(5))),),                                ],
                                ),
                                Icon(Icons.keyboard_arrow_right,color: Color(0xff6a6a6a,)),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(20,10,20,0),
                        child: InkWell(
                          onTap:() => {},
                          child: Container(
                            width: MediaQuery.of(context).size.width*0.28,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly, crossAxisAlignment: CrossAxisAlignment.start,children: [
                                  Text("Equities", style: TextStyle(color: Color(0xff6a6a6a)),),
                                  Container(height: 10,width: MediaQuery.of(context).size.width*0.2,decoration: BoxDecoration(color: Colors.red,border: Border.all(color: Colors.red), borderRadius: BorderRadius.all(Radius.circular(5))),),
                                  SizedBox(height: 3,),
                                  Container(height: 10,width: MediaQuery.of(context).size.width*0.15,decoration: BoxDecoration(color: Color(0xff6a6a6a),border: Border.all(color: Color(0xff6a6a6a)), borderRadius: BorderRadius.all(Radius.circular(5))),),
                                  SizedBox(height: 3,),
                                  Container(height: 10,width: MediaQuery.of(context).size.width*0.1,decoration: BoxDecoration(color: Color(0xffD9D9D9),border: Border.all(color: Color(0xffD9D9D9)), borderRadius: BorderRadius.all(Radius.circular(5))),),                                ],
                                ),
                                Icon(Icons.keyboard_arrow_right,color: Color(0xff6a6a6a,)),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(20,10,20,0),
                        child: InkWell(
                          onTap:() => {},
                          child: Container(
                            width: MediaQuery.of(context).size.width*0.28,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly, crossAxisAlignment: CrossAxisAlignment.start,children: [
                                  Text("Fixed Income", style: TextStyle(color: Color(0xff6a6a6a)),),
                                  Container(height: 10,width: MediaQuery.of(context).size.width*0.05,decoration: BoxDecoration(color: Colors.red,border: Border.all(color: Colors.red), borderRadius: BorderRadius.all(Radius.circular(5))),),
                                  SizedBox(height: 3,),
                                  Container(height: 10,width: MediaQuery.of(context).size.width*0.1,decoration: BoxDecoration(color: Color(0xff6a6a6a),border: Border.all(color: Color(0xff6a6a6a)), borderRadius: BorderRadius.all(Radius.circular(5))),),
                                  SizedBox(height: 3,),
                                  Container(height: 10,width: MediaQuery.of(context).size.width*0.15,decoration: BoxDecoration(color: Color(0xffD9D9D9),border: Border.all(color: Color(0xffD9D9D9)), borderRadius: BorderRadius.all(Radius.circular(5))),),                                ],
                                ),
                                Icon(Icons.keyboard_arrow_right,color: Color(0xff6a6a6a,)),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(20,10,20,0),
                        child: InkWell(
                          onTap:() => {},
                          child: Container(
                            width: MediaQuery.of(context).size.width*0.28,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly, crossAxisAlignment: CrossAxisAlignment.start,children: [
                                  Text("Alternatives", style: TextStyle(color: Color(0xff6a6a6a)),),
                                  Container(height: 10,width: MediaQuery.of(context).size.width*0.08,decoration: BoxDecoration(color: Colors.red,border: Border.all(color: Colors.red), borderRadius: BorderRadius.all(Radius.circular(5))),),
                                  SizedBox(height: 3,),
                                  Container(height: 10,width: MediaQuery.of(context).size.width*0.18,decoration: BoxDecoration(color: Color(0xff6a6a6a),border: Border.all(color: Color(0xff6a6a6a)), borderRadius: BorderRadius.all(Radius.circular(5))),),
                                  SizedBox(height: 3,),
                                  Container(height: 10,width: MediaQuery.of(context).size.width*0.14,decoration: BoxDecoration(color: Color(0xffD9D9D9),border: Border.all(color: Color(0xffD9D9D9)), borderRadius: BorderRadius.all(Radius.circular(5))),),                                ],
                                ),
                                Icon(Icons.keyboard_arrow_right,color: Color(0xff6a6a6a,)),
                              ],
                            ),
                          ),
                        ),
                      ),
                      
                  ],
                )
              ),
              Spacer(),
              Container(height: MediaQuery.of(context).size.height*0.35,width: MediaQuery.of(context).size.width*0.65,
              decoration: BoxDecoration(color: Colors.white,border: Border.all(color: Colors.white),borderRadius: BorderRadius.all(Radius.circular(5)),boxShadow: [
      BoxShadow(
        color: Colors.grey.withOpacity(0.5),
        spreadRadius: 1,
        blurRadius: 1,
        offset: Offset(0, 3), // changes position of shadow
      )],),child: Column(children: [
                ListTile(leading: Text("Performance", style: TextStyle(fontSize: 20,color:Color(0xff6a6a6a)),),),
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
                    ],
                  ),
                ),
              ],)),
            ],),
            SizedBox(height:MediaQuery.of(context).size.height*0.025),
            Row(
              
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
              Column(
                children: [
                  Container(height: MediaQuery.of(context).size.height*0.12,width: MediaQuery.of(context).size.width*0.465,
                  decoration: BoxDecoration(color: Colors.white,border: Border.all(color: Colors.white),borderRadius: BorderRadius.all(Radius.circular(5)),boxShadow: [
      BoxShadow(
        color: Colors.grey.withOpacity(0.5),
        spreadRadius: 1,
        blurRadius: 1,
        offset: Offset(0, 3), // changes position of shadow
      )],),child: Column(children: [
                    ListTile(leading: Text("Benchmark", style: TextStyle(fontSize: 20,color:Color(0xff6a6a6a)),),onTap: ()=> {},trailing:Text("Click to Change",style: TextStyle(fontSize: 10,fontWeight: FontWeight.w500),)),
                    Container(height: 1,width: MediaQuery.of(context).size.width*0.465,color:Color(0xffEAEAEA)),
                    Container(
                      padding: EdgeInsets.fromLTRB(0,20,0,15),
                      child:Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Row(children: [
                            Container(height: 10,width: 10,decoration: BoxDecoration(color: Colors.red,border: Border.all(color: Colors.red), borderRadius: BorderRadius.all(Radius.circular(5))),),
                            SizedBox(width: 5,),
                            Text(accountValue!, style: TextStyle(color: Color(0xff6a6a6a)),)
                          ],),
                          Row(children: [
                            Container(height: 10,width: 10,decoration: BoxDecoration(color: Color(0xff6a6a6a),border: Border.all(color: Color(0xff6a6a6a)), borderRadius: BorderRadius.all(Radius.circular(5))),),
                            SizedBox(width: 5,),
                            Text("Benchmark 1", style: TextStyle(color: Color(0xff6a6a6a)),),
                          ],),
                          Row(children: [
                            Container(height: 10,width: 10,decoration: BoxDecoration(color: Color(0xffEAEAEA),border: Border.all(color: Color(0xffEAEAEA)), borderRadius: BorderRadius.all(Radius.circular(5))),),
                            SizedBox(width: 5,),
                            Text("Bechmark 2", style: TextStyle(color: Color(0xff6a6a6a)),),
                          ],)
                        ],

                      )),
                    
                  ],)),
                  SizedBox(height: 20,),
                  Container(height: MediaQuery.of(context).size.height*0.15,width: MediaQuery.of(context).size.width*0.465,
                  decoration: BoxDecoration(color: Colors.white,border: Border.all(color: Colors.white),borderRadius: BorderRadius.all(Radius.circular(5)),boxShadow: [
      BoxShadow(
        color: Colors.grey.withOpacity(0.5),
        spreadRadius: 1,
        blurRadius: 1,
        offset: Offset(0, 3), // changes position of shadow
      )],),child: Column(children: [
                    ListTile(leading: Text("Additional Space", style: TextStyle(fontSize: 20,color:Color(0xff6a6a6a)),),),
                    Container(height: 1,width: MediaQuery.of(context).size.width*0.465,color:Color(0xffEAEAEA)),
                    SizedBox(height: 10,),
                    IconButton(onPressed: () => {}, icon: Icon(Icons.add))
                    
                  ],)),
                ],
              ),
              Spacer(),
              Container(height: MediaQuery.of(context).size.height*0.35,width: MediaQuery.of(context).size.width*0.465,
              decoration: BoxDecoration(color: Colors.white,border: Border.all(color: Colors.white),borderRadius: BorderRadius.all(Radius.circular(5)),boxShadow: [
      BoxShadow(
        color: Colors.grey.withOpacity(0.5),
        spreadRadius: 1,
        blurRadius: 1,
        offset: Offset(0, 3), // changes position of shadow
      )],),child: Column(children: [
                ListTile(leading: Text("Analysis", style: TextStyle(fontSize: 20,color:Color(0xff6a6a6a)),),onTap: ()=> {},),
                Container(height: 1,width: MediaQuery.of(context).size.width*0.65,color:Color(0xffEAEAEA)),
                Container(
                  width: MediaQuery.of(context).size.width*0.465,
                  height: MediaQuery.of(context).size.height*0.29,
                  padding: EdgeInsets.fromLTRB(20, 20, 20, 10),
                  child: PageView(
                    scrollDirection: Axis.horizontal,
                    controller: controller3,
                    children:  <Widget>[
                          Container(
                            width: MediaQuery.of(context).size.width*0.465,
                                child: Column(mainAxisAlignment: MainAxisAlignment.start, crossAxisAlignment: CrossAxisAlignment.start,children: [
                                  Text("Total Performance (Last 5 Years)", style: TextStyle(color: Color(0xff6a6a6a)),),
                                  SizedBox(height: 3,),
                                  Container(height: 10,width: MediaQuery.of(context).size.width*0.3,decoration: BoxDecoration(color: Colors.red,border: Border.all(color: Colors.red), borderRadius: BorderRadius.all(Radius.circular(5))),),
                                  SizedBox(height: 3,),
                                  Container(height: 10,width: MediaQuery.of(context).size.width*0.25,decoration: BoxDecoration(color: Color(0xff6a6a6a),border: Border.all(color: Color(0xff6a6a6a)), borderRadius: BorderRadius.all(Radius.circular(5))),),
                                  SizedBox(height: 3,),
                                  Container(height: 10,width: MediaQuery.of(context).size.width*0.2,decoration: BoxDecoration(color: Color(0xffD9D9D9),border: Border.all(color: Color(0xffD9D9D9)), borderRadius: BorderRadius.all(Radius.circular(5))),),
                                  SizedBox(height: 10,),
                                  Text("Volatility (Last 5 Years)", style: TextStyle(color: Color(0xff6a6a6a)),),
                                  SizedBox(height: 3,),
                                  Container(height: 10,width: MediaQuery.of(context).size.width*0.3,decoration: BoxDecoration(color: Colors.red,border: Border.all(color: Colors.red), borderRadius: BorderRadius.all(Radius.circular(5))),),
                                  SizedBox(height: 3,),
                                  Container(height: 10,width: MediaQuery.of(context).size.width*0.25,decoration: BoxDecoration(color: Color(0xff6a6a6a),border: Border.all(color: Color(0xff6a6a6a)), borderRadius: BorderRadius.all(Radius.circular(5))),),
                                  SizedBox(height: 3,),
                                  Container(height: 10,width: MediaQuery.of(context).size.width*0.2,decoration: BoxDecoration(color: Color(0xffD9D9D9),border: Border.all(color: Color(0xffD9D9D9)), borderRadius: BorderRadius.all(Radius.circular(5))),),
                                  SizedBox(height: 15,),
                                  Text("Risk Figures (Last 5 Years)", style: TextStyle(color: Color(0xff6a6a6a)),),
                                  SizedBox(height: 5,),
                                  Container(
                                    width: MediaQuery.of(context).size.width*0.465,
                                    height: MediaQuery.of(context).size.height*0.06,                            
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Container(
                                          child: Column(
                                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                            crossAxisAlignment:CrossAxisAlignment.start,
                                            children: [
                                               Text("Sharpe Ratio", style: TextStyle(color: Color(0xff6a6a6a),fontWeight: FontWeight.w100),),
                                               Text("Longest Loss Period", style: TextStyle(color: Color(0xff6a6a6a),fontWeight: FontWeight.w100),),
                                               Text("Maximum Drawdown", style: TextStyle(color: Color(0xff6a6a6a),fontWeight: FontWeight.w100),),
                                            ],
                                          ),
                                        ),
                                        Container(height: MediaQuery.of(context).size.height*0.1,width: 1,color:Color(0xffEAEAEA)),
                                        Container(
                                          height: MediaQuery.of(context).size.height*0.06,
                                          child: Column(
                                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                            crossAxisAlignment:CrossAxisAlignment.center,
                                            children: [
                                               Text("0.75", style: TextStyle(color: Colors.red,fontWeight: FontWeight.w100),),
                                               Text("40 Months", style: TextStyle(color: Colors.red,fontWeight: FontWeight.w100),),
                                               Text("12.22%", style: TextStyle(color: Colors.red,fontWeight: FontWeight.w100),),
                                            ],
                                          ),
                                        ),
                                        Container(height: MediaQuery.of(context).size.height*0.1,width: 1,color:Color(0xffEAEAEA)),
                                        Container(
                                          height: MediaQuery.of(context).size.height*0.06,
                                          child: Column(
                                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                            crossAxisAlignment:CrossAxisAlignment.center,
                                            children: [
                                               Text("0.68", style: TextStyle(color: Color(0xff6a6a6a),fontWeight: FontWeight.w100),),
                                               Text("21 Months", style: TextStyle(color: Color(0xff6a6a6a),fontWeight: FontWeight.w100),),
                                               Text("13.01%", style: TextStyle(color: Color(0xff6a6a6a),fontWeight: FontWeight.w100),),
                                            ],
                                          ),
                                        ),
                                        Container(height: MediaQuery.of(context).size.height*0.1,width: 1,color:Color(0xffEAEAEA)),
                                        Container(
                                          height: MediaQuery.of(context).size.height*0.06,
                                          child: Column(
                                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                            crossAxisAlignment:CrossAxisAlignment.center,
                                            children: [
                                               Text("0.55", style: TextStyle(color: Color(0xffD9D9D9),fontWeight: FontWeight.w100),),
                                               Text("5 Months", style: TextStyle(color: Color(0xffD9D9D9),fontWeight: FontWeight.w100),),
                                               Text("11.09%", style: TextStyle(color: Color(0xffD9D9D9),fontWeight: FontWeight.w100),),
                                            ],
                                          ),
                                        ),
                                        SizedBox(width: 1,)
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
                    ],
                  ),
                ),
              ],)),
            ],),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(width: MediaQuery.of(context).size.width,height: MediaQuery.of(context).size.height*0.05,decoration: BoxDecoration(color:Colors.white,boxShadow: [BoxShadow(offset: Offset(0,-1),        color: Colors.grey.withOpacity(0.5),
        spreadRadius: 2,
        blurRadius: 2,)] ),
        child: Container(
          padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
          child: Row(
            children: [
            IconButton(onPressed: () => showMaterialModalBottomSheet(
                              expand: false,
                              context: context,
                              backgroundColor: Colors.transparent,
                              builder: (context) => ModalFit(),
                            ), icon: Icon(Icons.keyboard_arrow_up, color: Color(0xff6a6a6a),)),
               SizedBox(width: 20,),
            Row(
              children: [
                Icon(Icons.check_circle_outline_sharp, color: Colors.red,),
                SizedBox(width: 5,),
                Text("Risk", style: TextStyle(color: Color(0xff6a6a6a)),),
              ],
            ),
               SizedBox(width: 20,),
            Row(
              children: [
                Icon(Icons.check_circle_outline_sharp, color: Colors.red,),
                SizedBox(width: 5,),
                Text("Structure", style: TextStyle(color: Color(0xff6a6a6a)),),
              ],
            ),
               SizedBox(width: 20,),
            Row(
              children: [
                Icon(Icons.check_circle_outline_sharp, color: Colors.red,),
                SizedBox(width: 5,),
                Text("Diversification", style: TextStyle(color: Color(0xff6a6a6a)),),
              ],
            ),
              Spacer(),
              Text("ESG Score", style: TextStyle(color: Color(0xff6a6a6a)),),
              Spacer(),
              InkWell(
                onTap: () => {},
                child: Container(height: 30,width: MediaQuery.of(context).size.width*0.06,decoration: BoxDecoration(color: Colors.red,border: Border.all(color: Colors.red), borderRadius: BorderRadius.all(Radius.circular(5))),child: Center(child: Text("Summary",style: TextStyle(color: Colors.white),)),),
              ),
              SizedBox(width: 10,),
              InkWell(
                onTap: () => {},
                child: Container(height: 30,width: MediaQuery.of(context).size.width*0.06,decoration: BoxDecoration(color: Colors.red,border: Border.all(color: Colors.red), borderRadius: BorderRadius.all(Radius.circular(5))),child: Center(child: Text("Save",style: TextStyle(color: Colors.white),)),),
              )

            ],
          ),
        )),
      );
  }
}

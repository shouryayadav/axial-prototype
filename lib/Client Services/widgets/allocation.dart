import 'package:flutter/material.dart';
import 'package:kumi_popup_window/kumi_popup_window.dart';
import 'dart:ui' as ui;


class AllocationOverviewTile extends StatefulWidget {

  @override
  State<AllocationOverviewTile> createState() => _AllocationOverviewTileState();
}

class _AllocationOverviewTileState extends State<AllocationOverviewTile> with TickerProviderStateMixin{
  
  @override
  Widget build(BuildContext context) {
      return Container(height: MediaQuery.of(context).size.height*0.35,width: MediaQuery.of(context).size.width*0.28,
              decoration: BoxDecoration(color: Colors.white,border: Border.all(color: Colors.white),borderRadius: BorderRadius.all(Radius.circular(5)),boxShadow: [
      BoxShadow(
        color: Colors.grey.withOpacity(0.5),
        spreadRadius: 1,
        blurRadius: 1,
        offset: Offset(0, 3), // changes position of shadow
      ),
    ],),child: Column(children: [
                ListTile(leading: Text("Allocation", style: TextStyle(fontSize: 20,color:Color(0xff6a6a6a)),),onTap: ()=> {
                  showPopupWindow(
  context,
  gravity: KumiPopupGravity.leftTop,
  curve: Curves.linear,
  bgColor: Colors.black.withOpacity(0),
  clickOutDismiss: true,
  clickBackDismiss: true,
  customAnimation: false,
  customPop: false,
  customPage: false,
  //targetRenderBox: (btnKey.currentContext.findRenderObject() as RenderBox),
  //needSafeDisplay: true,
  underStatusBar: false,
  underAppBar: true,
  offsetX: 40,
  offsetY: MediaQuery.of(context).size.height*0.126,
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
  onClickOut: (pop){
    print("onClickOut");
  },
  onClickBack: (pop){
    print("onClickBack");
  },
  childFun: (pop) {
    return Row(
      children: [
        Container(height: MediaQuery.of(context).size.height*0.35,width: MediaQuery.of(context).size.width*0.28,
              decoration: BoxDecoration(color: Colors.white,border: Border.all(color: Colors.white),borderRadius: BorderRadius.all(Radius.circular(5)),boxShadow: [
      BoxShadow(
        color: Colors.grey.withOpacity(0.5),
        spreadRadius: 1,
        blurRadius: 1,
        offset: Offset(0, 3), // changes position of shadow
      ),
    ],),child: Text("Hello"),)
      ]
    );
  },
)
                },trailing:Icon(Icons.keyboard_arrow_right,color: Color(0xff6a6a6a,))),
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
              );
  }
}

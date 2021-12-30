import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ModalFit extends StatelessWidget {
  const ModalFit({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
  PageController controller = PageController(initialPage: 0);

    return Material(
        child: Container(
          height: MediaQuery.of(context).size.height*0.8,
          margin: EdgeInsets.fromLTRB(30, 30, 30, 30),
          child: PageView(
                  scrollDirection: Axis.horizontal,
                  controller: controller,
                  children:  <Widget>[
                    Center(
                      child: Image.asset("suitability.png",fit: BoxFit.cover,),),
                    
                    Center(
                      child: Text('ESG Analysis',
                          style: TextStyle(color: Colors.black)),
                    ),
                    Center(
                      child: Text('Goal Analysis',
                          style: TextStyle(color: Colors.black)),
                    ),
                  ],
                )
        ));
  }
}
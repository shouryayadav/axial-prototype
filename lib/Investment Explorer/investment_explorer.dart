import 'package:flutter/material.dart';
import 'package:flutter_expandable_table/flutter_expandable_table.dart';

const Color primaryColor = Colors.white; //corner
const Color accentColor = Colors.white; //background
const TextStyle textStyle = TextStyle(color: Color(0xff6a6a6a));
const TextStyle textStyleSubItems = TextStyle(color: Colors.grey);

class InvestmentExplorerPage extends StatefulWidget {
  @override
  State<InvestmentExplorerPage> createState() => _InvestmentExplorerPageState();
}

class _InvestmentExplorerPageState extends State<InvestmentExplorerPage>
    with TickerProviderStateMixin {
  ExpandableTable _buildExpandableTable() {
    const int COLUMN_COUNT = 10;
    const int SUB_COLUMN_COUNT = 5;
    const int ROW_COUNT = 6;

    //Creation header
    ExpandableTableHeader subHeader = ExpandableTableHeader(
        firstCell: Container(
            color: primaryColor,
            child: Center(
                child: Text(
              'Expandable Column',
              style: textStyleSubItems,
            ))),
        children: List.generate(
            SUB_COLUMN_COUNT,
            (index) => Container(
                color: primaryColor,
                child: Center(
                    child: Text(
                  'Sub Column $index',
                  style: textStyleSubItems,
                )))));

    //Creation header
    ExpandableTableHeader header = ExpandableTableHeader(
        firstCell: Container(
            color: primaryColor,
            child: Center(
                child: Text(
              '',
              style: textStyle,
            ))),
        children: List.generate(
            COLUMN_COUNT - 1,
            (index) => index == 6
                ? subHeader
                : Container(
                    height: 20,
                    color: primaryColor,
                    child: Center(
                        child: Text(
                      'Column $index',
                      style: textStyle,
                    )))));

    //Creation sub rows
    List<ExpandableTableRow> subTows1 = List.generate(
        ROW_COUNT,
        (rowIndex) => ExpandableTableRow(
              height: 20,
              firstCell: Container(
                  color: primaryColor,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 16.0),
                    child: Text(
                      'Sub Sub Row $rowIndex',
                      style: textStyleSubItems,
                    ),
                  )),
              children: List<Widget>.generate(
                  COLUMN_COUNT + SUB_COLUMN_COUNT - 1,
                  (columnIndex) => Container(
                      color: primaryColor,
                      child: Center(
                          child: Text(
                        'Cell $rowIndex:$columnIndex',
                        style: textStyleSubItems,
                      )))),
            ));
    List<ExpandableTableRow> subTows = List.generate(
        ROW_COUNT,
        (rowIndex) => ExpandableTableRow(
            height: 20,
            firstCell: Container(
                color: primaryColor,
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Text(
                      'Sub Row $rowIndex',
                      style: textStyleSubItems,
                    ),
                  ),
                )),
            children: subTows1,
            legend: Container(
              color: primaryColor,
              child: Center(
                child: Text(
                  'Expandible sub Row...',
                  style: textStyle,
                ),
              ),
            )));
    //Creation rows
    List<ExpandableTableRow> rows = List.generate(
        ROW_COUNT,
        (rowIndex) => ExpandableTableRow(
              height: 30,
              firstCell: Container(
                  color: primaryColor,
                  child: Center(
                      child: Text(
                    'Row $rowIndex',
                    style: textStyle,
                  ))),
              legend: rowIndex == 0
                  ? Container(
                      color: primaryColor,
                      child: Center(
                        child: Text(
                          'Expandible Row...',
                          style: textStyle,
                        ),
                      ),
                    )
                  : null,
              children: rowIndex == 0
                  ? subTows
                  : List<Widget>.generate(
                      COLUMN_COUNT + SUB_COLUMN_COUNT - 1,
                      (columnIndex) => Container(
                          color: primaryColor,
                          child: Center(
                              child: Text(
                            'Cell $rowIndex:$columnIndex',
                            style: textStyle,
                          )))),
            ));

    return ExpandableTable(
      rows: rows,
      header: header,
      scrollShadowColor: accentColor,
    );
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Padding(
            padding: const EdgeInsets.fromLTRB(40, 0, 40, 0),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.04,
                  ),
                  Row(
                    children: [
                      Container(
                          margin: EdgeInsets.all(10),
                          height: MediaQuery.of(context).size.height * 0.8,
                          width: MediaQuery.of(context).size.width * 0.7,
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
                              ),
                            ],
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Expanded(
                                child: _buildExpandableTable(),
                              ),
                            ],
                          )),
                      Spacer(),
                      Container(
                        margin: EdgeInsets.all(10),
                        height: MediaQuery.of(context).size.height * 0.8,
                        width: MediaQuery.of(context).size.width * 0.2,
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
                            ),
                          ],
                        ),
                        child: Text("Hello"),
                      ),
                    ],
                  ),
                ])));
  }
}

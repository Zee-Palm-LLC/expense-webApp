import 'package:expense_screen/data/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class Newbar extends StatefulWidget {
  // ignore: prefer_const_constructors_in_immutables
  Newbar({Key? key}) : super(key: key);

  @override
  _NewbarState createState() => _NewbarState();
}

class _NewbarState extends State<Newbar> {
  late List<_ChartData> data;
  late TooltipBehavior _tooltip;

  @override
  void initState() {
    data = [
      _ChartData('tan', 550),
      _ChartData('Man', 600),
      _ChartData('ppr', 650),
      _ChartData('uay', 700),
      _ChartData('lun', 600),
      _ChartData('sul', 450),
      _ChartData('fug', 400),
      _ChartData('lul', 700),
      _ChartData('jeb', 550),
      _ChartData('Mar', 600),
      _ChartData('Apr', 650),
      _ChartData('May', 700),
      _ChartData('Jun', 750),
      _ChartData('Jul', 450),
      _ChartData('sug', 400),
      _ChartData('ful', 700),
      _ChartData('kar', 600),
      _ChartData('tpr', 650),
      _ChartData('ray', 700),
      _ChartData('wun', 700),
      _ChartData('oul', 450),
      _ChartData('lug', 400),
      _ChartData('rul', 700),
    ];
    _tooltip = TooltipBehavior(
        enable: true,
        header: "",
        //textStyle: TextStyle(color: kBlackBackground),
        tooltipPosition: TooltipPosition.pointer);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.transparent,
      height: 100.h,
      width: 620.h,
      child: SfCartesianChart(
          plotAreaBorderWidth: 0,
          primaryXAxis: CategoryAxis(
              isVisible: false,
              axisLine: const AxisLine(width: 0),
              majorTickLines: const MajorTickLines(width: 0),
              minorTickLines: const MinorTickLines(width: 0),
              minorGridLines: const MinorGridLines(width: 0),
              majorGridLines: const MajorGridLines(width: 0)),
          primaryYAxis: NumericAxis(isVisible: false),
          tooltipBehavior: _tooltip,
          series: <ChartSeries<_ChartData, String>>[
            ColumnSeries<_ChartData, String>(
                width: 0.9,
                spacing: 0.3,
                dataSource: data,
                xValueMapper: (_ChartData data, _) => data.x,
                yValueMapper: (_ChartData data, _) => data.y,
                color: CustomColor.klightbluebar)
          ]),
    );
  }
}

class _ChartData {
  _ChartData(this.x, this.y);

  final String x;
  final double y;
}

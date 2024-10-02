import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:money_record_note/assets/colors/color.dart';

class MoneyRecordChart extends StatefulWidget {
  MoneyRecordChart({super.key});

  List<Color> get availableColors => const <Color>[
        Colors.purple,
        Colors.yellow,
        Colors.blue,
        Colors.orange,
        Colors.pink,
        Colors.red,
      ];

  final Color barBackgroundColor = Colors.white; // 막대 배경
  final Color barColor = Colors.white;
  final Color touchedBarColor = mainGreen;


  @override
  State<MoneyRecordChart> createState() => _MoneyRecordChartState();
}

class _MoneyRecordChartState extends State<MoneyRecordChart> {

  final Duration animDuration = const Duration(milliseconds: 250);
  int touchedIndex = -1;
  bool isPlaying = false;
  double graphWidth = 18; // 그래프 넓이

  // 차트 하단에 나타낼 월
  int month = 12;

  // 현재 월을 정의
  int currentMonth = DateTime.now().month;

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1,
      child: Stack(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                const Text(
                  '월별 잔고',
                  style: TextStyle(
                    color: Colors.black87,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 4,
                ),
                Text(
                  '올해의 잔고를 한눈에 확인하세요!',
                  style: TextStyle(
                    color: Colors.blueAccent,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 38,
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child: BarChart(
                      fixedData(), // 고정된 데이터 메서드를 호출합니다.
                    ),
                  ),
                ),
                const SizedBox(
                  height: 12,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  // barGroup 만드는 메서드
  BarChartGroupData makeGroupData(int x, double y,
      {bool isTouched = false, // 막대가 터치되었을 때의 상태
      Color? barColor, // 막대 색깔
      double width = 18,
      List<int> showToolTips = const [] // 툴팁을 보여줄 막대들
      }) {
    barColor = mainYellow; // 기본 색상으로 mainPeach
    bool isCurrentMonth = x == currentMonth - 1; // 현재 월인지 체크
    // barColor ??= widget.barColor; // 기본 색상이 지정되지 않으면 widget.barColor 사용

    return BarChartGroupData(
      x: x,
      barRods: [
        BarChartRodData(
            toY: y,
            color: barColor,
            width: width,
            borderRadius: BorderRadius.vertical(top: Radius.circular(5)),
          // borderSide: const BorderSide(color: mainGreen, width: 1), // 막대 배경선
          // 현재 월일 때 막대 위에 값을 표시
          rodStackItems: isCurrentMonth
              ? [
            BarChartRodStackItem(
              0,
              y,
              barColor,
            ),
          ]
              : [],
        ),
      ],
    );
  }

  // 띄울 데이터
  BarChartData fixedData() {
    final List<double> monthData = [
      100,
      200,
      300,
      400,
      500,
      600,
      700,
      800,
      900,
      1000,
      1100,
      1200
    ];

    return BarChartData(
      barTouchData: BarTouchData(
        // 터치 상호작용 활성화
        enabled: true,
        // 툴팁 관련 설정
        touchTooltipData: BarTouchTooltipData(
          tooltipMargin: 20,
          getTooltipItem: (group, groupIndex, rod, rodIndex) {
            return BarTooltipItem(
                '${rod.toY.toInt()}', // 막대 값 표시
                const TextStyle(
                  color: Colors.white, // 툴팁 텍스트 색상
                  fontWeight: FontWeight.bold,
                  fontSize: 14, // 툴팁 텍스트 크기
                )
            );
          })
      ),
      // 막대 전체의 타이틀 여부 on/off
      titlesData: FlTitlesData(
        show: true,
        topTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
        // 막대 아래 부분에 띄우는 타이틀
        bottomTitles: AxisTitles(
          sideTitles: SideTitles(
            showTitles: true,
            getTitlesWidget: getTitlesBottom, // 월별 제목을 표시
            reservedSize: 38, // 라벨이 차지할 공간 설정
          ),
        ),
        // 막대 왼쪽 부분에 띄우는 타이틀
        leftTitles: AxisTitles(
          sideTitles: SideTitles(
            showTitles: false,
            getTitlesWidget: getTitlesLeft,
            reservedSize: 38
          ),
        ),
        // 막대 오른쪽에 띄우는 타이틀
        rightTitles: AxisTitles(
          sideTitles: SideTitles(
            showTitles: false,
          ))),
      // 차트 외곽 경계선
      borderData: FlBorderData(
        show: true,
        border: Border(bottom: BorderSide(color: Colors.black, width: 0.5))
      ),
      // 막대 바
      barGroups: List.generate(12, (i) {
        return makeGroupData(
          i,
          monthData[i], // 월별 데이터를 사용하여 막대 생성
          barColor: mainPeach
        );
      }),
      gridData: FlGridData(show: true, drawVerticalLine: false), // 그리드 라인 표시 여부
    );
  }

  Widget getTitlesBottom(double value, TitleMeta meta) {
    const style = TextStyle(
      color: Colors.black87,
      fontSize: 14,
    );
    Widget text;
    switch (value.toInt()) {
      case 0:
        text = const Text('1', style: style);
        break;
      case 1:
        text = const Text('2', style: style);
        break;
      case 2:
        text = const Text('3', style: style);
        break;
      case 3:
        text = const Text('4', style: style);
        break;
      case 4:
        text = const Text('5', style: style);
        break;
      case 5:
        text = const Text('6', style: style);
        break;
      case 6:
        text = const Text('7', style: style);
        break;
      case 7:
        text = const Text('8', style: style);
        break;
      case 8:
        text = const Text('9', style: style);
        break;
      case 9:
        text = const Text('10', style: style);
        break;
      case 10:
        text = const Text('11', style: style);
        break;
      case 11:
        text = const Text('12', style: style);
        break;
      default:
        text = const Text('', style: style);
        break;
    }
    return SideTitleWidget(
      axisSide: meta.axisSide,
      space: 16,
      child: text,
    );
  }
  Widget getTitlesLeft(double value, TitleMeta meta) {
    const style = TextStyle(
      color: Colors.black87,
      fontSize: 12,
    );
    // 200단위로 Y값을 표시
    return SideTitleWidget(
      axisSide: meta.axisSide,
      space: 8,
      child: Text(value.toInt().toString(), style: style),
    );
  }

}

import 'dart:math';

import 'package:audioplayers/audioplayers.dart';
import 'package:color_app/coloring_page_controller.dart';
import 'package:confetti/confetti.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../screen_screen.dart';
import '../../shared_components/coloring/whiteboard.dart';

class Example5 extends StatefulWidget {
  const Example5({super.key});
  @override
  State<Example5> createState() => _Example5State();
}

class _Example5State extends State<Example5> {
  final _controller = ConfettiController();
  bool isPlaying = false;
  var player=AudioPlayer();

  List<Color> colors = [
    Colors.yellow.shade100,
    Colors.brown.shade600,
    Colors.lightGreen.shade600,
    const Color.fromARGB(255, 220, 102, 183),
    const Color.fromARGB(255, 132, 203, 236),
    const Color.fromARGB(255, 152, 130, 79),
    Colors.grey.shade800,
    Colors.green.shade700,
  
 
  ];
  var historyDrawingPoints = <DrawingPoint>[];
  var drawingPoints = <DrawingPoint>[];
  Color selectedColor = Colors.green;
  var selectedwidth = 2.0;
  DrawingPoint? currentDrawingPoint;

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topCenter,
      children: [
        Scaffold(
          backgroundColor: Colors.white,
          body: Stack(
            children: [
              const FixedContainer(),
              Center(
                child: SingleChildScrollView(
                  child: Column(children: [
                    Padding(
                        padding: EdgeInsets.symmetric(vertical: 20.0.sp),
                        child: CommonImageContainer(
                          hight: 45.w,
                          width: 280.w,
                          image: 'assets/images/coloring/color_time_word.png',
                          color: const Color.fromARGB(255, 252, 245, 227),
                          boarderRadius: 10.0,
                        )),
                    SizedBox(
                      height: 300.0.w,
                      width: 350.0.w,
                      child: Stack(
                        children: [
                          CommonImageContainer(
                            hight: 300.0.w,
                            width: 350.0.w,
                            image: 'assets/images/coloring/white_paper.png',
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              bottom: 9.0.sp,
                              right: 5.0.sp,
                              left: 13.0.sp,
                            ),
                            child: Center(
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    CommonImageContainer(
                                        hight: 250.w,
                                        width: 300.w,
                                        image:
                                            'assets/images/coloring/coloring_page_5/cow.jpeg')
                                  ]),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ]),
                ),
              ),
               GestureDetector(
      onPanStart: (details) {
        setState(() {});
        currentDrawingPoint = DrawingPoint(
          id: DateTime.now().microsecondsSinceEpoch,
          offsets: [
            details.localPosition,
          ],
          color: selectedColor,
          width: selectedwidth,
        );
        if (currentDrawingPoint == null) return;
        drawingPoints.add(currentDrawingPoint!);
        historyDrawingPoints = List.of(drawingPoints);
      },
      onPanUpdate: (details) {
        setState(() {});
        if (currentDrawingPoint == null) return;
        currentDrawingPoint = currentDrawingPoint?.copyWith(
            offsets: currentDrawingPoint!.offsets..add(details.localPosition));
        drawingPoints.last = currentDrawingPoint!;
        historyDrawingPoints = List.of(drawingPoints);
      },
      onPanEnd: (_) {
        currentDrawingPoint == null;
      },
      child: CustomPaint(
        painter: DrawingPainter(
          drawingPoints: drawingPoints,
        ),
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
        ),
      ),
    ),
              Row(
                children: [
                  SizedBox(
                    width: 135.0.w,
                    child: Row(children: [
                      Padding(
                        padding: EdgeInsets.only(top: 30.0.sp, bottom: 30.0.sp),
                        child: SingleChildScrollView(
                          child: Column(
                            children: [
                              BottomAppBar(
                                child: Container(
                                  color: Color.fromARGB(255, 255, 253, 248),
                                  padding: const EdgeInsets.all(14.0),
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: List.generate(
                                        colors.length,
                                        (index) =>
                                            _buildColorChose(colors[index])),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ]),
                  ),
                  const Spacer(),
                  Padding(
                    padding: EdgeInsets.only(top: 40.0.sp, bottom: 30.0.sp),
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          CommonIconContainer(
                            height: 50.0.w,
                            width: 50.0.w,
                            image: 'assets/images/coloring/exit.png',
                            onTap: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context){
                                                return Screen();
                                              }));
                            },
                          ),
                          SizedBox(
                            height: 5.0.w,
                          ),
                          CommonIconContainer(
                            height: 45.0.w,
                            width: 45.0.w,
                            image: 'assets/images/coloring/undo.png',
                            onTap: () {
                              setState(() {
                                if (drawingPoints.isNotEmpty &&
                                    historyDrawingPoints.isNotEmpty) {
                                  setState(() {
                                    drawingPoints.removeLast();
                                  });
                                }
                              });
                            },
                          ),
                          SizedBox(
                            height: 5.0.w,
                          ),
                          CommonIconContainer(
                            height: 50.0.w,
                            width: 50.0.w,
                            image: 'assets/images/coloring/redo.png',
                            onTap: () {
                              setState(() {
                                if (drawingPoints.length <
                                    historyDrawingPoints.length) {
                                  final index = drawingPoints.length;
                                  drawingPoints
                                      .add(historyDrawingPoints[index]);
                                }
                              });
                            },
                          ),
                          SizedBox(
                            height: 5.0.w,
                          ),
                          CommonIconContainer(
                              height: 70.0.w,
                              width: 70.0.w,
                              image: 'assets/images/coloring/eraser.png',
                              onTap: () {
                                setState(() => drawingPoints = []);
                              }),
                          SizedBox(
                            height: 5.0.w,
                          ),
                          CommonIconContainer(
                            height: 70.0.w,
                            width: 70.0.w,
                            image: 'assets/images/coloring/surprise.png',
                            onTap: () {
                              player.play(AssetSource('Yay_Sound.mp3'));
                              if (isPlaying) {
                                _controller.stop();
                              } else {
                                _controller.play();
                              }
                              isPlaying = !isPlaying;
                            },
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        Align(
          alignment: Alignment.topCenter,
          child: ConfettiWidget(
            confettiController: _controller,
            blastDirectionality: BlastDirectionality.explosive,
            emissionFrequency: 0.05,
            gravity: 0.5,
            shouldLoop: true,
          ),
        )
      ],
    );
  }

  Widget _buildColorChose(Color color) {
    bool isSelected = selectedColor == color;
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedColor = color;
        });
      },
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 10.0.w),
        child: Container(
          width: isSelected ? 30.0.w : 20.0.w,
          height: isSelected ? 30.0.w : 20.0.w,
          decoration: BoxDecoration(
            color: color,
            shape: BoxShape.circle,
            border: isSelected
                ? Border.all(
                    color: Colors.white,
                    width: 3.0.sp,
                  )
                : null,
          ),
        ),
      ),
    );
  }
}
class DrawingPainter extends CustomPainter {
  final List<DrawingPoint> drawingPoints;
  DrawingPainter({required this.drawingPoints});
  @override
  void paint(Canvas canvas, Size size) {
    for (var drawingPoint in drawingPoints) {
      final paint = Paint()
        ..color = drawingPoint.color
        ..isAntiAlias = true
        ..strokeWidth = drawingPoint.width
        ..strokeCap = StrokeCap.round;
      for (var i = 0; i < drawingPoint.offsets.length; i++) {
        var notLastOffset = i != drawingPoint.offsets.length - 1;
        if (notLastOffset) {
          final current = drawingPoint.offsets[i];
          final next = drawingPoint.offsets[i + 1];
          canvas.drawLine(current, next, paint);
        } else {}
      }
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
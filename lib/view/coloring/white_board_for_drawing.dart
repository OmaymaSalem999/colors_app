
import 'package:audioplayers/audioplayers.dart';
import 'package:color_app/viewmodel/matching_colors_view_model/screen_screen.dart';
import 'package:confetti/confetti.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../viewmodel/matching_colors_view_model/coloring_page_controller.dart';
import '../../shared_components/coloring/whiteboard.dart';

class WhiteBoard extends StatefulWidget {
  const WhiteBoard({super.key});

  @override
  State<WhiteBoard> createState() => _WhiteBoardState();
}

class _WhiteBoardState extends State<WhiteBoard> {
  final _controller = ConfettiController();
  bool isPlaying = false;
   var player=AudioPlayer();
   List<Color> colors = [
    Colors.orange,
    Colors.green,
    Colors.black,
    Colors.purple,
    Colors.blue,
    Colors.red,
    Colors.yellow,
    Colors.grey,
    Colors.pink,
    Colors.brown,
    Colors.indigo,
    Colors.white,
    Colors.teal,
    
    
  ];
  var historyDrawingPoints = <DrawingPoint>[];
  var drawingPoints = <DrawingPoint>[];
  Color selectedColor = Colors.green;
  var selectedwidth = 2.0;
  DrawingPoint? currentDrawingPoint;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [Scaffold(
        backgroundColor: Colors.white,
        body: Stack(
          children: [
            
            Padding(
              padding: EdgeInsets.only(top: 25.0.w),
              child: Column(
               
                children: [
                  Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                        width: 80.0.w,
                        height: 60.0.w,
                        decoration: const BoxDecoration(
                          image: DecorationImage(image: AssetImage('assets/images/coloring/Art.png'),fit: BoxFit.fill),
                        ),
                      ),
                    
                      ],
                    ),
                  ),
                ],
                
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
                    height:600.0.w,
                    child: Row(
                      children: [
                       SingleChildScrollView(
                          child: Column(
                            children: [
                              BottomAppBar(
                                height:600.0.w,
                                color: const Color.fromARGB(255, 182, 129, 111),
                                child: Container(
                                  color: const Color.fromARGB(255, 252, 230, 215),
                                  padding: const EdgeInsets.all(14.0),
                                  child: SingleChildScrollView(
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
                              ),
                            ],
                          ),
                        ),
                      
                    ]),
                  ),
                  const Spacer(),
                   Container(
                      color: const Color.fromARGB(255, 182, 129, 111),
                      width: 70.0.w,
                      height: 600.0.w,
                      child: SingleChildScrollView(
                        child: Column(
                          children: [
                            CommonIconContainer(
                              height: 50.0.w,
                              width: 50.0.w,
                              image: 'assets/images/coloring/exit.png',
                              onTap: () {
                                Navigator.push(context, MaterialPageRoute(builder: (context){
                                                  return const Screen();
                                                }));
                              },
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
                            
                            CommonIconContainer(
                                height: 70.0.w,
                                width: 70.0.w,
                                image: 'assets/images/coloring/eraser.png',
                                onTap: () {
                                  setState(() => drawingPoints = []);
                                }),
                            
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
        padding: EdgeInsets.symmetric(vertical: 20.0.w),
        child: Container(
          width: isSelected ? 25.0.w : 20.0.w,
          height: isSelected ? 25.0.w : 20.0.w,
          decoration: BoxDecoration(
            color: color,
            shape: BoxShape.circle,
            border: isSelected
                ? Border.all(
                    color: Colors.white,
                    width: 2.0.sp,
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
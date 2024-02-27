import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../shared_components/matching_colors/color_model.dart';
import '../../shared_components/matching_colors/dialog.dart';
import '../../shared_components/matching_colors/images.dart';
import '../../view/home_screen.dart';
import '../../view/matching_colors/view_page_7.dart';

class DragDrop5 extends StatefulWidget {
  const DragDrop5({super.key});

  @override
  State<DragDrop5> createState() => _DragDrop5State();
}

class _DragDrop5State extends State<DragDrop5> {
  var player = AudioPlayer();
  late int score;

  var list = Images(items: [
    colorsModel(
        image: 'assets/images/matching_colors/matching_colors_page_6/picture21.png', value: '21'),
    colorsModel(
        image: 'assets/images/matching_colors/matching_colors_page_6/picture22.png', value: '22'),
    colorsModel(
        image: 'assets/images/matching_colors/matching_colors_page_6/picture23.png', value: '23'),
    colorsModel(
        image: 'assets/images/matching_colors/matching_colors_page_6/picture24.png', value: '24'),
  ], items2: [
    colorsModel(
        image: 'assets/images/matching_colors/matching_colors_page_6/picture21_21.png', value: '21'),
    colorsModel(
        image: 'assets/images/matching_colors/matching_colors_page_6/picture22_22.png', value: '22'),
    colorsModel(
        image: 'assets/images/matching_colors/matching_colors_page_6/picture23_23.png', value: '23'),
    colorsModel(
        image: 'assets/images/matching_colors/matching_colors_page_6/picture24_24.png', value: '24'),
  ]);
  @override
  void initState() {
    super.initState();
    initGame();
  }

  initGame() {
    score = 0;
    list.items;
    list.items2;
    list.items.shuffle();
    list.items2.shuffle();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Padding(
        padding: EdgeInsets.only(top: 20.0.w),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.from(
                list.items.map((item) {
                  return Container(
                    margin: const EdgeInsets.all(12.0),
                    child: Draggable<colorsModel>(
                      data: item,
                      childWhenDragging: Container(
                        height: 76.0.w,
                        width: 76.0.w,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage('${item.image}'))),
                      ),
                      feedback: Container(
                        height: 76.0.w,
                        width: 76.0.w,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage('${item.image}'))),
                      ),
                      child: Container(
                        height: 76.0.w,
                        width: 76.0.w,
                        decoration: BoxDecoration(
                            border: Border.all(color: Color.fromARGB(255, 211, 168, 52), width: 3.0),
                            borderRadius: BorderRadius.circular(10.0),
                            image: DecorationImage(
                                image: AssetImage('${item.image}'))),
                      ),
                    ),
                  );
                }),
              ),
            ),
          
            SizedBox(height: 40.0.w,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.from(
                list.items2.map((item) {
                  return DragTarget<colorsModel>(
                    onAccept: (receivedItem) {
                      if (item.value == receivedItem.value) {
                        setState(() {
                          item.image = receivedItem.image;
                          list.items.remove(receivedItem);
                        });
                        score += 10;
          
                        item.accepting = false;
                        player.play(AssetSource('success_sound.mp3'));
                        if(score==40){
                                          showDialog(context: context, 
                                          builder:(context){
                                            return DialogContainer(color:const Color.fromARGB(255, 52, 108, 211),borderColor: Colors.white,
                                            onPressed: (){
                                                Navigator.push(context, MaterialPageRoute(builder: (context){
                                                return  HomeScreen();
                                              }));
                                            },
                                            onTap: (){
                                              Navigator.push(context, MaterialPageRoute(builder: (context){
                                                return const Page7();
                                              }));
                                            },
                                            );
                                          }
                                         
                                          );
                                        }
                      } else {
                        score -= 5;
                        item.accepting = false;
                         
                                        
                      }
                    },
                    onWillAccept: (receivedItem) => true,
                    builder: (context, acceptedItems, rejectedItems) => Container(
                      margin: const EdgeInsets.all(12.0),
                      child: Container(
                        height: 76.0.w,
                        width: 76.0.w,
                        decoration: BoxDecoration(
                            border: Border.all(color:Color.fromARGB(255, 211, 168, 52), width: 3.0),
                            borderRadius: BorderRadius.circular(10.0),
                            shape: BoxShape.rectangle,
                            image: DecorationImage(
                                image: AssetImage('${item.image}'))),
                      ),
                    ),
                  );
                }),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

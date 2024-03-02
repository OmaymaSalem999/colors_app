
import 'package:color_app/view/learning/learning_colors.dart';
import 'package:color_app/view/learning/purple.dart';
import 'package:color_app/view/learning/yellow.dart';
import 'package:flutter/material.dart';
import 'package:media_kit/media_kit.dart';
import 'package:media_kit_video/media_kit_video.dart';

/// Stateful widget to fetch and then display video content.
class Grey extends StatefulWidget {
  const Grey({super.key});

  @override
  State<StatefulWidget> createState() => _VideoAppState();
}

class _VideoAppState extends State<Grey> {
  // Create a [Player] to control playback.

  late final player = Player();
  // Create a [VideoController] to handle video output from [Player].
  late final controller = VideoController(
    player,
   
    );

  @override
  void initState() {
    super.initState();
    // Play a [Media] or [Playlist].
    player.open(Media(
        'https://github.com/OmaymaSalem/videos/assets/145923636/5037c4bd-5052-433e-b070-a28116cf89bb'));
  }

  @override
  void dispose() {
    player.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialDesktopVideoControlsTheme(
  normal: MaterialDesktopVideoControlsThemeData(
    // Modify theme options:
    seekBarThumbColor: Colors.white,
    seekBarPositionColor: Colors.green,
    toggleFullscreenOnDoublePress: true,
    // Modify top button bar:
    topButtonBar: [
      const Spacer(),
      MaterialDesktopCustomButton(
        onPressed: () {
          player.dispose();
            Navigator.push(context, MaterialPageRoute(builder: (context){
                                                        return const LearningColors();
                                                      }));
         
        },
        icon: const Icon(Icons.clear),
        iconSize:40.0,
      ),
    ],
    // Modify bottom button bar:
    bottomButtonBar: [
      const Spacer(),
     IconButton(onPressed:(){
          player.dispose();

        Navigator.push(context, MaterialPageRoute(builder: (context){
                                                        return const Yellow();
                                                      }));
     }, icon:const Icon(Icons.arrow_back_outlined),color: Colors.white,iconSize: 50.0,),
     const SizedBox(width: 20.0,),
     const  MaterialDesktopPlayOrPauseButton(
      iconSize: 50.0,
     ),
     const SizedBox(width: 20.0,),
     IconButton(onPressed:(){
       player.dispose();

        Navigator.push(context, MaterialPageRoute(builder: (context){
                                                        return const Purple();
                                                      }));
     }, icon:const Icon(Icons.arrow_forward_outlined),color: Colors.white,iconSize: 50.0,),
     const  Spacer(),
     
    ],
  ),
  fullscreen: const MaterialDesktopVideoControlsThemeData(),
  child: Scaffold(
    body: Video(
      controller: controller,
    ),
  ),
);

  }
}
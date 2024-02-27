import 'package:color_app/view/coloring/coloring_page_1.dart';
import 'package:color_app/view/coloring/coloring_page_10.dart';
import 'package:color_app/view/coloring/coloring_page_12.dart';

import 'package:color_app/view/coloring/coloring_page_2.dart';
import 'package:color_app/view/coloring/coloring_page_3.dart';
import 'package:color_app/view/coloring/coloring_page_4.dart';
import 'package:color_app/view/coloring/coloring_page_5.dart';
import 'package:color_app/view/coloring/coloring_page_6.dart';
import 'package:color_app/view/coloring/coloring_page_7.dart';
import 'package:color_app/view/coloring/coloring_page_8.dart';
import 'package:color_app/view/coloring/coloring_page_9.dart';
import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';

class ExampleHome2 extends StatefulWidget {
  const ExampleHome2({super.key});

  @override
  State<ExampleHome2> createState() => _ExampleHome2State();
}

class _ExampleHome2State extends State<ExampleHome2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage('assets/images/coloring/white_background.png'),
          fit: BoxFit.fill),
        ),

        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Padding(
            padding: EdgeInsets.only(top: 1.0),
            child: Column(
                children: [
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Padding(
                      padding: EdgeInsets.only(left: 30.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Center(
                            child: Container(
                              height: 100,
                              width: 300.0,
                              child: Stack(
                                children:[ 
                                  Container(
                                  height: 100.0,
                                  width: 400.0,
                                 
                                ),
                              Padding(
                                padding: EdgeInsets.only(
                                 left: 40.0,
                           
                                ),
                                child: Column(
                                   mainAxisAlignment: MainAxisAlignment.center,
                                     children: [
                                      Container(
                                          child: Text('Choose a drawing',
                                          style:GoogleFonts.acme(
                                            color: Color.fromARGB(255, 224, 140, 101),
                                            fontSize: 35.0,
                                            fontWeight: FontWeight.bold,
                                            
                                          
                                          )),
                                        ),
                                     ],
                                   ),
                              ),
                               
                                
                                ],
                              ),
                                              ),
                          ),
                        
                       
                       SizedBox(width:50.0,),
                            Padding(
                              padding: EdgeInsets.only(
                                top: 26.0,
                              ),
                              child:
                                      IconButton(
                                     icon:Center(
                                       child: Container(
                                        height: 70.0,
                                        width: 70.0,
                                        decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          border: Border.all(color: Color.fromARGB(255, 165, 94, 194),width: 3.0),
                                          image: DecorationImage(image: AssetImage('assets/images/coloring/arrow_forward.png'),
                                          fit: BoxFit.fill,
                                          ),
                                        ),
                                       ),
                                     ),
                                      onPressed:(){} ,
                                      iconSize: 50.0,),
                                  
                                
                                                     
                                
                              
                            ),
                            
                        ]
                        
                        
                      ),
                    ),
                  ),
                  SizedBox(height: 25.0),
                   Padding(
                    padding: EdgeInsets.only(right: 10.0),
                     child: Center(
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Row(children: [
                               Column(
                          children:[ Container(
                            height: 200.0,
                            width: 200.0,
                            child: Stack(
                            children: [
                              Container(
                                height: 200.0,
                                width: 200.0,
                                decoration: BoxDecoration(
                                  
                                  image: DecorationImage(image: AssetImage('assets/images/coloring/paper_white.png'),),
                                ),
                              ),
                                 Padding(
                                  padding: EdgeInsets.only(
                                    bottom:25.0,
                                    right: 5.0,
                                    left: 5.0,
                                  ),
                                   child: Column(
                                   
                                     mainAxisAlignment: MainAxisAlignment.end,
                                     children: [
                                      Container(
                                        height: 140.0,
                                        width: 190.0,
                                        child: IconButton(onPressed: (){
                                                Navigator.push(context,MaterialPageRoute(builder: (context){
                                                  return Example4();
                                                }));
                            
                                        }, icon:Container(
                                                height:200,
                                                decoration: BoxDecoration(
                                              image: DecorationImage(image: AssetImage('assets/images/coloring/rabbit_remove.png')),
                                                           ),
                                                         ),),
                                      ),
                                      
                                     ]
                                   ),
                                 ),
                            ],
                                      ),
                          ),
                         
                          Container(
                            height: 200.0,
                            width: 200.0,
                            child: Stack(
                            children: [
                              Container(
                                height: 200.0,
                                width: 200.0,
                                decoration: BoxDecoration(
                                  
                                  image: DecorationImage(image: AssetImage('assets/images/coloring/paper_white.png')),
                                ),
                              ),
                            
                                 Padding(
                                  padding: EdgeInsets.only(
                                    bottom:25.0,
                                    right: 5.0,
                                    left: 5.0,
                                  ),
                                   child: Column(
                                   
                                     mainAxisAlignment: MainAxisAlignment.end,
                                     children: [
                                      Container(
                                        height: 140.0,
                                        width: 190.0,
                                        child: IconButton(onPressed: (){
                            
                                           Navigator.push(context,MaterialPageRoute(builder: (context){
                                                  return Example1();
                                                }));
                                        }, icon: Container(
                                                height:200,
                                                decoration: BoxDecoration(
                                              image: DecorationImage(image: AssetImage('assets/images/coloring/giraffe_remove.png')),
                                                           ),
                                                         ),),
                                      )
                                      
                                     ]
                                   ),
                                 ),
                            ],
                                      ),
                          ),
                          ],
                        ),
                        SizedBox(width: 10.0,),
                           
                         Column(
                           children:[ Container(
                            height: 200.0,
                            width: 200.0,
                            child: Stack(
                            children: [
                              Container(
                                height:200.0,
                                width: 200.0,
                                decoration: BoxDecoration(
                                  image: DecorationImage(image: AssetImage('assets/images/coloring/paper_white.png')),
                                ),
                              ),
                                 Padding(
                                  padding: EdgeInsets.only(
                                    bottom:25.0,
                                    right: 5.0,
                                    left: 5.0,
                                  ),
                                   child: Column(
                                   
                                     mainAxisAlignment: MainAxisAlignment.end,
                                     children: [
                                      Container(
                                           height: 140.0,
                                           width: 190.0,
                                        child: IconButton(onPressed: (){
                            
                                           Navigator.push(context,MaterialPageRoute(builder: (context){
                                                  return Example2();
                                                }));
                                        }, icon: Container(
                                              height: 200.0,
                                                decoration: BoxDecoration(
                                              image: DecorationImage(image: AssetImage('assets/images/coloring/elephant_remove.png')),
                                                           ),
                                                         ), ),
                                      ),
                                     
                                     ]
                                   ),
                                 ),
                            ],
                                      ),
                                       ),
                         Container(
                          height: 200.0,
                          width: 200.0,
                          child: Stack(
                          children: [
                            Container(
                              height: 200.0,
                              width: 200.0,
                              decoration: BoxDecoration(
                                image: DecorationImage(image: AssetImage('assets/images/coloring/paper_white.png')),
                              ),
                            ),
                               Padding(
                                padding: EdgeInsets.only(
                                  bottom:25.0,
                                  right: 5.0,
                                  left: 5.0,
                                ),
                                 child: Column(
                                 
                                   mainAxisAlignment: MainAxisAlignment.end,
                                   children: [
                                    Container(
                                      height: 140,
                                      width: 190.0,
                                      child: IconButton(onPressed: (){
                            
                                         Navigator.push(context,MaterialPageRoute(builder: (context){
                                                  return Example7();
                                                }));
                                      }, icon: Container(
                                               height: 200,
                                              decoration: BoxDecoration(
                                            image: DecorationImage(image: AssetImage('assets/images/coloring/octupus_remove.png')),
                                                         ),
                                                       ), ),
                                    )
                                   
                                   ]
                                 ),
                               ),
                          ],
                                    ),
                        ),
                           ],
                         ),
                             
                            ],),
                            
                                     Row(children: [
                      Column(
                               children: [
                                Container(
                                             height: 200.0,
                                             width: 200.0,
                                             child: Stack(
                                             children: [
                                               Container(
                                height: 200.0,
                                width: 200.0,
                                decoration: BoxDecoration(
                                  image: DecorationImage(image: AssetImage('assets/images/coloring/paper_white.png')),
                                ),
                                               ),
                                 Padding(
                                  padding: EdgeInsets.only(
                                    bottom:25.0,
                                    right: 5.0,
                                    left: 5.0,
                                  ),
                                   child: Column(
                                   
                                     mainAxisAlignment: MainAxisAlignment.end,
                                     children: [
                                      Container(
                                        height: 140.0,
                                        width: 190.0,
                                        child: IconButton(onPressed: (){
                                           Navigator.push(context,MaterialPageRoute(builder: (context){
                                                  return Example6();
                                                }));
                                        }, icon: Container(
                                              height: 150.0,
                                                decoration: BoxDecoration(
                                              image: DecorationImage(image: AssetImage('assets/images/coloring/parrot_remove.png')),
                                                           ),
                                                         ),),
                                      )
                                      
                                     ]
                                   ),
                                 ),
                                             ],
                                      ),
                                           ),
                                           Container(
                                             height: 200.0,
                                             width: 200.0,
                                             child: Stack(
                                             children: [
                                               Container(
                                height: 200.0,
                                width: 200.0,
                                decoration: BoxDecoration(
                                  image: DecorationImage(image: AssetImage('assets/images/coloring/paper_white.png')),
                                ),
                                               ),
                                 Padding(
                                  padding: EdgeInsets.only(
                                    bottom:25.0,
                                    right: 5.0,
                                    left: 5.0,
                                  ),
                                   child: Column(
                                   
                                     mainAxisAlignment: MainAxisAlignment.end,
                                     children: [
                                      Center(
                                        child: Container(
                                          height: 140.0,
                                          width: 190.0,
                                          child: IconButton(onPressed: (){
                                                     Navigator.push(context,MaterialPageRoute(builder: (context){
                                                  return Example9();
                                                }));
                            
                                          }, icon:  Container(
                                                  height: 200,
                                                  decoration: BoxDecoration(
                                                image: DecorationImage(image: AssetImage('assets/images/coloring/lion_remove.png')),
                                                             ),
                                                           ),),
                                        ),
                                      )
                                     
                                     ]
                                   ),
                                 ),
                                             ],
                                      ),
                                           ),
                               ],
                             ),
                             
                              SizedBox(width: 10.0,), 
                            Column(
                              children:[ Container(
                                height: 200.0,
                                width: 200.0,
                                child: Stack(
                                children: [
                                  Container(
                                    height: 200.0,
                                    width: 200.0,
                                    decoration: BoxDecoration(
                                      image: DecorationImage(image: AssetImage('assets/images/coloring/paper_white.png')),
                                    ),
                                  ),
                                     Padding(
                                      padding: EdgeInsets.only(
                                        bottom:25.0,
                                        right: 5.0,
                                        left: 5.0,
                                      ),
                                       child: Column(
                                       
                                         mainAxisAlignment: MainAxisAlignment.end,
                                         children: [
                                          Container(
                                            height: 140.0,
                                            width: 190.0,
                                            child: IconButton(onPressed: (){
                                                    Navigator.push(context,MaterialPageRoute(builder: (context){
                                                      return Example8();
                                                    }));
                          
                                            }, icon:Container(
                                                    height:200,
                                                    decoration: BoxDecoration(
                                                  image: DecorationImage(image: AssetImage('assets/images/coloring/fish_remove.png')),
                                                               ),
                                                             ),),
                                          ),
                                          
                                         ]
                                       ),
                                     ),
                                ],
                                          ),
                              ),
                              Container(
                                height: 200.0,
                                width: 200.0,
                                child: Stack(
                                children: [
                                  Container(
                                    height: 200.0,
                                    width: 200.0,
                                    decoration: BoxDecoration(
                                      image: DecorationImage(image: AssetImage('assets/images/coloring/paper_white.png')),
                                    ),
                                  ),
                                
                                     Padding(
                                      padding: EdgeInsets.only(
                                        bottom:25.0,
                                        right: 5.0,
                                        left: 5.0,
                                      ),
                                       child: Column(
                                       
                                         mainAxisAlignment: MainAxisAlignment.end,
                                         children: [
                                          Container(
                                            height: 140.0,
                                            width: 190.0,
                                            child: IconButton(onPressed: (){
                          
                                               Navigator.push(context,MaterialPageRoute(builder: (context){
                                                      return Example10();
                                                    }));
                                            }, icon: Container(
                                                    height:200.0,
                                                    decoration: BoxDecoration(
                                                  image: DecorationImage(image: AssetImage('assets/images/coloring/hen_remove.png')),
                                                               ),
                                                             ),),
                                          )
                                          
                                         ]
                                       ),
                                     ),
                                ],
                                          ),
                              ),
                              ],
                            ),
                                     ],),
                       Row(children: [
                            
                             Column(
                               children:[ Container(
                                height: 200.0,
                                width: 200.0,
                                child: Stack(
                                children: [
                                  Container(
                                    height: 200.0,
                                    width: 200.0,
                                    decoration: BoxDecoration(
                                      image: DecorationImage(image: AssetImage('assets/images/coloring/paper_white.png')),
                                    ),
                                  ),
                                     Padding(
                                      padding: EdgeInsets.only(
                                        bottom:25.0,
                                        right: 5.0,
                                        left: 5.0,
                                      ),
                                       child: Column(
                                       
                                         mainAxisAlignment: MainAxisAlignment.end,
                                         children: [
                                          Container(
                                               height: 140,
                                               width: 190.0,
                                            child: IconButton(onPressed: (){
                          
                                               Navigator.push(context,MaterialPageRoute(builder: (context){
                                                      return Example3();
                                                    }));
                                            }, icon: Container(
                                                 height: 200,
                                                    decoration: BoxDecoration(
                                                  image: DecorationImage(image: AssetImage('assets/images/coloring/sea_turtle_remove.png')),
                                                               ),
                                                             ), ),
                                          ),
                                         
                                         ]
                                       ),
                                     ),
                                ],
                                          ),
                                           ),
                             Container(
                              height: 200.0,
                              width: 200.0,
                              child: Stack(
                              children: [
                                Container(
                                  height: 200.0,
                                  width: 200.0,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(image: AssetImage('assets/images/coloring/paper_white.png')),
                                  ),
                                ),
                                   Padding(
                                    padding: EdgeInsets.only(
                                      bottom:25.0,
                                      right: 5.0,
                                      left: 5.0,
                                    ),
                                     child: Column(
                                     
                                       mainAxisAlignment: MainAxisAlignment.end,
                                       children: [
                                        Container(
                                          height: 140,
                                          width: 190.0,
                                          child: IconButton(onPressed: (){
                          
                                             Navigator.push(context,MaterialPageRoute(builder: (context){
                                                      return Example12();
                                                    }));
                                          }, icon: Container(
                                                  height: 200,
                                                  decoration: BoxDecoration(
                                                image: DecorationImage(image: AssetImage('assets/images/coloring/corocodile_remove.png')),
                                                             ),
                                                           ), ),
                                        )
                                       
                                       ]
                                     ),
                                   ),
                              ],
                                        ),
                            ),
                               ],
                             ),
                             SizedBox(width: 10.0,),
                                
                                 Column(
                                   children: [
                                    Container(
                                                 height: 200.0,
                                                 width: 200.0,
                                                 child: Stack(
                                                 children: [
                                                   Container(
                                    height: 200.0,
                                    width: 200.0,
                                    decoration: BoxDecoration(
                                      image: DecorationImage(image: AssetImage('assets/images/coloring/paper_white.png')),
                                    ),
                                                   ),
                                     Padding(
                                      padding: EdgeInsets.only(
                                        bottom:25.0,
                                        right: 5.0,
                                        left: 5.0,
                                      ),
                                       child: Column(
                                       
                                         mainAxisAlignment: MainAxisAlignment.end,
                                         children: [
                                          Container(
                                            height: 140.0,
                                            width: 200.0,
                                            child: IconButton(onPressed: (){
                                               Navigator.push(context,MaterialPageRoute(builder: (context){
                                                      return Example5();
                                                    }));
                                            }, icon: Container(
                                                  height: 200.0,
                                                    decoration: BoxDecoration(
                                                  image: DecorationImage(image: AssetImage('assets/images/coloring/cow_remove.png')),
                                                               ),
                                                             ),),
                                          )
                                          
                                         ]
                                       ),
                                     ),
                                                 ],
                                          ),
                                               ),
                                               Container(
                                                 height: 200.0,
                                                 width: 200.0,
                                                 child: Stack(
                                                 children: [
                                                   Container(
                                    height: 200.0,
                                    width: 200.0,
                                    decoration: BoxDecoration(
                                      image: DecorationImage(image: AssetImage('assets/images/coloring/paper_white.png')),
                                    ),
                                                   ),
                                     Padding(
                                      padding: EdgeInsets.only(
                                        bottom:25.0,
                                        right: 5.0,
                                        left: 5.0,
                                      ),
                                       child: Column(
                                       
                                         mainAxisAlignment: MainAxisAlignment.end,
                                         children: [
                                          Center(
                                            child: Container(
                                              height: 140.0,
                                              width: 200.0,
                                              child: IconButton(onPressed: (){
                                                         Navigator.push(context,MaterialPageRoute(builder: (context){
                                                      return Example12();
                                                    }));
                          
                                              }, icon:  Container(
                                                      height: 200.0,
                                                      decoration: BoxDecoration(
                                                    image: DecorationImage(image: AssetImage('assets/images/coloring/bear_remove.png')),
                                                                 ),
                                                               ),),
                                            ),
                                          )
                                         
                                         ]
                                       ),
                                     ),
                                                 ],
                                          ),
                                               ),
                                   ],
                                 ),
                             
                       ],),
                              
                          
                        
                         
                      
                      
                          ],
                        ),
                      ),
                                  ),
                   ),
                  
                ],
              ),
          ),
          
        ),
      ),
    );
  }
}
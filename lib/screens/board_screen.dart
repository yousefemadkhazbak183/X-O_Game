import 'package:flutter/material.dart';
import 'package:x_o_game/screens/board_button.dart';

class BoardScreen extends StatelessWidget {
List<String> stateButton = [
  '','','',
  '','','',
  '','','',
];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.tealAccent,
        title: Text('Route X-O Game', style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.normal),),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    children: [
                      Text('Player1: ',style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 18),),
                      Text('Sccore1: ',style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 18),),
                    ],
                  ),

                  Column(
                    children: [
                      Text('Player2: ',style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 18),),
                      Text('Sccore2: ',style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 18),),
                    ],
                  ),
                ],
              ),
          ),
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                BoardButton(buttonTitle: stateButton[0], onButtonClickedCallBack: onButtonClickedCallBack,index: 0,),
                BoardButton(buttonTitle: stateButton[1], onButtonClickedCallBack: onButtonClickedCallBack,index: 1,),
                BoardButton(buttonTitle: stateButton[2], onButtonClickedCallBack: onButtonClickedCallBack,index: 2,),
              ],
            ),
          ),
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                BoardButton(buttonTitle: stateButton[3], onButtonClickedCallBack: onButtonClickedCallBack,index: 3,),
                BoardButton(buttonTitle: stateButton[4], onButtonClickedCallBack: onButtonClickedCallBack,index: 4,),
                BoardButton(buttonTitle: stateButton[5], onButtonClickedCallBack: onButtonClickedCallBack,index: 5,),
              ],
            ),
          ),
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                BoardButton(buttonTitle: stateButton[6], onButtonClickedCallBack: onButtonClickedCallBack,index: 6,),
                BoardButton(buttonTitle: stateButton[7], onButtonClickedCallBack: onButtonClickedCallBack,index: 7,),
                BoardButton(buttonTitle: stateButton[8], onButtonClickedCallBack: onButtonClickedCallBack,index: 8,),
              ],
            ),
          ),
        ],
      ),
    );
  }

  void onButtonClickedCallBack(){

  }
}

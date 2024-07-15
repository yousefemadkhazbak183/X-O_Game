import 'package:flutter/material.dart';
import 'package:x_o_game/screens/board_button.dart';

class BoardScreen extends StatefulWidget {
  @override
  State<BoardScreen> createState() => _BoardScreenState();
}

class _BoardScreenState extends State<BoardScreen> {
  int player1Score = 0;
  int player2Score = 0;

  List<String> stateButton = [
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.redAccent,
        title: Text(
          'Route X-O Game',
          style: TextStyle(
              color: Colors.white, fontSize: 18, fontWeight: FontWeight.normal),
        ),
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
                    Text(
                      'Player1: ',
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 18),
                    ),
                    Text(
                      'Sccore1: $player1Score',
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 18),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Text(
                      'Player2: ',
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 18),
                    ),
                    Text(
                      'Sccore2: $player2Score',
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 18),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                BoardButton(
                  buttonTitle: stateButton[0],
                  onButtonClickedCallBack: onButtonClickedCall,
                  index: 0,
                ),
                BoardButton(
                  buttonTitle: stateButton[1],
                  onButtonClickedCallBack: onButtonClickedCall,
                  index: 1,
                ),
                BoardButton(
                  buttonTitle: stateButton[2],
                  onButtonClickedCallBack: onButtonClickedCall,
                  index: 2,
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                BoardButton(
                  buttonTitle: stateButton[3],
                  onButtonClickedCallBack: onButtonClickedCall,
                  index: 3,
                ),
                BoardButton(
                  buttonTitle: stateButton[4],
                  onButtonClickedCallBack: onButtonClickedCall,
                  index: 4,
                ),
                BoardButton(
                  buttonTitle: stateButton[5],
                  onButtonClickedCallBack: onButtonClickedCall,
                  index: 5,
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                BoardButton(
                  buttonTitle: stateButton[6],
                  onButtonClickedCallBack: onButtonClickedCall,
                  index: 6,
                ),
                BoardButton(
                  buttonTitle: stateButton[7],
                  onButtonClickedCallBack: onButtonClickedCall,
                  index: 7,
                ),
                BoardButton(
                  buttonTitle: stateButton[8],
                  onButtonClickedCallBack: onButtonClickedCall,
                  index: 8,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  int counter = 0;

  void onButtonClickedCall(int index) {
    if (stateButton[index].isNotEmpty) return;
    if (counter.isEven) {
      stateButton[index] = 'X';
      counter++;
      if (checkWinner('X')) {
        player1Score += 10;
        initBorad();
      }
    } else {
      stateButton[index] = 'O';
      counter++;
      if (checkWinner('O')) {
        player2Score += 10;
        initBorad();
      }
    }
    if (counter == 9) {
      initBorad();
    }
    setState(() {});
  }

  initBorad() {
    stateButton = [
      '',
      '',
      '',
      '',
      '',
      '',
      '',
      '',
      '',
    ];
    counter = 0;
  }

  bool checkWinner(String playerSymbol) {
    for (int i = 0; i < 7; i += 3) {
      if (stateButton[i] == playerSymbol &&
          stateButton[i + 1] == playerSymbol &&
          stateButton[i + 2] == playerSymbol) {
        return true;
      }
    }
    for (int i = 0; i < 3; i++) {
      if (stateButton[i] == playerSymbol &&
          stateButton[i + 3] == playerSymbol &&
          stateButton[i + 6] == playerSymbol) {
        return true;
      }
    }
    if (stateButton[0] == playerSymbol &&
        stateButton[4] == playerSymbol &&
        stateButton[8] == playerSymbol) {
      return true;
    }
    if (stateButton[2] == playerSymbol &&
        stateButton[4] == playerSymbol &&
        stateButton[6] == playerSymbol) {
      return true;
    }
    return false;
  }
}

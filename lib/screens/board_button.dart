import 'package:flutter/material.dart';

typedef OnButtonClickedCallBack = void Function();

class BoardButton extends StatelessWidget {

String buttonTitle;
int index;
OnButtonClickedCallBack onButtonClickedCallBack;
BoardButton({required this.buttonTitle, required this.onButtonClickedCallBack, required this.index});
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: EdgeInsets.all(3),
        child: MaterialButton(onPressed: (){
          // Call Back Function.
        onButtonClickedCallBack();
        },
        color: Colors.green,
          child: Text(buttonTitle , style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20, color: Colors.white),),
        ),
      ),
    );
  }
}

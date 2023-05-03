import 'package:flutter/material.dart';
bool isTapped = false;
bool isTapped1 = false;
class SlidingButton extends StatefulWidget {
  const SlidingButton({Key? key,}) : super(key: key);

  @override
  State<SlidingButton> createState() => _SlidingButtonState();
}

class _SlidingButtonState extends State<SlidingButton> {
  @override
  Widget build(BuildContext context) {
    var top = 6.0;
    var left = 4.0;
    var right = 4.0;


    var size = MediaQuery.of(context).size;
    var height = size.height * .08;
    var width = size.width * .25;

    return Scaffold(
      body: Center(
        child: Container(

          height: size.height * .1,
          width: size.width * .55,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
            color: Colors.black45,
          ),
          child: Stack(
            children: [
              Positioned(
                top: top,
                left: left,
                child: GestureDetector(
                  onTap: (){
                    setState(() {
                      isTapped1 = !isTapped1;
                      isTapped = false;

                    });
                  },
                  child: AnimatedContainer(
                    height: height,
                    width: isTapped1? 130:width,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: isTapped1? Colors.white:Colors.black45,
                    ),
                    duration: (Duration(milliseconds: 500)),
                  ),
                ),
              ),
              Positioned(
                top: top,
                right: left,
                child: GestureDetector(
                  onTap: (){
                    setState(() {
                      isTapped = !isTapped;
                      isTapped1 = false;

                    });
                  },
                  child: AnimatedContainer(
                    height: height,
                    width: isTapped? 130:width,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: isTapped? Colors.white:Colors.black45,
                    ),
                    duration: (Duration(microseconds: 500)),
                  ),
                ),
              )
            ],
          )

        ),
      ),
    );
  }
}

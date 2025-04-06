import 'package:flutter/material.dart';
import 'package:real_state_app/src/features/main_menu/main_menu_page.dart';
import 'package:real_state_app/src/res/app_icons.dart';
import 'package:real_state_app/src/res/app_text_styles.dart';
import '../widgets/app_button.dart';



class WelcomePage extends StatefulWidget{
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  bool _isVisible = false;
  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      setState(() => _isVisible = true);
    });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    final screenWidth = size.width;
    final screenHeight = size.height;
    int duration = 500;
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 15),
              child: Text("Find The Place Of Your Dream", style: AppTextStyles.largeTextStyle,),
            ),
            const SizedBox(height: 20,),
            Expanded(
              child: Stack(
                children: [
                  // Snake Image Animation (Comes from Bottom and Shrinks)
                  AnimatedPositioned(
                    duration: Duration(milliseconds: 600),
                    curve: Curves.easeInOut,
                    bottom: _isVisible ? screenHeight*0.2 : -screenHeight, // Moves up
                    left: 0,
                    right: 20,
                    child: AnimatedContainer(
                      duration: Duration(milliseconds: duration),
                      curve: Curves.easeInOut,
                      height: screenHeight * 0.45, // Shrinks in size
                      child: Image.asset(AppIcons.icWelcomePageImg1,)
                    ),
                  ),

                  AnimatedPositioned(
                    duration: Duration(milliseconds: duration),
                    curve: Curves.easeInOut,
                    bottom: screenHeight * 0.02,
                    left: _isVisible ? screenWidth * 0.37 : -100, // Comes from left
                    child: AnimatedOpacity(
                      duration: Duration(milliseconds: duration),
                      opacity: _isVisible ? 1.0 : 0.0,
                      child: Image.asset(AppIcons.icWelcomePageImg2, height: screenHeight*0.4,)
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 15),
              child: SizedBox(
                height: 55,
                width: double.infinity,
                child: AppBtn(text: "Let's Get Started", onTap: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (ctx)=> MainMenuPage()));
                },),
              ),
            ),
          ],
        ),
      ),
    );
   /* return Scaffold(
      body: SafeArea(child:
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15.0),
        child: Column(
          children: [
            Text("Find The Place Of Your Dream", style: AppTextStyles.largeTextStyle,),
            const SizedBox(height: 20,),
            Stack(
              children: [
                // Snake Image Animation (Comes from Bottom and Shrinks)
                AnimatedPositioned(
                  duration: Duration(milliseconds: duration),
                  curve: Curves.easeInOut,
                  bottom: _isVisible ? 0 : -screenHeight, // Moves up
                  left: 0,
                  right: 10,
                  child: AnimatedContainer(
                    duration: Duration(milliseconds: duration),
                    curve: Curves.easeInOut,
                    height: _isVisible ? screenHeight : screenHeight * 1.2, // Shrinks in size
                    child: Image.asset(AppIcons.icWelcomePageImg1),
                  ),
                ),

                // Tap to trigger animation
                Align(
                  alignment: Alignment.bottomCenter,
                  child: GestureDetector(
                    child:  Padding(
                      padding: const EdgeInsets.only(bottom: 40),
                      child: Text(
                        "ACME X LLC",
                        style: TextStyle(fontSize: 11, color: textIconColor),
                      ),
                    ),
                  ),
                ),

                // "Why" enters from the top
                // "Why" enters from the top


                AnimatedPositioned(
                  duration:Duration(milliseconds: duration),
                  curve: Curves.easeInOut,
                  top: _isVisible ? screenHeight * 0.35 : -100, // Comes from top
                  left: screenWidth * 0.19,
                  child: AnimatedOpacity(
                    duration: Duration(milliseconds: duration),
                    opacity: _isVisible ? 1.0 : 0.0,
                    child: Text(
                      "Why",
                      style: textStyle,
                    ),
                  ),
                ),
                // "So" enters from the right
                AnimatedPositioned(
                  duration: const Duration(milliseconds: 400),
                  curve: Curves.easeInOut,
                  top: screenHeight * 0.35 , // Comes from top
                  right: _isVisible ? screenWidth * 0.21 : -100, // Comes from right
                  child: AnimatedOpacity(
                    duration: const Duration(milliseconds: 400),
                    opacity: _isVisible ? 1.0 : 0.0,
                    child: Text(
                        "So",
                        style: textStyle
                    ),
                  ),
                ),

                // "Serious?!" enters from the left
                AnimatedPositioned(
                  duration: Duration(milliseconds: duration),
                  curve: Curves.easeInOut,
                  top: screenHeight * 0.45,
                  left: _isVisible ? screenWidth * 0.17 : -100, // Comes from left
                  child: AnimatedOpacity(
                    duration: Duration(milliseconds: duration),
                    opacity: _isVisible ? 1.0 : 0.0,
                    child: Text(
                      "Serious?!",
                      style: textStyle,
                    ),
                  ),
                ),

                // "Smile" (~) enters from the left
                AnimatedPositioned(
                  duration: Duration(milliseconds: duration),
                  curve: Curves.easeInOut,
                  bottom: screenHeight * 0.21,
                  left: _isVisible ? screenWidth * 0.37 : -100, // Comes from left
                  child: AnimatedOpacity(
                    duration: Duration(milliseconds: duration),
                    opacity: _isVisible ? 1.0 : 0.0,
                    child: Text(
                      "~",
                      style: TextStyle(fontSize: 200,),
                    ),
                  ),
                ),
              ],
            ),
           *//* Stack(
              clipBehavior: Clip.none,
              alignment: Alignment.center,
              children: [
                Image.asset(AppIcons.icWelcomePageImg1, height: size.height*0.4,),
                // Foreground Image (Clipped from Bottom)
                Positioned(
                    bottom: -200,
                    left: 50,
                    child: Image.asset(AppIcons.icWelcomePageImg2,height: size.height*0.4,)
                ),
              ],
            ),*//*
            const Spacer(),
            SizedBox(
              height: 55,
              width: double.infinity,
              child: AppBtn(text: "Let's Get Started"),
            ),
          ],
        ),
      )),
    );*/
  }
}

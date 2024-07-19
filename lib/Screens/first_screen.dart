import 'package:coffee_shop/Decoration/decoration.dart';
import 'package:coffee_shop/Screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
     
        padding: const EdgeInsets.only(top: 150, bottom: 40),
        decoration: const BoxDecoration(
           color: Color(0xff212325),
            image: DecorationImage(
                image: AssetImage("images/coffee.png"),
                )),
        child: Column(
          children: [
            Text("Coffee Shop",
                style: GoogleFonts.pacifico(
                    textStyle: Theme.of(context)
                        .textTheme
                        .displayMedium!.copyWith(color: Colors.white))),
            const SizedBox(
              height: 50,
            ),
           Container(
            padding: const EdgeInsets.only(top: 330),
            child: Column(children: [
               Text("Feeling Low? Take a Sip of Coffee",
                style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                    color: Colors.white, fontWeight: FontWeight.bold)),

                 const   SizedBox(height: 50,),
            UiHelper.CustomContainer(
                "Get Started", const Color(0xffE57734),
                 160,50,(){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>const HomeScreen()));
                 })
            ],),
           )
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:task/core/constant/colors.dart';
import 'package:task/core/constant/text_style.dart';
// ignore: unused_import
import 'package:task/ui/screens/container.dart';

class BasicScreen extends StatelessWidget {
  const BasicScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("App Name", style: style18.copyWith(color: whiteColor)),
        centerTitle: true,

        backgroundColor: blueColor,
        actions: [
          IconButton(
            icon: Icon(Icons.favorite, color: whiteColor),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.settings, color: whiteColor),
            onPressed: () {},
          ),
        ],
      ),
      drawer: Drawer(backgroundColor: yellowColor),

      /* body: GridView.count(
        crossAxisSpacing: 13,
        mainAxisSpacing: 13,
        crossAxisCount: 2,
        childAspectRatio: 1.25,
        padding: EdgeInsetsGeometry.all(10),
        children: [
          MyContainer(
            textColor: blackColor,
            text: "Improved\n \tClinch",
            imageUrl:
                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRAc6SENxuWrmdHnNBkZOZZo_78m5w_Wc5eFrHT639DxtSh9dFEFFSV18o&s",
          ),
          MyContainer(
            text: "Palomar\n \tknot",
            textColor: yellowColor,
            imageUrl:
                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRAc6SENxuWrmdHnNBkZOZZo_78m5w_Wc5eFrHT639DxtSh9dFEFFSV18o&s",
          ),
          MyContainer(
            text: "Blood\n \tknot",
            textColor: blueColor,
            imageUrl:
                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTotQa0-3pVv1_1-0q2_Ca7MDTUKDGYLIx-qA9E_G151NQQ5Pdd5DGZbuc&s",
          ),
          MyContainer(text: "Berkley\n \t Braid Knot", textColor: orangeColor),
          MyContainer(text: "Uni\n \tknot", textColor: greenColor),
          MyContainer(text: "Albright\n \tknot", boxColor: yellowColor),
          MyContainer(text: "Surgeons\n \tknot"),
          MyContainer(text: "Trilene\n \tknot"),
          MyContainer(text: "Arbor\n \tknot"),
          MyContainer(text: "Double uni\n \tknot"),
        ],
      ),*/
      body: SingleChildScrollView(
        physics: AlwaysScrollableScrollPhysics(),
        child: Column(
          children: [
            SizedBox(
              height: 150,

              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                itemCount: 20,

                itemBuilder: (context, index) {
                  return MyContainer(
                    text: 'continue',
                    imageUrl:
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTotQa0-3pVv1_1-0q2_Ca7MDTUKDGYLIx-qA9E_G151NQQ5Pdd5DGZbuc&s",
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

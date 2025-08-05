import 'package:flutter/material.dart';
import 'package:task/core/constant/colors.dart';
import 'package:task/core/constant/text_style.dart';
import 'package:task/core/model/vacancy_model.dart';

// ignore: must_be_immutable
class VacancyScreen extends StatelessWidget {
  List<VacancyModel> vacancyList = [
    VacancyModel(
      title: "Web Development",
      subTitle: "Tech pioneer",
      salary: "10",
      location: "peshawar",
      state: "Fuckistan",
    ),
    VacancyModel(
      title: "Web Development",
      subTitle: "Tech pioneer",
      salary: "10",
      location: "peshawar",
      state: "Fuckistan",
    ),
    VacancyModel(
      title: "Web Development",
      subTitle: "Tech pioneer",
      salary: "10",
      location: "peshawar",
      state: "Fuckistan",
    ),
    VacancyModel(
      title: "Web Development",
      subTitle: "Tech pioneer",
      salary: "10",
      location: "peshawar",
      state: "Fuckistan",
    ),
    VacancyModel(
      title: "Web Development",
      subTitle: "Tech pioneer",
      salary: "10",
      location: "peshawar",
      state: "Fuckistan",
    ),
  ];

  VacancyScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: redColor,

      //****************BODY*********//
      body: vacancyList.isEmpty
          ? Center(child: Text("No vacancy", style: style20B))
          : ListView.builder(
              shrinkWrap: true,
              itemCount: vacancyList.length,
              itemBuilder: (BuildContext context, int index) {
                return CustomVacancy(vacancyModel: vacancyList[index]);
              },
            ),
    );
  }
}

class CustomVacancy extends StatelessWidget {
  final VacancyModel vacancyModel;
  const CustomVacancy({super.key, required this.vacancyModel});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 350,
      width: 200,
      decoration: BoxDecoration(
        color: whiteColor,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        children: [
          Container(
            height: 186,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(16),
                topRight: Radius.circular(16),
              ),
              image: DecorationImage(
                image: NetworkImage(
                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQUPIfiGgUML8G3ZqsNLHfaCnZK3I5g4tJabQ&s",
                ),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.start,
              // crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("${vacancyModel.title}", style: style18B),
                Text("${vacancyModel.subTitle}", style: style14),

                SizedBox(height: 20),
                Row(
                  children: [
                    Icon(Icons.money),
                    SizedBox(width: 10),
                    Text("${vacancyModel.salary}", style: style12),
                  ],
                ),
                Row(
                  children: [
                    Icon(Icons.location_city),
                    SizedBox(width: 10),
                    Text("${vacancyModel.location} ", style: style12),
                  ],
                ),
                Row(
                  children: [
                    Icon(Icons.local_activity),
                    SizedBox(width: 10),
                    Text("${vacancyModel.state}", style: style12),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:khoot/app/modules/question_module/question_controller.dart';
import 'package:khoot/app/theme/HexColor.dart';

class QuestionPage extends StatefulWidget {
  @override
  _QuestionPageState createState() => _QuestionPageState();
}

class _QuestionPageState extends State<QuestionPage> {
  final QuestionController questionController = Get.put(QuestionController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor("#38AE9C"),
      appBar: AppBar(
        backgroundColor: HexColor("#38AE9C"),
        elevation: 0,
        leading: GestureDetector(
          onTap: () {
            Get.back();
          },
          child: Container(
            padding: EdgeInsets.all(15),
            child: Image.asset(
              'assest/back_button.png',
              height: 24,
              width: 14,
            ),
          ),
        ),
        title: Text(
          "Question 2/5",
          style:
          GoogleFonts.montserrat(fontSize: 20, fontWeight: FontWeight.w400),
        ),
        centerTitle: true,
      ),
      body: Obx(() => Column(
        children: [
          SizedBox(height: 78),
          Center(
            child: Text(
              "Placeholder question:",
              style: GoogleFonts.montserrat(
                  fontWeight: FontWeight.w800,
                  fontSize: 22,
                  color: Colors.white),
            ),
          ),
          questionText("1 + 1 = ?"),
          SizedBox(height: 69),
          Container(
            width: MediaQuery.of(context).size.width,
            padding:
            EdgeInsets.only(top: 22, bottom: 75, left: 25, right: 25),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(50)),
            child: Column(
              children: [
                Container(
                    width: 60,
                    height: 60,
                    alignment: Alignment.center,
                    child: Text(
                      "${questionController.start}",
                      style: GoogleFonts.montserrat(
                          fontWeight: FontWeight.w700, fontSize: 18),
                    ),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                    )),
              ],
            ),
          )
        ],
      )),
    );
  }

  Widget questionText(String question) {
    return Center(
      child: Text(
        question,
        style: GoogleFonts.montserrat(
            fontWeight: FontWeight.w800, fontSize: 22, color: Colors.white),
      ),
    );
  }
}

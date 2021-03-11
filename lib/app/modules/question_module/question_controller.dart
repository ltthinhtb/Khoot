import 'dart:async';

import 'package:khoot/app/data/repository/question_repository.dart';
import 'package:get/get.dart';

class QuestionController extends GetxController {
  final QuestionRepository repository;

  QuestionController({this.repository});

  Timer _timer;
  RxInt start = 30.obs;

  @override
  void onInit() {
    // TODO: implement onInit
    startTimer();
    super.onInit();
  }

  @override
  void onClose() {
    // TODO: implement onClose
    _timer.cancel();
    super.onClose();
  }

  void startTimer() {
    const oneSec = const Duration(seconds: 1);
    start.value = 30;
    _timer = new Timer.periodic(
      oneSec,
      (Timer timer) {
        if (start.value == 0) {
          timer.cancel();
        } else {
          start.value--;
        }
      },
    );
  }
}

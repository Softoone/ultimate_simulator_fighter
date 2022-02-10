class Helper {
  Helper._();


  static get presentationTimeStamp => Future.delayed(Duration(milliseconds: 1500));
  static get introducingTimeStamp => Future.delayed(Duration(milliseconds: 750));
  static get roundTimeStamp => Future.delayed(Duration(milliseconds: 1700));
}

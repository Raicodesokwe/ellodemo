class LessonModel{
  final String lessonName;
  final String lessonTime;

  LessonModel({required this.lessonName, required this.lessonTime});
}
List<LessonModel> lessonList=[
  LessonModel(lessonName: 'Art and craft', lessonTime: '19 minutes'),
  LessonModel(lessonName: 'Home science', lessonTime: '25 minutes'),
  LessonModel(lessonName: 'Coding basics', lessonTime: '35 minutes'),
  ];
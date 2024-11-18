class DrawingPracticeModel{
  final String label;
  final String time;
  final bool isWatched;

  DrawingPracticeModel({required this.label, required this.time,required this.isWatched});
}
List<DrawingPracticeModel> drawingPracticeList=[
DrawingPracticeModel(label: 'Introduction', time: '23 minutes', isWatched: true),
DrawingPracticeModel(label: 'Simple sketch', time: '12 minutes', isWatched: false),
DrawingPracticeModel(label: 'Coloring', time: '30 minutes', isWatched: false),
];

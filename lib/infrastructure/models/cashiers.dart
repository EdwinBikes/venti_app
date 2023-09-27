class Cashiers {
  final String title;
  final String image;
  final int index;

  Cashiers({
    required this.title,
    required this.image,
    required this.index,
  });
}

List<Map<String, dynamic>> rawData = [
  {
    'title': 'cajero 1',
    'image': 'assets/images/cajero.png',
    'index': 1,
  },
  {
    'title': 'cajero 2',
    'image': 'assets/images/cajero.png',
    'index': 2,
  },
  {
    'title': 'cajero 3',
    'image': 'assets/images/cajero.png',
    'index': 3,
  },
  {
    'title': 'cajero 4',
    'image': 'assets/images/cajero.png',
    'index': 4,
  },
];

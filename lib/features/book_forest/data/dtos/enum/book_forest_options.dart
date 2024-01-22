enum BookForestOptions {
  recent('최신순'),
  popular('인기순'),
  like('좋아요'),
  mine('내 책숲');

  const BookForestOptions(this.name);
  final String name;

  factory BookForestOptions.name(String? name) {
    if (name == null) {
      return BookForestOptions.recent;
    }
    return BookForestOptions.values
        .firstWhere((element) => element.name == name);
  }
}

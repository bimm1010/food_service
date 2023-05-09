class Menu {
  final String title, image;
  final double price;

  Menu({
    required this.title,
    required this.image,
    required this.price,
  });
}

class CategoryMenu {
  final String category;
  final List<Menu> items;

  CategoryMenu({required this.category, required this.items});
}

class Slide {
  final String imageURL;
  final String title;
  final String description;
  Slide({
    required this.imageURL,
    required this.title,
    required this.description,
  });
}

final listSlide = [
  Slide(
      imageURL: 'assets/images/bg1_image.svg',
      title: 'Welcome',
      description:
          'It’s a pleasure to meet you. We are excited that you’re here so let’s get started!'),
  Slide(
      imageURL: 'assets/images/bg2_image.svg',
      title: 'All your favorite',
      description:
          'Order from the best local restaurants with easy, on-demand delivery.'),
  Slide(
      imageURL: 'assets/images/bg3_image.svg',
      title: 'Free delivery offers',
      description:
          'Free delivery for new customers via Apple Pay and others payment methods.'),
  Slide(
      imageURL: 'assets/images/bg4_image.svg',
      title: 'Choose your food',
      description:
          'Easily find your type of food craving and you’ll get delivery in wide range.'),
];

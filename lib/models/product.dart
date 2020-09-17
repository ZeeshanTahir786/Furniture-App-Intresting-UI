class Product {
  final int id, price;
  final String title, description, image;

  Product({this.id, this.price, this.title, this.description, this.image});
}

List<Product> products = [
  Product(
      id: 1,
      price: 56,
      title: 'Classic Leather Sofa',
      image: 'assets/images/Item_1.png',
      description:
          'Loren Ipsum dolor sit amet, conssectitur adipicsing elit, sed do eiosnodtempor inc'),
  Product(
      id: 2,
      price: 48,
      title: 'Poppy Plastic Tub Chair',
      image: 'assets/images/Item_2.png',
      description:
          'Loren Ipsum dolor sit amet, conssectitur adipicsing elit, sed do eiosnodtempor inc'),
  Product(
      id: 3,
      price: 38,
      title: 'Classic Leather Arm Chair',
      image: 'assets/images/Item_3.png',
      description:
          'Loren Ipsum dolor sit amet, conssectitur adipicsing elit, sed do eiosnodtempor inc')
];

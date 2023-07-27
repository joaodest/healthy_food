class ProductModel {
  final String img;
  final String name;
  final double price;

  ProductModel({
    required this.img,
    required this.name,
    required this.price,
  });

  static List<ProductModel> getProducts() {
    List<ProductModel> products = [];

    products.add(
      ProductModel(
        img: 'assets/plate1.jpeg',
        name: 'Poke',
        price: 22.90,
      ),
    );

    products.add(
      ProductModel(
        img: 'assets/plate2.jpeg',
        name: 'Salada de Salmao',
        price: 17.90,
      ),
    );

    products.add(ProductModel(
      img: 'assets/plate3.jpeg',
      name: 'Spaghetti com Camarao',
      price: 25.90,
    ));

    products.add(
      ProductModel(
        img: 'assets/plate4.jpeg',
        name: 'Sobremesa de frutas verm.',
        price: 21.90,
      ),
    );

    return products;
  }
}

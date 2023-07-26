class ProductModel {
  final String img;
  final String name;
  final double price;

  ProductModel({
    required this.img,
    required this.name,
    required this.price,
  });

  factory ProductModel.selectProd(int id){
    if(id == 1){
      return ProductModel(img: 'assets/plate1.jpeg', name: 'Poke', price: 22.90);
    } if (id == 2){
      return ProductModel(img: 'assets/plate2.jpeg', name: 'Salada de Salmao', price: 17.90);
    } if (id == 3){
      return ProductModel(img: 'assets/plate3.jpeg', name: 'Spaghetti com Camarao', price: 25.90);
    } else {
      return ProductModel(img: 'assets/plate4.jpeg', name: 'Sobremesa de frutas verm. git reset --mixed HEAD~1', price: 21.90);
    }
   
  }

}
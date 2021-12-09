class Product {
  final String name;
  final double price;
  final String imageUrl;

  const Product({required this.name,required this.price,required this.imageUrl});

  static const List<Product> products = [
    Product(name: 'Apple', price:2.99,imageUrl: 'https://images.unsplash.com/photo-1606604830262-2e0732b12acc'),
    Product(name: 'Orange', price:2.99,imageUrl: 'https://images.unsplash.com/photo-1611080626919-7cf5a9dbab5b'),
    Product(name: 'pear', price:2.99,imageUrl: 'https://images.unsplash.com/photo-1615484477778-ca3b77940c25'),
    Product(name: 'mango', price:2.99,imageUrl: 'https://images.unsplash.com/photo-1591424238566-00d60a5342b0')

  ];




}
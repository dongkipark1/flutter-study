class Product {
  String title;
  String author;
  String address;
  String urlToImage;
  String publishedAt;
  String price;
  int heartCount;
  int commentsCount;

  Product({
    required this.title,
    required this.author,
    required this.address,
    required this.urlToImage,
    required this.publishedAt,
    required this.price,
    required this.heartCount,
    required this.commentsCount,
  });
}

List<Product> productList = [
  Product(
      title: '니트 조끼',
      author: '썩은요플렛',
      urlToImage:
      'https://github.com/flutter-coder/ui_images/blob/master/carrot_product_7.jpg?raw=true',
      publishedAt: '2시간 전',
      heartCount: 8,
      price: '35000',
      address: '부전동',
      commentsCount: 3),
  Product(
      title: '먼나라 이웃나라 12',
      author: '빛갚으리오',
      urlToImage:
      'https://github.com/flutter-coder/ui_images/blob/master/carrot_product_6.jpg?raw=true',
      publishedAt: '3시간 전',
      heartCount: 3,
      address: '부전동',
      price: '18000',
      commentsCount: 1),
  Product(
    title: '캐나다구스 패딩조',
    author: '술취한고래',
    address: '전포동',
    urlToImage:
    'https://github.com/flutter-coder/ui_images/blob/master/carrot_product_5.jpg?raw=true',
    publishedAt: '1일 전',
    heartCount: 0,
    price: '15000',
    commentsCount: 12,
  ),
  Product(
    title: '유럽 여행',
    author: '와우',
    address: '가야동',
    urlToImage:
    'https://github.com/flutter-coder/ui_images/blob/master/carrot_product_4.jpg?raw=true',
    publishedAt: '3일 전',
    heartCount: 4,
    price: '15000',
    commentsCount: 11,
  ),
  Product(
    title: '가죽 파우치 ',
    author: '김씨',
    address: '범전동',
    urlToImage:
    'https://github.com/flutter-coder/ui_images/blob/master/carrot_product_3.jpg?raw=true',
    publishedAt: '1주일 전',
    heartCount: 7,
    price: '95000',
    commentsCount: 4,
  ),
  Product(
    title: '노트북',
    author: '갈매기',
    address: '부전동',
    urlToImage:
    'https://github.com/flutter-coder/ui_images/blob/master/carrot_product_2.jpg?raw=true',
    publishedAt: '5일 전',
    heartCount: 4,
    price: '115000',
    commentsCount: 0,
  ),
  Product(
    title: '미개봉 아이패드',
    author: '사람살려',
    address: '전포동',
    urlToImage:
    'https://github.com/flutter-coder/ui_images/blob/master/carrot_product_1.jpg?raw=true',
    publishedAt: '5일 전',
    heartCount: 8,
    price: '85000',
    commentsCount: 3,
  ),
];


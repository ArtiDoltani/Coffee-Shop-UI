
class Items{
  String text;
  String image;
  String price;
  Items({required this.image,required this.text,required this.price});

}
List<Items> items=[
Items(image: "images/Cold Coffee.png", text: "Cold Coffee", price: "\$30"),
Items(image: "images/Black Coffee.png", text: "Black Coffee", price: "\$35"),
Items(image: "images/Espresso.png", text: "Espresso", price: "\$40"),
Items(image: "images/Latte.png", text: "Latte", price: "\$25")
];


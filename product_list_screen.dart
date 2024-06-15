import 'package:flutter/material.dart';

class Product {
  final String name;
  final String image;
  final String price;
  int quantity;

  Product({required this.name, required this.image, required this.price, this.quantity = 1});

  void incrementQuantity() {
    quantity++;
  }
}

class ProductListScreen extends StatefulWidget {
  @override
  _ProductListScreenState createState() => _ProductListScreenState();
}

class _ProductListScreenState extends State<ProductListScreen> {
  final List<Map<String, String>> fruits = [
    {'name': 'Watermelon', 'image': 'assets/images/watermelon.png', 'price': '20'},
    {'name': 'Banana', 'image': 'assets/images/banana.png', 'price': '10'},
    {'name': 'Apple', 'image': 'assets/images/apple.png', 'price': '30'},
    {'name': 'Mango', 'image': 'assets/images/mango.png', 'price': '50'},
    {'name': 'Orange', 'image': 'assets/images/orange.png', 'price': '25'},
    {'name': 'Grapes', 'image': 'assets/images/grapes.png', 'price': '40'},
    {'name': 'Pineapple', 'image': 'assets/images/pineapple.png', 'price': '35'},
    {'name': 'Strawberry', 'image': 'assets/images/strawberry.png', 'price': '45'},
    {'name': 'Peach', 'image': 'assets/images/peach.png', 'price': '30'},
    {'name': 'Cherry', 'image': 'assets/images/cherry.png', 'price': '55'},
    {'name': 'Pear', 'image': 'assets/images/pear.png', 'price': '40'},
    {'name': 'Kiwi', 'image': 'assets/images/kiwi.png', 'price': '60'},
    {'name': 'Lemon', 'image': 'assets/images/lemon.png', 'price': '35'},
    {'name': 'Coconut', 'image': 'assets/images/coconut.png', 'price': '40'},
    {'name': 'Avocado', 'image': 'assets/images/avocado.png', 'price': '70'},
    {'name': 'Papaya', 'image': 'assets/images/papaya.png', 'price': '40'},
    {'name': 'Plum', 'image': 'assets/images/plum.png', 'price': '25'},
    {'name': 'Raspberry', 'image': 'assets/images/raspberry.png', 'price': '50'},
    {'name': 'Blackberry', 'image': 'assets/images/blackberry.png', 'price': '45'},
    {'name': 'Apricot', 'image': 'assets/images/apricot.png', 'price': '30'},
  ];

  final List<Map<String, String>> vegetables = [
    {'name': 'Carrot', 'image': 'assets/images/carrot.png', 'price': '40'},
    {'name': 'Tomato', 'image': 'assets/images/tomato.png', 'price': '20'},
    {'name': 'Potato', 'image': 'assets/images/potato.png', 'price': '15'},
    {'name': 'Onion', 'image': 'assets/images/onion.png', 'price': '30'},
    {'name': 'Cucumber', 'image': 'assets/images/cucumber.png', 'price': '25'},
    {'name': 'Broccoli', 'image': 'assets/images/broccoli.png', 'price': '35'},
    {'name': 'Spinach', 'image': 'assets/images/spinach.png', 'price': '20'},
    {'name': 'Bell Pepper', 'image': 'assets/images/bell_pepper.png', 'price': '40'},
    {'name': 'Lettuce', 'image': 'assets/images/lettuce.png', 'price': '30'},
    {'name': 'Cabbage', 'image': 'assets/images/cabbage.png', 'price': '20'},
    {'name': 'Green Beans', 'image': 'assets/images/green_beans.png', 'price': '25'},
    {'name': 'Zucchini', 'image': 'assets/images/zucchini.png', 'price': '30'},
    {'name': 'Eggplant', 'image': 'assets/images/eggplant.png', 'price': '35'},
    {'name': 'Corn', 'image': 'assets/images/corn.png', 'price': '30'},
    {'name': 'Mushroom', 'image': 'assets/images/mushroom.png', 'price': '45'},
    {'name': 'Asparagus', 'image': 'assets/images/asparagus.png', 'price': '50'},
  ];

  final List<Map<String, String>> others = [
    {'name': 'Milk', 'image': 'assets/images/milks.png', 'price': '25'},
    {'name': 'Bread', 'image': 'assets/images/breads.png', 'price': '30'},
    {'name': 'Eggs', 'image': 'assets/images/eggs.png', 'price': '45'},
    {'name': 'Cheese', 'image': 'assets/images/cheese.png', 'price': '50'},
    {'name': 'Yogurt', 'image': 'assets/images/yogurt.png', 'price': '35'},
    {'name': 'Butter', 'image': 'assets/images/butter.png', 'price': '40'},
    {'name': 'Olive Oil', 'image': 'assets/images/olive_oil.png', 'price': '60'},
    {'name': 'Pasta', 'image': 'assets/images/pasta.png', 'price': '20'},
    {'name': 'Rice', 'image': 'assets/images/rice.png', 'price': '25'},
    {'name': 'Coffee', 'image': 'assets/images/coffee.png', 'price': '40'},
    {'name': 'Tea', 'image': 'assets/images/tea.png', 'price': '30'},
    {'name': 'Sugar', 'image': 'assets/images/suga.png', 'price': '15'},
  ];

  final List<Product> cartItems = [];
  bool isTitleTapped = false; // State to keep track of text color change

  void addToCart(Map<String, String> product) {
    setState(() {
      cartItems.add(Product(
        name: product['name']!,
        image: product['image']!,
        price: product['price']!,
      ));
    });
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: GestureDetector(
            onTap: () {
              setState(() {
                isTitleTapped = !isTitleTapped; // Toggle the text color state
              });
            },
            child: Text(
              'Kisaan Grocery',
              style: TextStyle(
                color: isTitleTapped ? Colors.green : Colors.black, // Change color on tap
              ),
            ),
          ),
          actions: [
            IconButton(
              icon: Icon(Icons.shopping_cart),
              iconSize: 30, // Increase icon size to 30
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => CartScreen(cartItems: cartItems),
                  ),
                );
              },
            ),
          ],
          bottom: TabBar(
            tabs: [
              Tab(
                child: Text(
                  'Fruits',
                  style: TextStyle(fontSize: 18, color: Colors.black),
                ),
              ),
              Tab(
                child: Text(
                  'Vegetables',
                  style: TextStyle(fontSize: 18, color: Colors.black),
                ),
              ),
              Tab(
                child: Text(
                  'Others',
                  style: TextStyle(fontSize: 18, color: Colors.black),
                ),
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            buildGridView(fruits),
            buildGridView(vegetables),
            buildGridView(others),
          ],
        ),
      ),
    );
  }

  Widget buildGridView(List<Map<String, String>> products) {
    return GridView.builder(
      padding: const EdgeInsets.all(8.0),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 2 / 3,
        crossAxisSpacing: 8.0,
        mainAxisSpacing: 8.0,
      ),
      itemCount: products.length,
      itemBuilder: (context, index) {
        return Card(
          elevation: 4.0,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.asset(products[index]['image'] ?? 'assets/images/default.png', height: 80, fit: BoxFit.cover),
              SizedBox(height: 10),
              Text(products[index]['name'] ?? 'Unknown', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              SizedBox(height: 5),
              Text('${products[index]['price']}/kg', style: TextStyle(fontSize: 16, color: Colors.grey)),
              SizedBox(height: 10),
              ElevatedButton(
                onPressed: () {
                  addToCart(products[index]);
                },
                child: Text('Buy'),
              ),
            ],
          ),
        );
      },
    );
  }
}

class CartScreen extends StatefulWidget {
  final List<Product> cartItems;

  CartScreen({required this.cartItems});

  @override
  _CartScreenState createState() => _CartScreenState();
}
class _CartScreenState extends State<CartScreen> {
  double getTotalAmount() {
    double total = 0.0;
    for (var item in widget.cartItems) {
      total += double.parse(item.price) * item.quantity;
    }
    return total;
  }

  int getTotalQuantity() {
    int total = 0;
    for (var item in widget.cartItems) {
      total += item.quantity;
    }
    return total;
  }

  void incrementQuantity(int index) {
    setState(() {
      widget.cartItems[index].incrementQuantity();
    });
  }

  void clearCart() {
    setState(() {
      widget.cartItems.clear();
    });
  }

  void handlePayment(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Payment Confirmation'),
          content: Text('Total Amount: \$${getTotalAmount().toStringAsFixed(2)}'),
          actions: <Widget>[
            TextButton(
              child: Text('Cancel'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            ElevatedButton(
              child: Text('Confirm Payment'),
              onPressed: () {
                widget.cartItems.clear();
                Navigator.of(context).pop();
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text('Payment confirmed. Thank you!'),
                    duration: Duration(seconds: 2),
                  ),
                );
              },
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Cart'),
      ),
      body: widget.cartItems.isEmpty
          ? Center(child: Text('Cart is empty'))
          : Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: widget.cartItems.length,
              itemBuilder: (context, index) {
                final product = widget.cartItems[index];
                return ListTile(
                  leading: Image.asset(product.image, height: 50, width: 50, fit: BoxFit.cover),
                  title: Text(product.name),
                  subtitle: Text('${product.price}/kg'),
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text('Qty: ${product.quantity}'),
                      IconButton(
                        icon: Icon(Icons.add),
                        onPressed: () {
                          incrementQuantity(index);
                        },
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                Text('Total Quantity: ${getTotalQuantity()}', style: TextStyle(fontSize: 18)),
                Text('Total Amount: \$${getTotalAmount().toStringAsFixed(2)}', style: TextStyle(fontSize: 18)),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        handlePayment(context);
                      },
                      child: Text('Proceed to Payment'),
                    ),
                    ElevatedButton(
                      onPressed: clearCart,
                      child: Text('Clear Cart'),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Kisaan Grocery',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: ProductListScreen(),
    );
  }
}

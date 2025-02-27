import 'package:flutter/material.dart';

class ProductDetails extends StatefulWidget {
  final String imageUrl;
  final String rating;
  final String productName;
  final String productDescription;

  ProductDetails({
    required this.imageUrl,
    required this.rating,
    required this.productName,
    required this.productDescription,
  });

  @override
  _ProductDetailsState createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  bool isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Product Details'),
        actions: [
          IconButton(
            icon: Icon(Icons.favorite_border),
            onPressed: () {
              // ekhane kichu ekta dbo
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Center(
                  child: Image.network(
                    widget.imageUrl,
                    height: 300,
                    fit: BoxFit.cover,
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Icon(Icons.star, color: Colors.yellow),
                          SizedBox(width: 5),
                          Text(widget.rating),
                        ],
                      ),
                      IconButton(
                        icon: Icon(Icons.share),
                        onPressed: () {
                          // ekhane kono ekta kichu dbo
                        },
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      Container(
                        padding:
                            EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                        color: Colors.yellow,
                        child: Text(
                          '20% OFF',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      SizedBox(width: 10),
                      Text(
                        '\$25.00',
                        style: TextStyle(
                          fontSize: 16,
                          decoration: TextDecoration.lineThrough,
                        ),
                      ),
                      SizedBox(width: 10),
                      Text(
                        '\$20.00',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.red,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Text(
                    widget.productName,
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 10),
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: 'Status: ',
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.black,
                          ),
                        ),
                        TextSpan(
                          text: 'In Stock',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Description',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 5),
                  Text(
                    isExpanded
                        ? widget.productDescription
                        : widget.productDescription.length > 100
                            ? widget.productDescription.substring(0, 100) +
                                '...'
                            : widget.productDescription,
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                  SizedBox(height: 5),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        isExpanded = !isExpanded;
                      });
                    },
                    child: Text(
                      isExpanded ? 'Show Less' : 'Show More',
                      style: TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                IconButton(
                  icon: Icon(Icons.remove, color: Colors.grey),
                  onPressed: () {
                    // ekhane kono ekta kichu dbo
                  },
                ),
                Text(
                  '1',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                IconButton(
                  icon: Icon(Icons.add, color: Colors.black),
                  onPressed: () {
                    // ekhane kono ekta kichu dbo
                  },
                ),
              ],
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.black,
                padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
              ),
              onPressed: () {
                // ekhane kono ekta kichu dbo
              },
              child: Text(
                'Add to Cart',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

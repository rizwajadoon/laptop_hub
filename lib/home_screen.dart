import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  static const Color navy = Color(0xFF173B63);

  final List<Map<String, String>> laptops = const [
    {
      'name': 'MacBook Air',
      'specs': '8GB RAM | 256GB SSD',
      'price': 'Rs. 145,000',
      'image': 'assets/images/L1.jpg',
    },
    {
      'name': 'Dell Latitude',
      'specs': '16GB RAM | 512GB SSD',
      'price': 'Rs. 95,000',
      'image': 'assets/images/L2.jpg',
    },
    {
      'name': 'HP EliteBook',
      'specs': '8GB RAM | 256GB SSD',
      'price': 'Rs. 82,000',
      'image': 'assets/images/L4.jpg',
    },
    {
      'name': 'Lenovo ThinkPad',
      'specs': '16GB RAM | 512GB SSD',
      'price': 'Rs. 105,000',
      'image': 'assets/images/L5.jpg',
    },
    {
      'name': 'Acer Aspire',
      'specs': '8GB RAM | 512GB SSD',
      'price': 'Rs. 78,000',
      'image': 'assets/images/L6.jpg',
    },
    {
      'name': 'ASUS VivoBook',
      'specs': '16GB RAM | 512GB SSD',
      'price': 'Rs. 110,000',
      'image': 'assets/images/L1.jpg',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F6F8),
      appBar: AppBar(
        backgroundColor: navy,
        foregroundColor: Colors.white,
        elevation: 0,
        title: const Text(
          'Laptop Hub',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.notifications_none),
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text('No new notifications'),
                ),
              );
            },
          ),
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.all(14),
        children: [
          const Text(
            'Find Your Laptop',
            style: TextStyle(
              fontSize: 23,
              fontWeight: FontWeight.bold,
              color: navy,
            ),
          ),
          const SizedBox(height: 3),
          const Text(
            'Buy and sell laptops at the best prices.',
            style: TextStyle(
              fontSize: 13,
              color: Colors.black54,
            ),
          ),
          const SizedBox(height: 14),

          // Search Bar
          TextField(
            decoration: InputDecoration(
              hintText: 'Search laptops...',
              prefixIcon: const Icon(Icons.search, color: navy),
              filled: true,
              fillColor: Colors.white,
              contentPadding: const EdgeInsets.symmetric(vertical: 10),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide.none,
              ),
            ),
          ),

          const SizedBox(height: 18),

          const Text(
            'Available Laptops',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: navy,
            ),
          ),
          const SizedBox(height: 10),

          // Two compact cards in each row
          LayoutBuilder(
            builder: (context, constraints) {
              const spacing = 10.0;
              final cardWidth = (constraints.maxWidth - spacing) / 2;

              return Wrap(
                spacing: spacing,
                runSpacing: spacing,
                children: laptops.map((laptop) {
                  return SizedBox(
                    width: cardWidth,
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                          color: const Color(0xFFE6E9EF),
                        ),
                      ),
                      clipBehavior: Clip.antiAlias,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // Laptop Picture
                          SizedBox(
                            height: 105,
                            width: double.infinity,
                            child: Padding(
                              padding: const EdgeInsets.all(6),
                              child: Image.asset(
                                laptop['image']!,
                                fit: BoxFit.contain,
                                errorBuilder: (context, error, stackTrace) {
                                  return const Icon(
                                    Icons.laptop_mac,
                                    size: 55,
                                    color: navy,
                                  );
                                },
                              ),
                            ),
                          ),

                          // Laptop Details
                          Padding(
                            padding: const EdgeInsets.fromLTRB(9, 0, 9, 3),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  laptop['name']!,
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                  style: const TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600,
                                    color: Color(0xFF222B38),
                                  ),
                                ),
                                const SizedBox(height: 3),
                                Text(
                                  laptop['specs']!,
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                  style: const TextStyle(
                                    fontSize: 10,
                                    color: Colors.black54,
                                  ),
                                ),
                                const SizedBox(height: 5),
                                Text(
                                  laptop['price']!,
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                  style: const TextStyle(
                                    fontSize: 13,
                                    fontWeight: FontWeight.bold,
                                    color: navy,
                                  ),
                                ),
                                const SizedBox(height: 6),

                                // View Button
                                SizedBox(
                                  width: double.infinity,
                                  height: 30,
                                  child: ElevatedButton(
                                    onPressed: () {
                                      ScaffoldMessenger.of(context)
                                          .showSnackBar(
                                        SnackBar(
                                          content: Text(
                                            '${laptop['name']} selected',
                                          ),
                                        ),
                                      );
                                    },
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: navy,
                                      foregroundColor: Colors.white,
                                      elevation: 0,
                                      padding: EdgeInsets.zero,
                                      minimumSize: const Size(0, 30),
                                      tapTargetSize:
                                      MaterialTapTargetSize.shrinkWrap,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(6),
                                      ),
                                    ),
                                    child: const Text(
                                      'View',
                                      style: TextStyle(fontSize: 12),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                }).toList(),
              );
            },
          ),
        ],
      ),
    );
  }
}
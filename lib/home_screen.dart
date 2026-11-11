import 'package:flutter/material.dart';
import 'laptop_detail_screen.dart';
import 'add_product_screen.dart';
import 'profile_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  static const Color navy = Color(0xFF173B63);

  final List<Map<String, String>> laptops = const [
    {
      'name': 'MacBook Air',
      'specs': '8GB RAM | 256GB SSD',
      'price': 'Rs. 145,000',
      'image': 'assets/images/L1.jpg',
      'brand': 'Apple',
      'ram': '8GB',
      'storage': '256GB SSD',
      'processor': 'Apple M1',
      'condition': 'Used - Excellent',
      'description':
          'Lightweight laptop for programming, studies and everyday use.',
    },
    {
      'name': 'Dell Latitude',
      'specs': '16GB RAM | 512GB SSD',
      'price': 'Rs. 95,000',
      'image': 'assets/images/L2.jpg',
      'brand': 'Dell',
      'ram': '16GB',
      'storage': '512GB SSD',
      'processor': 'Intel Core i5',
      'condition': 'Used - Good',
      'description':
          'A reliable business laptop for office work, university and multitasking.',
    },
    {
      'name': 'HP EliteBook',
      'specs': '8GB RAM | 256GB SSD',
      'price': 'Rs. 82,000',
      'image': 'assets/images/L4.jpg',
      'brand': 'HP',
      'ram': '8GB',
      'storage': '256GB SSD',
      'processor': 'Intel Core i5',
      'condition': 'Used - Good',
      'description':
          'A practical laptop for students, assignments and everyday tasks.',
    },
    {
      'name': 'Lenovo ThinkPad',
      'specs': '16GB RAM | 512GB SSD',
      'price': 'Rs. 105,000',
      'image': 'assets/images/L5.jpg',
      'brand': 'Lenovo',
      'ram': '16GB',
      'storage': '512GB SSD',
      'processor': 'Intel Core i7',
      'condition': 'Used - Excellent',
      'description':
          'A productive laptop suitable for software development and office work.',
    },
    {
      'name': 'Acer Aspire',
      'specs': '8GB RAM | 512GB SSD',
      'price': 'Rs. 78,000',
      'image': 'assets/images/L6.jpg',
      'brand': 'Acer',
      'ram': '8GB',
      'storage': '512GB SSD',
      'processor': 'AMD Ryzen 5',
      'condition': 'Used - Good',
      'description':
          'Great value everyday laptop for home and student use.',
    },
    {
      'name': 'ASUS VivoBook',
      'specs': '16GB RAM | 512GB SSD',
      'price': 'Rs. 110,000',
      'image': 'assets/images/L1.jpg',
      'brand': 'ASUS',
      'ram': '16GB',
      'storage': '512GB SSD',
      'processor': 'Intel Core i7',
      'condition': 'Used - Excellent',
      'description':
          'Stylish ultra-portable laptop with vivid screen and fast performance.',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F6F8),
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(68),
        child: AppBar(
          centerTitle: false,
          elevation: 6,
          shadowColor: const Color(0x40000000),
          flexibleSpace: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [Color(0xFF0D1B2A), Color(0xFF173B63), Color(0xFF1B263B)],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
              borderRadius: BorderRadius.vertical(bottom: Radius.circular(22)),
            ),
          ),
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(bottom: Radius.circular(22)),
          ),
          title: Row(
            children: [
              Container(
                padding: const EdgeInsets.all(7),
                decoration: BoxDecoration(
                  color: Colors.white.withValues(alpha: 0.15),
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: Colors.white.withValues(alpha: 0.3),
                    width: 1.5,
                  ),
                ),
                child: const Icon(
                  Icons.laptop_mac_rounded,
                  color: Colors.cyanAccent,
                  size: 22,
                ),
              ),
              const SizedBox(width: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    children: [
                      const Text(
                        'Laptop',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w900,
                          color: Colors.white,
                          letterSpacing: 0.5,
                        ),
                      ),
                      const SizedBox(width: 4),
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
                        decoration: BoxDecoration(
                          color: Colors.cyanAccent,
                          borderRadius: BorderRadius.circular(6),
                        ),
                        child: const Text(
                          'HUB',
                          style: TextStyle(
                            fontSize: 10,
                            fontWeight: FontWeight.w900,
                            color: Color(0xFF0D1B2A),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const Text(
                    'Marketplace',
                    style: TextStyle(
                      fontSize: 11,
                      color: Colors.white70,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
            ],
          ),
          actions: [
            _buildAppBarActionButton(
              icon: Icons.add_circle_outline_rounded,
              tooltip: 'Add Product',
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const AddProductScreen()),
                );
              },
            ),
            const SizedBox(width: 6),
            _buildAppBarActionButton(
              icon: Icons.person_outline_rounded,
              tooltip: 'Profile',
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const ProfileScreen()),
                );
              },
            ),
            const SizedBox(width: 6),
            _buildAppBarActionButton(
              icon: Icons.notifications_none_rounded,
              tooltip: 'Notifications',
              hasBadge: true,
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('No new notifications')),
                );
              },
            ),
            const SizedBox(width: 12),
          ],
        ),
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
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(14),
              boxShadow: const [
                BoxShadow(
                  color: Color(0x0D000000),
                  blurRadius: 10,
                  offset: Offset(0, 3),
                ),
              ],
            ),
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Search laptops, brands, specs...',
                prefixIcon: const Icon(Icons.search_rounded, color: navy),
                suffixIcon: IconButton(
                  icon: const Icon(Icons.tune_rounded, color: navy, size: 20),
                  onPressed: () {},
                ),
                filled: true,
                fillColor: Colors.white,
                contentPadding: const EdgeInsets.symmetric(vertical: 12),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(14),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
          ),

          const SizedBox(height: 14),

          // Two compact cards in each row
          LayoutBuilder(
            builder: (context, constraints) {
              const spacing = 12.0;
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
                        borderRadius: BorderRadius.circular(14),
                        boxShadow: const [
                          BoxShadow(
                            color: Color(0x0E000000),
                            blurRadius: 10,
                            offset: Offset(0, 4),
                          ),
                        ],
                        border: Border.all(
                          color: const Color(0xFFE9EEF5),
                        ),
                      ),
                      clipBehavior: Clip.antiAlias,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // Laptop Picture
                          SizedBox(
                            height: 110,
                            width: double.infinity,
                            child: Padding(
                              padding: const EdgeInsets.all(8),
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
                            padding: const EdgeInsets.fromLTRB(10, 0, 10, 8),
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
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xFF172B4D),
                                  ),
                                ),
                                const SizedBox(height: 4),
                                Container(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 6,
                                    vertical: 2,
                                  ),
                                  decoration: BoxDecoration(
                                    color: const Color(0xFFEBF3FA),
                                    borderRadius: BorderRadius.circular(6),
                                  ),
                                  child: Text(
                                    laptop['specs']!,
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                    style: const TextStyle(
                                      fontSize: 10,
                                      fontWeight: FontWeight.w600,
                                      color: Color(0xFF173B63),
                                    ),
                                  ),
                                ),
                                const SizedBox(height: 6),
                                Text(
                                  laptop['price']!,
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                  style: const TextStyle(
                                    fontSize: 13,
                                    fontWeight: FontWeight.w900,
                                    color: Color(0xFF10B981),
                                  ),
                                ),
                                const SizedBox(height: 8),

                                // View Button
                                SizedBox(
                                  width: double.infinity,
                                  height: 32,
                                  child: Container(
                                    decoration: BoxDecoration(
                                      gradient: const LinearGradient(
                                        colors: [
                                          Color(0xFF173B63),
                                          Color(0xFF24476A),
                                        ],
                                      ),
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    child: ElevatedButton(
                                      onPressed: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) =>
                                                LaptopDetailsScreen(
                                              laptop: laptop,
                                            ),
                                          ),
                                        );
                                      },
                                      style: ElevatedButton.styleFrom(
                                        backgroundColor: Colors.transparent,
                                        shadowColor: Colors.transparent,
                                        foregroundColor: Colors.white,
                                        padding: EdgeInsets.zero,
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(8),
                                        ),
                                      ),
                                      child: const Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            'View Details',
                                            style: TextStyle(
                                              fontSize: 11,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          SizedBox(width: 4),
                                          Icon(
                                            Icons.arrow_forward_rounded,
                                            size: 13,
                                          ),
                                        ],
                                      ),
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

  static Widget _buildAppBarActionButton({
    required IconData icon,
    required String tooltip,
    required VoidCallback onPressed,
    bool hasBadge = false,
  }) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      decoration: BoxDecoration(
        color: Colors.white.withValues(alpha: 0.12),
        shape: BoxShape.circle,
        border: Border.all(
          color: Colors.white.withValues(alpha: 0.2),
        ),
      ),
      child: Stack(
        alignment: Alignment.center,
        children: [
          IconButton(
            icon: Icon(icon, color: Colors.white, size: 20),
            tooltip: tooltip,
            onPressed: onPressed,
            constraints: const BoxConstraints(minWidth: 38, minHeight: 38),
            padding: EdgeInsets.zero,
          ),
          if (hasBadge)
            Positioned(
              top: 7,
              right: 7,
              child: Container(
                width: 8,
                height: 8,
                decoration: const BoxDecoration(
                  color: Colors.cyanAccent,
                  shape: BoxShape.circle,
                ),
              ),
            ),
        ],
      ),
    );
  }
}
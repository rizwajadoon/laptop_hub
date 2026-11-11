import 'package:flutter/material.dart';
import 'laptop_detail_screen.dart';

class CategoryLaptopsScreen extends StatelessWidget {
  final String categoryTitle;
  final String categoryIcon;

  const CategoryLaptopsScreen({
    super.key,
    required this.categoryTitle,
    required this.categoryIcon,
  });

  static const Color navy = Color(0xFF173B63);

  // Category specific laptops database
  static const Map<String, List<Map<String, String>>> categoryDatabase = {
    'Gaming Laptops': [
      {
        'name': 'ASUS ROG Zephyrus G14',
        'specs': '16GB DDR5 | 1TB SSD | RTX 4060',
        'price': 'Rs. 240,000',
        'image': 'assets/images/L1.jpg',
        'brand': 'ASUS',
        'ram': '16GB DDR5',
        'storage': '1TB SSD',
        'processor': 'AMD Ryzen 9 7940HS',
        'condition': 'Used - Like New',
        'description':
            'Ultra-portable gaming beast powered by Ryzen 9 and RTX 4060 graphics with 165Hz ROG Nebula Display.',
      },
      {
        'name': 'Lenovo Legion 5 Pro',
        'specs': '32GB RAM | 1TB SSD | RTX 4070',
        'price': 'Rs. 285,000',
        'image': 'assets/images/L5.jpg',
        'brand': 'Lenovo',
        'ram': '32GB DDR5',
        'storage': '1TB SSD',
        'processor': 'Intel Core i7 13700HX',
        'condition': 'Used - Excellent',
        'description':
            'High-performance gaming laptop with QHD 240Hz screen, RGB keyboard and Coldfront cooling technology.',
      },
      {
        'name': 'MSI Stealth 15',
        'specs': '16GB RAM | 512GB SSD | RTX 3060',
        'price': 'Rs. 195,000',
        'image': 'assets/images/L2.jpg',
        'brand': 'MSI',
        'ram': '16GB DDR4',
        'storage': '512GB SSD',
        'processor': 'Intel Core i7 12800H',
        'condition': 'Used - Good',
        'description':
            'Sleek thin-and-light gaming notebook built for competitive eSports and content creation.',
      },
      {
        'name': 'Dell Alienware m15 R7',
        'specs': '32GB RAM | 1TB SSD | RTX 3070 Ti',
        'price': 'Rs. 310,000',
        'image': 'assets/images/L4.jpg',
        'brand': 'Dell',
        'ram': '32GB DDR5',
        'storage': '1TB SSD',
        'processor': 'AMD Ryzen 7 6800H',
        'condition': 'Used - Excellent',
        'description':
            'Iconic Alienware gaming laptop featuring advanced Cryo-tech cooling and QHD 240Hz display.',
      },
    ],
    'MacBooks': [
      {
        'name': 'MacBook Pro 16" M3 Max',
        'specs': '36GB RAM | 1TB SSD | M3 Max',
        'price': 'Rs. 580,000',
        'image': 'assets/images/L1.jpg',
        'brand': 'Apple',
        'ram': '36GB Unified',
        'storage': '1TB SSD',
        'processor': 'Apple M3 Max 14-core',
        'condition': 'Used - Like New',
        'description':
            'Ultimate workstation laptop for video editing, 3D rendering and software development.',
      },
      {
        'name': 'MacBook Air M2',
        'specs': '8GB RAM | 256GB SSD',
        'price': 'Rs. 185,000',
        'image': 'assets/images/L2.jpg',
        'brand': 'Apple',
        'ram': '8GB Unified',
        'storage': '256GB SSD',
        'processor': 'Apple M2 8-core',
        'condition': 'Used - Excellent',
        'description':
            'Redesigned thin and light fanless laptop with Liquid Retina display and all-day battery life.',
      },
      {
        'name': 'MacBook Pro 14" M1 Pro',
        'specs': '16GB RAM | 512GB SSD',
        'price': 'Rs. 290,000',
        'image': 'assets/images/L4.jpg',
        'brand': 'Apple',
        'ram': '16GB Unified',
        'storage': '512GB SSD',
        'processor': 'Apple M1 Pro',
        'condition': 'Used - Good',
        'description':
            'Pro performance laptop with Promotion 120Hz Liquid Retina XDR display and MagSafe charging.',
      },
    ],
    'Business': [
      {
        'name': 'Dell Latitude 7420',
        'specs': '16GB RAM | 512GB SSD',
        'price': 'Rs. 95,000',
        'image': 'assets/images/L2.jpg',
        'brand': 'Dell',
        'ram': '16GB DDR4',
        'storage': '512GB SSD',
        'processor': 'Intel Core i5 11th Gen',
        'condition': 'Used - Good',
        'description':
            'Enterprise business laptop with long battery life, Thunderbolt ports and top security.',
      },
      {
        'name': 'Lenovo ThinkPad X1 Carbon',
        'specs': '16GB RAM | 512GB SSD',
        'price': 'Rs. 135,000',
        'image': 'assets/images/L5.jpg',
        'brand': 'Lenovo',
        'ram': '16GB LPDDR5',
        'storage': '512GB SSD',
        'processor': 'Intel Core i7 12th Gen',
        'condition': 'Used - Excellent',
        'description':
            'Ultra-light carbon fiber business laptop legendary for typing comfort and durability.',
      },
      {
        'name': 'HP EliteBook 840 G8',
        'specs': '16GB RAM | 256GB SSD',
        'price': 'Rs. 88,000',
        'image': 'assets/images/L4.jpg',
        'brand': 'HP',
        'ram': '16GB DDR4',
        'storage': '256GB SSD',
        'processor': 'Intel Core i5 11th Gen',
        'condition': 'Used - Good',
        'description':
            'Aluminum chassis business ultrabook featuring HP Sure View privacy screen and audio by Bang & Olufsen.',
      },
    ],
    'Refurbished': [
      {
        'name': 'HP ProBook 450 G7',
        'specs': '8GB RAM | 256GB SSD',
        'price': 'Rs. 68,000',
        'image': 'assets/images/L6.jpg',
        'brand': 'HP',
        'ram': '8GB DDR4',
        'storage': '256GB SSD',
        'processor': 'Intel Core i5 10th Gen',
        'condition': 'Refurbished - Certified',
        'description':
            'Factory certified refurbished laptop tested with 100% functionality and warranty.',
      },
      {
        'name': 'Dell ThinkPad L14',
        'specs': '16GB RAM | 256GB SSD',
        'price': 'Rs. 75,000',
        'image': 'assets/images/L5.jpg',
        'brand': 'Lenovo',
        'ram': '16GB DDR4',
        'storage': '256GB SSD',
        'processor': 'AMD Ryzen 5 PRO',
        'condition': 'Refurbished - Certified',
        'description':
            'Refurbished workhorse laptop ready for university assignments and office multitasking.',
      },
    ],
  };

  @override
  Widget build(BuildContext context) {
    // Get laptops for selected category or fallback to all
    final laptops = categoryDatabase[categoryTitle] ??
        [
          {
            'name': 'ASUS ROG Zephyrus G14',
            'specs': '16GB DDR5 | 1TB SSD | RTX 4060',
            'price': 'Rs. 240,000',
            'image': 'assets/images/L1.jpg',
            'brand': 'ASUS',
            'ram': '16GB DDR5',
            'storage': '1TB SSD',
            'processor': 'AMD Ryzen 9 7940HS',
            'condition': 'Used - Like New',
            'description':
                'Ultra-portable gaming beast powered by Ryzen 9 and RTX 4060 graphics.',
          },
          {
            'name': 'Lenovo Legion 5 Pro',
            'specs': '32GB RAM | 1TB SSD | RTX 4070',
            'price': 'Rs. 285,000',
            'image': 'assets/images/L5.jpg',
            'brand': 'Lenovo',
            'ram': '32GB DDR5',
            'storage': '1TB SSD',
            'processor': 'Intel Core i7 13700HX',
            'condition': 'Used - Excellent',
            'description':
                'High-performance gaming laptop with QHD 240Hz screen.',
          },
        ];

    return Scaffold(
      backgroundColor: const Color(0xFFF5F6F8),
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(60),
        child: AppBar(
          centerTitle: true,
          elevation: 6,
          shadowColor: const Color(0x40000000),
          flexibleSpace: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [Color(0xFF0D1B2A), Color(0xFF173B63), Color(0xFF1B263B)],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
              borderRadius: BorderRadius.vertical(bottom: Radius.circular(20)),
            ),
          ),
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(bottom: Radius.circular(20)),
          ),
          title: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                categoryIcon,
                style: const TextStyle(fontSize: 18),
              ),
              const SizedBox(width: 8),
              Text(
                categoryTitle,
                style: const TextStyle(
                  fontWeight: FontWeight.w900,
                  color: Colors.white,
                  letterSpacing: 0.5,
                  fontSize: 18,
                ),
              ),
            ],
          ),
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          // Category Banner Header
          Container(
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              gradient: const LinearGradient(
                colors: [Color(0xFF173B63), Color(0xFF24476A)],
              ),
              borderRadius: BorderRadius.circular(16),
              boxShadow: const [
                BoxShadow(
                  color: Color(0x29173B63),
                  blurRadius: 10,
                  offset: Offset(0, 4),
                ),
              ],
            ),
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '$categoryIcon Exclusive Collection',
                        style: const TextStyle(
                          color: Colors.cyanAccent,
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 4),
                      Text(
                        '$categoryTitle (${laptops.length} Available)',
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                      const SizedBox(height: 4),
                      const Text(
                        'Inspected, tested with warranty & best prices.',
                        style: TextStyle(
                          color: Colors.white70,
                          fontSize: 11,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Colors.white.withValues(alpha: 0.15),
                    shape: BoxShape.circle,
                  ),
                  child: const Icon(
                    Icons.laptop_mac_rounded,
                    color: Colors.white,
                    size: 32,
                  ),
                ),
              ],
            ),
          ),

          const SizedBox(height: 18),

          // Laptops Grid List
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
}

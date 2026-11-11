import 'package:flutter/material.dart';
import 'order_confirmation_screen.dart';

class LaptopDetailsScreen extends StatelessWidget {
  final Map<String, String>? laptop;

  const LaptopDetailsScreen({super.key, this.laptop});

  static const Color navy = Color(0xFF173B63);

  @override
  Widget build(BuildContext context) {
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
          title: Text(
            laptop != null ? laptop!['name']! : 'Laptop Details',
            style: const TextStyle(
              fontWeight: FontWeight.w900,
              color: Colors.white,
              letterSpacing: 0.5,
            ),
          ),
        ),
      ),

      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Explore Laptop Specifications',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: navy,
              ),
            ),

            const SizedBox(height: 5),

            const Text(
              'View details of our featured laptops.',
              style: TextStyle(
                fontSize: 14,
                color: Colors.black54,
              ),
            ),

            const SizedBox(height: 16),

            if (laptop != null)
              LaptopDetailCard(
                name: laptop!['name'] ?? 'Laptop',
                image: laptop!['image'] ?? 'assets/images/L1.jpg',
                price: laptop!['price'] ?? 'Rs. 100,000',
                brand: laptop!['brand'] ?? 'Standard Brand',
                ram: laptop!['ram'] ?? '8GB',
                storage: laptop!['storage'] ?? '256GB SSD',
                processor: laptop!['processor'] ?? 'Core i5 / M1',
                condition: laptop!['condition'] ?? 'Used - Good',
                description: laptop!['description'] ??
                    'High quality laptop for everyday use.',
              )
            else ...[
              const LaptopDetailCard(
                name: 'MacBook Air',
                image: 'assets/images/L1.jpg',
                price: 'Rs. 145,000',
                brand: 'Apple',
                ram: '8GB',
                storage: '256GB SSD',
                processor: 'Apple M1',
                condition: 'Used - Excellent',
                description:
                    'Lightweight laptop for programming, studies and everyday use.',
              ),
              const LaptopDetailCard(
                name: 'Dell Latitude',
                image: 'assets/images/L2.jpg',
                price: 'Rs. 95,000',
                brand: 'Dell',
                ram: '16GB',
                storage: '512GB SSD',
                processor: 'Intel Core i5',
                condition: 'Used - Good',
                description:
                    'A reliable business laptop for office work, university and multitasking.',
              ),
              const LaptopDetailCard(
                name: 'HP EliteBook',
                image: 'assets/images/L4.jpg',
                price: 'Rs. 82,000',
                brand: 'HP',
                ram: '8GB',
                storage: '256GB SSD',
                processor: 'Intel Core i5',
                condition: 'Used - Good',
                description:
                    'A practical laptop for students, assignments and everyday tasks.',
              ),
              const LaptopDetailCard(
                name: 'Lenovo ThinkPad',
                image: 'assets/images/L5.jpg',
                price: 'Rs. 105,000',
                brand: 'Lenovo',
                ram: '16GB',
                storage: '512GB SSD',
                processor: 'Intel Core i7',
                condition: 'Used - Excellent',
                description:
                    'A productive laptop suitable for software development and office work.',
              ),
            ],
          ],
        ),
      ),
    );
  }
}

class LaptopDetailCard extends StatelessWidget {
  final String name;
  final String image;
  final String price;
  final String brand;
  final String ram;
  final String storage;
  final String processor;
  final String condition;
  final String description;

  const LaptopDetailCard({
    super.key,
    required this.name,
    required this.image,
    required this.price,
    required this.brand,
    required this.ram,
    required this.storage,
    required this.processor,
    required this.condition,
    required this.description,
  });

  static const Color navy = Color(0xFF173B63);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      elevation: 4,
      margin: const EdgeInsets.only(bottom: 20),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(18),
      ),
      clipBehavior: Clip.antiAlias,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Laptop Image Display Showcase
            Container(
              width: double.infinity,
              height: 185,
              decoration: BoxDecoration(
                gradient: const LinearGradient(
                  colors: [Color(0xFFF0F4F8), Color(0xFFE2E8F0)],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
                borderRadius: BorderRadius.circular(14),
                border: Border.all(
                  color: const Color(0xFFCBD5E1),
                  width: 1,
                ),
              ),
              child: Stack(
                children: [
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.all(12),
                      child: Image.asset(
                        image,
                        fit: BoxFit.contain,
                        errorBuilder: (context, error, stackTrace) {
                          return const Icon(
                            Icons.laptop_mac_rounded,
                            size: 90,
                            color: navy,
                          );
                        },
                      ),
                    ),
                  ),
                  Positioned(
                    top: 10,
                    right: 10,
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 10,
                        vertical: 4,
                      ),
                      decoration: BoxDecoration(
                        color: navy,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Text(
                        condition,
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 10,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 16),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Text(
                    name,
                    style: const TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w900,
                      color: navy,
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 12,
                    vertical: 6,
                  ),
                  decoration: BoxDecoration(
                    color: const Color(0xFFECFDF5),
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(
                      color: const Color(0xFFA7F3D0),
                    ),
                  ),
                  child: Text(
                    price,
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w900,
                      color: Color(0xFF059669),
                    ),
                  ),
                ),
              ],
            ),

            const Divider(height: 28, thickness: 1),

            const Row(
              children: [
                Icon(Icons.tune_rounded, size: 18, color: navy),
                SizedBox(width: 6),
                Text(
                  'Specifications',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: navy,
                  ),
                ),
              ],
            ),

            const SizedBox(height: 10),

            _specificationRow('Brand', brand, Icons.business_rounded),
            _specificationRow('RAM', ram, Icons.memory_rounded),
            _specificationRow('Storage', storage, Icons.storage_rounded),
            _specificationRow('Processor', processor, Icons.speed_rounded),
            _specificationRow('Condition', condition, Icons.verified_rounded),

            const SizedBox(height: 14),

            const Row(
              children: [
                Icon(Icons.description_outlined, size: 18, color: navy),
                SizedBox(width: 6),
                Text(
                  'Description',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: navy,
                  ),
                ),
              ],
            ),

            const SizedBox(height: 6),

            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: const Color(0xFFF8FAFC),
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: const Color(0xFFE2E8F0)),
              ),
              child: Text(
                description,
                style: const TextStyle(
                  fontSize: 13,
                  height: 1.5,
                  color: Color(0xFF334155),
                ),
              ),
            ),

            const SizedBox(height: 18),

            // Place Order Gradient Button
            SizedBox(
              width: double.infinity,
              height: 48,
              child: Container(
                decoration: BoxDecoration(
                  gradient: const LinearGradient(
                    colors: [Color(0xFF173B63), Color(0xFF24476A)],
                  ),
                  borderRadius: BorderRadius.circular(12),
                  boxShadow: const [
                    BoxShadow(
                      color: Color(0x29173B63),
                      blurRadius: 10,
                      offset: Offset(0, 4),
                    ),
                  ],
                ),
                child: ElevatedButton.icon(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => OrderConfirmationScreen(
                          name: name,
                          image: image,
                          price: price,
                          brand: brand,
                          ram: ram,
                          storage: storage,
                          condition: condition,
                        ),
                      ),
                    );
                  },
                  icon: const Icon(
                    Icons.shopping_bag_outlined,
                    size: 20,
                  ),
                  label: const Text(
                    'Place Order Now',
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.transparent,
                    shadowColor: Colors.transparent,
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  static Widget _specificationRow(
    String title,
    String value,
    IconData icon,
  ) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
        decoration: BoxDecoration(
          color: const Color(0xFFF8FAFC),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Row(
          children: [
            Icon(icon, size: 16, color: navy),
            const SizedBox(width: 8),
            Text(
              title,
              style: const TextStyle(
                fontSize: 13,
                color: Colors.black54,
              ),
            ),
            const Spacer(),
            Text(
              value,
              textAlign: TextAlign.end,
              style: const TextStyle(
                fontSize: 13,
                fontWeight: FontWeight.bold,
                color: navy,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
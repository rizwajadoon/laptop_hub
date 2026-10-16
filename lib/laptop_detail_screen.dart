import 'package:flutter/material.dart';

class LaptopDetailsScreen extends StatelessWidget {
  const LaptopDetailsScreen({super.key});

  static const Color navy = Color(0xFF173B63);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F6F8),

      appBar: AppBar(
        backgroundColor: navy,
        foregroundColor: Colors.white,
        elevation: 0,
        title: const Text(
          'Laptop Details',
          style: TextStyle(fontWeight: FontWeight.bold),
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
              'Lightweight laptop for programming, '
                  'studies and everyday use.',
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
              'A reliable business laptop for office '
                  'work, university and multitasking.',
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
              'A practical laptop for students, '
                  'assignments and everyday tasks.',
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
              'A productive laptop suitable for '
                  'software development and office work.',
            ),
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
      elevation: 2,
      margin: const EdgeInsets.only(bottom: 18),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(14),
      ),
      clipBehavior: Clip.antiAlias,
      child: Padding(
        padding: const EdgeInsets.all(14),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: double.infinity,
              height: 170,
              decoration: BoxDecoration(
                color: const Color(0xFFF5F6F8),
                borderRadius: BorderRadius.circular(10),
              ),
              padding: const EdgeInsets.all(10),
              child: Image.asset(
                image,
                fit: BoxFit.contain,
                errorBuilder: (context, error, stackTrace) {
                  return const Icon(
                    Icons.laptop_mac,
                    size: 85,
                    color: navy,
                  );
                },
              ),
            ),

            const SizedBox(height: 12),

            Text(
              name,
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: navy,
              ),
            ),

            const SizedBox(height: 5),

            Text(
              price,
              style: const TextStyle(
                fontSize: 19,
                fontWeight: FontWeight.bold,
                color: Color(0xFF198754),
              ),
            ),

            const Divider(height: 22),

            const Text(
              'Specifications',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: navy,
              ),
            ),

            const SizedBox(height: 6),

            _specificationRow('Brand', brand),
            _specificationRow('RAM', ram),
            _specificationRow('Storage', storage),
            _specificationRow('Processor', processor),
            _specificationRow('Condition', condition),

            const SizedBox(height: 10),

            const Text(
              'Description',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: navy,
              ),
            ),

            const SizedBox(height: 5),

            Text(
              description,
              style: const TextStyle(
                fontSize: 13,
                height: 1.5,
                color: Colors.black54,
              ),
            ),

            const SizedBox(height: 12),

            SizedBox(
              width: double.infinity,
              height: 42,
              child: ElevatedButton.icon(
                onPressed: () {},
                icon: const Icon(
                  Icons.shopping_cart_outlined,
                  size: 19,
                ),
                label: const Text('Place Order'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: navy,
                  foregroundColor: Colors.white,
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(9),
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
      ) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Text(
              title,
              style: const TextStyle(
                fontSize: 13,
                color: Colors.black54,
              ),
            ),
          ),
          const SizedBox(width: 12),
          Flexible(
            child: Text(
              value,
              textAlign: TextAlign.end,
              style: const TextStyle(
                fontSize: 13,
                fontWeight: FontWeight.w600,
                color: navy,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
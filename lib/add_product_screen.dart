
import 'package:flutter/material.dart';

class AddProductScreen extends StatelessWidget {
  const AddProductScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add Product'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Sell Your Laptop',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Color(0xFF173B63),
              ),
            ),
            const SizedBox(height: 8),
            const Text(
              'Enter your laptop details below.',
              style: TextStyle(color: Colors.grey),
            ),
            const SizedBox(height: 24),

            const Center(
              child: Icon(
                Icons.add_photo_alternate_outlined,
                size: 75,
                color: Color(0xFF173B63),
              ),
            ),
            const SizedBox(height: 24),

            const ProductTextField(
              label: 'Laptop Name',
              hint: 'e.g. MacBook Air',
              icon: Icons.laptop,
            ),
            const SizedBox(height: 16),

            const ProductTextField(
              label: 'Brand',
              hint: 'e.g. Apple, Dell, HP',
              icon: Icons.business,
            ),
            const SizedBox(height: 16),

            const ProductTextField(
              label: 'Price (Rs.)',
              hint: 'Enter price',
              icon: Icons.currency_exchange,
              keyboardType: TextInputType.number,
            ),
            const SizedBox(height: 16),

            const ProductTextField(
              label: 'RAM',
              hint: 'e.g. 8GB',
              icon: Icons.memory,
            ),
            const SizedBox(height: 16),

            const ProductTextField(
              label: 'Storage',
              hint: 'e.g. 256GB SSD',
              icon: Icons.storage,
            ),
            const SizedBox(height: 16),

            const ProductTextField(
              label: 'Condition',
              hint: 'New / Used - Good / Excellent',
              icon: Icons.verified_outlined,
            ),
            const SizedBox(height: 24),

            SizedBox(
              width: double.infinity,
              height: 50,
              child: ElevatedButton.icon(
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text('Product form submitted!'),
                    ),
                  );
                },
                icon: const Icon(Icons.add),
                label: const Text(
                  'Add Product',
                  style: TextStyle(fontSize: 16),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF173B63),
                  foregroundColor: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ProductTextField extends StatelessWidget {
  final String label;
  final String hint;
  final IconData icon;
  final TextInputType keyboardType;

  const ProductTextField({
    super.key,
    required this.label,
    required this.hint,
    required this.icon,
    this.keyboardType = TextInputType.text,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: const TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 14,
          ),
        ),
        const SizedBox(height: 8),
        TextField(
          keyboardType: keyboardType,
          decoration: InputDecoration(
            hintText: hint,
            prefixIcon: Icon(icon),
            filled: true,
            fillColor: Colors.white,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
            ),
          ),
        ),
      ],
    );
  }
}

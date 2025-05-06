import 'package:flutter/material.dart';
import 'package:wellorgs_assignment/section3/product_list_assignment/translation.dart';

class ProductListPage extends StatelessWidget {
  final Function(String) onLanguageChange;
  final Locale currentLocale;

  const ProductListPage({
    required this.onLanguageChange,
    required this.currentLocale,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final lang = currentLocale.languageCode;
    final products = Translations.products;
    final isRtl = lang == 'ar';

    return Directionality(
      textDirection: isRtl ? TextDirection.rtl : TextDirection.ltr,
      child: Scaffold(
        appBar: AppBar(
          title: Text(Translations.title[lang]!),
          actions: [
            DropdownButton<String>(
              value: lang,
              icon: const Icon(Icons.language, color: Colors.black),
              dropdownColor: Colors.white,
              onChanged: (String? newLang) {
                if (newLang != null) onLanguageChange(newLang);
              },
              items: const [
                DropdownMenuItem(value: 'en', child: Text('English')),
                DropdownMenuItem(value: 'ar', child: Text('Arabic')),
                DropdownMenuItem(value: 'fr', child: Text('French')),
              ],
            ),
          ],
        ),
        body: ListView.builder(
          itemCount: products.length,
          itemBuilder: (context, index) {
            final product = products[index];

            final nameMap = (product['name'] as Map<String, dynamic>).map(
              (key, value) => MapEntry(key, value as String),
            );

            final details = product['details'] as Map<String, dynamic>;

            final descriptionMap = (details['description']
                    as Map<String, dynamic>)
                .map((key, value) => MapEntry(key, value as String));

            final imagePath = details['image'] as String;

            return Card(
              margin: const EdgeInsets.all(12),
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset(imagePath),
                    const SizedBox(height: 10),
                    Text(
                      nameMap[lang] ?? '',
                      style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      descriptionMap[lang] ?? '',
                      maxLines: 20,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}

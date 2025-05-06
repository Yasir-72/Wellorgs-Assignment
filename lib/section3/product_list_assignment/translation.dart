class Translations {
  static const title = {
    'en': 'Product List',
    'ar': 'قائمة المنتجات',
    'fr': 'Liste des produits',
  };

  static final products = [
    {
      'name': {'en': 'Smartphone', 'ar': 'هاتف ذكي', 'fr': 'Smartphone'},
      'details': {
        'image': 'images/smartphone.png',
        'description': {
          'en': 'A powerful device for communication and entertainment.\n',
          'ar': 'جهاز قوي للاتصال والترفيه.\n',
          'fr':
              'Un appareil puissant pour la communication et le divertissement.\n',
        },
      },
    },
    {
      'name': {'en': 'Headphones', 'ar': 'سماعات', 'fr': 'Casque'},
      'details': {
        'image': 'images/headphone.jpeg',
        'description': {
          'en': 'Enjoy high-quality sound with these headphones.\n',
          'ar': 'استمتع بصوت عالي الجودة مع هذه السماعات.\n',
          'fr': 'Profitez d\'un son de haute qualité avec ce casque.\n',
        },
      },
    },
    {
      'name': {
        'en': 'Laptop',
        'ar': 'حاسوب محمول',
        'fr': 'Ordinateur portable',
      },
      'details': {
        'image': 'images/laptop.jpeg',
        'description': {
          'en': 'A versatile machine for work, study, and entertainment.\n',
          'ar': 'آلة متعددة الاستخدامات للعمل والدراسة والترفيه.\n',
          'fr':
              'Une machine polyvalente pour le travail, les études et le divertissement.\n',
        },
      },
    },
  ];
}

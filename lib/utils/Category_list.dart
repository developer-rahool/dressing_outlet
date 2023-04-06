class ItemData{
  String label;
  bool isSelected;
  ItemData({required this.label, this.isSelected = false});
}
List<ItemData> mainCategory = [
  ItemData(label: "men"),
  ItemData(label: "women"),
  ItemData(label: "shoes"),
  ItemData(label: "bags"),
  ItemData(label: "beauty"),
];

List<String> men = [
  "Shirt",
  "T-Shirt",
  "Jacket",
  "Vest",
  "Jacket",
  "Jeans",
  "Shorts",
  "Coat",
  "Other",
];
List<String> women = [
  'dress',
  '2pcs sets',
  't-shirt',
  'top',
  'skirt',
  'jeans',
  'pants',
  'coat',
  'jacket',
  'other'
];

List<String> shoes = [
  'men slippers',
  'men classic',
  'men casual',
  'men boots',
  'men canvas',
  'men sport',
  'men sandals',
  'home slippers',
  'women slippers',
  'women boots',
  'women heels',
  'women sport',
  'women sandals',
  'other'
];

List<String> bags = [
  'wallet',
  'clutch',
  'chest bag',
  'back pack',
  'business bags',
  'laptop bags',
  'women bags',
  'other'
];

List<String> beauty = [
  'body care',
  'hair care',
  'men perfume',
  'women perfume',
  'make up',
  'other'
];


class Category {
  String id;
  String
      parentId; // parentId => 'null' if it is the root category, otherwise id of some other catergory
  String title;
  String icon;
  String popularity;
  Category(
    this.parentId, {
    required this.id,
    required this.title,
    required this.icon,
    required this.popularity,
  });
}

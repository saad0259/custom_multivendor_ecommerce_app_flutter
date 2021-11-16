import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../providers/theme_provider.dart';
import '../screens/manage_categories/add_category.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context).isDark;
    return Drawer(
      child: Column(
        children: [
          TextButton(
            child: Text('Add Category'),
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => const AddCategory(),
              ));
            },
          ),
          Switch.adaptive(
              value: themeProvider,
              onChanged: (val) {
                Provider.of<ThemeProvider>(context, listen: false)
                    .toggleThemeMode(val);
              }),
        ],
      ),
    );
  }
}

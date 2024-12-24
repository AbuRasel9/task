import 'package:flutter/material.dart';

class MenuItemWidget extends StatelessWidget {
  final Widget icon;
  final String title;
  final VoidCallback onPressed;
  const MenuItemWidget({super.key, required this.icon, required this.title, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    final theme=Theme.of(context);
    return ListTile(
      leading: icon,
      title: Text(title,style:theme.textTheme.bodyLarge?.copyWith(color: theme.colorScheme.onPrimary,) ,),
      onTap: onPressed,
    );

  }
}

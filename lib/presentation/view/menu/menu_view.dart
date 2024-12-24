import 'package:flutter/material.dart';
import 'package:task/presentation/view/homeView/home_view.dart';
import 'package:task/presentation/view/menu/widget/menu_item_widget.dart';

class MenuScreen extends StatefulWidget {
  const MenuScreen({Key? key}) : super(key: key);

  @override
  State<MenuScreen> createState() => _MenuScreenState();
}

class _MenuScreenState extends State<MenuScreen> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      backgroundColor: theme.colorScheme.primary,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          MenuItemWidget(
            icon: Icon(
              Icons.home_outlined,
              color: theme.colorScheme.onPrimary,
            ),
            title: "Home",
            onPressed: () => HomeView(),
          ),

          MenuItemWidget(
            icon: Icon(
              Icons.person_outlined,
              color: theme.colorScheme.onPrimary,
            ),
            title: "Profile",
            onPressed: () {

            },
          ),

          MenuItemWidget(
            icon: Icon(
              Icons.location_on,
              color: theme.colorScheme.onPrimary,
            ),
            title: "Nearby",
            onPressed: () {

            },
          ),

          MenuItemWidget(
            icon: Icon(
              Icons.bookmark_outline,
              color: theme.colorScheme.onPrimary,
            ),
            title: "Bookmark",
            onPressed: () {

            },
          ),

          MenuItemWidget(
            icon: Icon(
              Icons.notifications_none,
              color: theme.colorScheme.onPrimary,
            ),
            title: "Notification",
            onPressed: () {

            },
          ),

          MenuItemWidget(
            icon: Icon(
              Icons.messenger_outline,
              color: theme.colorScheme.onPrimary,
            ),
            title: "Message",
            onPressed: () {

            },
          ),

          MenuItemWidget(
            icon: Icon(
              Icons.settings,
              color: theme.colorScheme.onPrimary,
            ),
            title: "Settings",
            onPressed: () {

            },
          ),

          MenuItemWidget(
            icon: Icon(
              Icons.help_outline,
              color: theme.colorScheme.onPrimary,
            ),
            title: "Help",
            onPressed: () {

            },
          ),

          MenuItemWidget(
            icon: Icon(
              Icons.logout,
              color: theme.colorScheme.onPrimary,
            ),
            title: "Logout",
            onPressed: () {

            },
          ),
        ],
      ),
    );
  }
}

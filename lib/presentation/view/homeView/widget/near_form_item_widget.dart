import 'package:flutter/material.dart';

class NearFormItemWidget extends StatelessWidget {
  final String? image;
  final String? title;
  final String? subtitle;
  final String? distance;
  final VoidCallback onTap;

  const NearFormItemWidget(
      {super.key, this.image, this.title, this.subtitle, this.distance, required this.onTap});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.only(right: 5,),

        margin: const EdgeInsets.only(
          right: 15,
        ),
        width: 210,
        height: 210,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(
              8,
            ),
            image: DecorationImage(
                image: NetworkImage(image ?? ""), fit: BoxFit.fill)),
        child: Column(
          children: [
            Align(
              alignment: Alignment.topRight,
              child: Text(
                distance ?? "",
                style: theme.textTheme.bodySmall?.copyWith(
                    color: theme.colorScheme.onPrimary,
                ),
              ),
            ),


            const Spacer(),
            Text(
              title ?? "",
              style: theme.textTheme.bodyLarge?.copyWith(
                color: theme.colorScheme.onPrimary,
                fontWeight: FontWeight.bold
              ),
            ),


            Text(
              subtitle ?? "",
              style: theme.textTheme.bodySmall?.copyWith(
                  color: theme.colorScheme.onPrimary,
              ),
            ),
            const SizedBox(height: 10,),

          ],
        ),
      ),
    );
  }
}

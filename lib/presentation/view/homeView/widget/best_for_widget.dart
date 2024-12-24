import 'package:flutter/material.dart';

class BestForWidget extends StatelessWidget {
  final String? image;
  final String? title;
  final String? price;
  final String? bedRoom;
  final String? bathRoom;

  const BestForWidget(
      {super.key,
      this.image,
      this.title,
      this.price,
      this.bedRoom,
      this.bathRoom});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      padding: const EdgeInsets.only(
        right: 5,
      ),
      margin: const EdgeInsets.only(
        bottom: 10,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(
          8,
        ),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          //image
          ClipRRect(
            borderRadius: BorderRadius.circular(8,),
            child: Image.network(
              image ?? "",
              height: 74,
              width: 70,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          //text
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              //title
              Text(
                title ?? "",
                style: theme.textTheme.bodyLarge
                    ?.copyWith(fontWeight: FontWeight.bold),
              ),
              //price
              Text(
                price ?? "",
                style: theme.textTheme.bodySmall?.copyWith(color: theme.colorScheme.primary),
              ),
              const SizedBox(
                height: 10,
              ),
              //bedroom and bathroom text
              Row(
                children: <Widget>[
                  const Icon(Icons.bedroom_parent_outlined),
                  const SizedBox(width: 3,),

                  Text(
                    bedRoom ?? "",
                    style: theme.textTheme.bodySmall?.copyWith(),
                  ),
                  const SizedBox(width: 10,),

                  const Icon(Icons.bathtub_outlined),
                  const SizedBox(width: 3,),

                  Text(
                    bathRoom ?? "",
                    style: theme.textTheme.bodySmall?.copyWith(),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}

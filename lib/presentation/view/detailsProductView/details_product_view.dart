import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DetailsProductView extends StatefulWidget {
  const DetailsProductView(
      {super.key,
      required this.name,
      required this.address,
      required this.bedroom,
      required this.bathroom});

  final String name, address, bedroom, bathroom;

  @override
  State<DetailsProductView> createState() => _DetailsProductViewState();
}

class _DetailsProductViewState extends State<DetailsProductView> {
  bool _isExpanded = false; // State to toggle between expanded and collapsed

  String description =
      "The 3 level house that has a modern design, has a large pool and ...";
  String fullDescription =
      "The 3 level house that has a modern design, has a large pool and a garage that fits up to four cars";

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(
          16,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.symmetric(
                vertical: 5,
                horizontal: 5,
              ),
              margin: const EdgeInsets.only(
                bottom: 20,
              ),
              width: double.infinity,
              height: 250,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                    8,
                  ),
                  image: const DecorationImage(
                      image: NetworkImage(
                          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSaOzcvcmbefPr0VqFhsgNIRaQ3HoOAm7yaAQ&s"),
                      fit: BoxFit.fill)),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                          style: IconButton.styleFrom(
                              backgroundColor:
                                  theme.colorScheme.onSurface.withOpacity(.4)),
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          icon: const Icon(
                            CupertinoIcons.back,
                            color: Colors.white,
                          )),
                      IconButton(
                          style: IconButton.styleFrom(
                              backgroundColor:
                                  theme.colorScheme.onSurface.withOpacity(.4)),
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          icon: const Icon(
                            CupertinoIcons.bookmark,
                            color: Colors.white,
                          )),
                    ],
                  ),
                  const Spacer(),
                  Text(
                    widget.name,
                    style: theme.textTheme.bodyLarge?.copyWith(
                      color: theme.colorScheme.onPrimary,
                    ),
                  ),
                  Text(
                    widget.address,
                    style: theme.textTheme.bodySmall?.copyWith(
                      color: theme.colorScheme.surface,
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Icon(
                        Icons.bedroom_parent_outlined,
                        color: theme.colorScheme.surface,
                      ),
                      const SizedBox(
                        width: 3,
                      ),
                      Text(
                        widget.bedroom ?? "",
                        style: theme.textTheme.bodySmall?.copyWith(
                          color: theme.colorScheme.surface,
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Icon(
                        Icons.bathtub_outlined,
                        color: theme.colorScheme.surface,
                      ),
                      const SizedBox(
                        width: 3,
                      ),
                      Text(
                        widget.bathroom ?? "",
                        style: theme.textTheme.bodySmall?.copyWith(
                          color: theme.colorScheme.surface,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                ],
              ),
            ),
            //<<-------------->> description <<-------------->>//

            Text("Description", style: theme.textTheme.bodyLarge),
            const SizedBox(
              height: 8,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Expanded(
                  child: RichText(
                    text: TextSpan(
                      style: Theme.of(context).textTheme.bodySmall,
                      children: [
                        TextSpan(
                            text: _isExpanded ? fullDescription : description),
                        WidgetSpan(
                          child: GestureDetector(
                            onTap: () {
                              setState(() {
                                _isExpanded = !_isExpanded; // Toggle the state
                              });
                            },
                            child: Text(
                              _isExpanded ? "Show Less" : "Show More",
                              style: TextStyle(
                                color: Theme.of(context).colorScheme.primary,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            Row(
              children: <Widget>[
                CircleAvatar(
                  backgroundColor: const Color(0xffc4c4c4),
                  radius: 27,
                  child: Image.asset(
                    "assets/images/profile.png",
                    height: 50,
                    width: 50,
                  ),
                ),
                const SizedBox(
                  width: 5,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text("Garry Allen", style: theme.textTheme.bodyLarge),
                    Text("Owner",
                        style: theme.textTheme.bodyLarge?.copyWith(
                            color:
                                theme.colorScheme.onSurface.withOpacity(.7))),
                  ],
                ),
                const Spacer(),
                IconButton(
                    style: IconButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(
                            8,
                          ),
                        ),
                        backgroundColor: theme.colorScheme.primary),
                    onPressed: () {},
                    icon: const Icon(
                      CupertinoIcons.phone,
                      color: Colors.white,
                    )),
                IconButton(
                    style: IconButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(
                            8,
                          ),
                        ),
                        backgroundColor: theme.colorScheme.primary),
                    onPressed: () {},
                    icon: const Icon(
                      CupertinoIcons.mail_solid,
                      color: Colors.white,
                    )),
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            Text("Gallery", style: theme.textTheme.bodyLarge),
            SizedBox(height: 10,),
            SizedBox(
              height: 80,
              child: ListView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: 10,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(right: 10,),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10,),
                      child: Image.network(
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSaOzcvcmbefPr0VqFhsgNIRaQ3HoOAm7yaAQ&s",
                        height: 72,
                        width: 72,
                        fit: BoxFit.cover,
                      ),
                    ),
                  );
                },
              ),
            ),
            const Text("abc")
          ],
        ),
      ),
    );
  }
}

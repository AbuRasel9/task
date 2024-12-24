import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:get/get.dart';
import 'package:task/presentation/view/detailsProductView/details_product_view.dart';
import 'package:task/presentation/view/homeView/widget/best_for_widget.dart';
import 'package:task/presentation/view/homeView/widget/home_tab_widget.dart';
import 'package:task/presentation/view/homeView/widget/near_form_item_widget.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  List<String> tabList = ["Home", "Apartment", "Hotel", "Vila", "Compartment"];
  List<Map<String, String>> cardItem = [
    {
      "image":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSaOzcvcmbefPr0VqFhsgNIRaQ3HoOAm7yaAQ&s",
      "title": "Dreams Ville House",
      "subtitle": "Jl Sultan Iskandar Muda",
      "distance": "18Km",
    },
    {
      "image":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSaOzcvcmbefPr0VqFhsgNIRaQ3HoOAm7yaAQ&s",
      "title": "Dreams Ville House",
      "subtitle": "Jl Sultan Iskandar Muda",
      "distance": "18Km",
    },
    {
      "image":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSaOzcvcmbefPr0VqFhsgNIRaQ3HoOAm7yaAQ&s",
      "title": "Dreams Ville House",
      "subtitle": "Jl Sultan Iskandar Muda",
      "distance": "18Km",
    }
  ];
  int? selectItem;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        title: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Location",
              style: theme.textTheme.bodySmall?.copyWith(
                color: theme.colorScheme.onSurface.withOpacity(
                  .5,
                ),
              ),
            ),
            Row(
              children: [
                Text(
                  "Jakarta",
                  style: theme.textTheme.bodyLarge,
                ),
                const SizedBox(
                  width: 5,
                ),
                InkWell(
                  onTap: () {
                    if (ZoomDrawer.of(context)!.isOpen()) {
                      ZoomDrawer.of(context)!.close();
                    } else {
                      ZoomDrawer.of(context)!.open();
                    }
                  },
                  child: Icon(
                    Icons.expand_less_rounded,
                    color: theme.colorScheme.onSurface,
                  ),
                ),
                const Spacer(),
                const Icon(Icons.notifications_none)
              ],
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            //<<-------------->> search bar <<-------------->>//

            Row(
              children: [
                Expanded(
                  flex: 4,
                  child: TextFormField(
                    decoration: const InputDecoration(
                        hintText: "Search Address Or Near You",
                        prefixIcon: Icon(Icons.search_rounded)),
                  ),
                ),
                const SizedBox(
                  width: 5,
                ),
                SizedBox(
                  height: 48,
                  width: 52,
                  child: IconButton(
                      style: IconButton.styleFrom(
                          backgroundColor: theme.colorScheme.primary,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(7))),
                      onPressed: () {},
                      icon: Icon(
                        Icons.tune,
                        color: theme.colorScheme.surface,
                      )),
                )
              ],
            ),
            const SizedBox(
              height: 25,
            ),
            //<<-------------->> tab  <<-------------->>//

            SizedBox(
              height: 40,
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: tabList.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return HomeTabWidget(
                    isSelect: selectItem == index,
                    text: tabList[index],
                    onPressed: () {
                      selectItem = index;
                      setState(() {});
                    },
                  );
                },
              ),
            ),
            const SizedBox(
              height: 10,
            ),

            //<<-------------->> near form you and see more section <<-------------->>//

            Row(
              children: [
                Text(
                  "Near from you",
                  style: theme.textTheme.bodyLarge,
                ),
                const Spacer(),
                TextButton(
                    onPressed: () {},
                    child: Text(
                      "See More",
                      style: theme.textTheme.bodySmall,
                    ))
              ],
            ),
            //<<-------------->> near form list <<-------------->>//

            SizedBox(
              height: 220,
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: cardItem.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return NearFormItemWidget(
                    onTap: () {

                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const DetailsProductView(
                              name: 'Dreamsville House',
                              address: 'Jl. Sultan Iskandar Muda, Jakarta selatan',
                              bedroom: '6 Bedroom',
                              bathroom: '4 Bathroom',
                            ),
                          ));
                    },
                    image: cardItem[index]["image"] ?? "",
                    title: cardItem[index]["title"] ?? "",
                    subtitle: cardItem[index]["subtitle"] ?? "",
                    distance: cardItem[index]["distance"] ?? "",
                  );
                },
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            //<<-------------->> best for you and see more section <<-------------->>//

            Row(
              children: [
                Text(
                  "Near from you",
                  style: theme.textTheme.bodyLarge,
                ),
                const Spacer(),
                TextButton(
                    onPressed: () {},
                    child: Text(
                      "See More",
                      style: theme.textTheme.bodySmall,
                    ))
              ],
            ),
            //<<-------------->> best for you list <<-------------->>//

            Expanded(
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: 10,
                itemBuilder: (context, index) {
                  return const BestForWidget(
                    image:
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSaOzcvcmbefPr0VqFhsgNIRaQ3HoOAm7yaAQ&s",
                    title: "Orchad House",
                    price: "Rp. 2.500.000.000 / Year",
                    bedRoom: "6 Bedroom",
                    bathRoom: "2 Bathroom",
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

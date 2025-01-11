import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';

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
  final List<String> locationImages = [
    "https://upload.wikimedia.org/wikipedia/en/0/0d/Surkhet_Airport_-_Aerial_View.jpg",
    "https://cdn.britannica.com/68/178668-050-DA998E6C/Durbar-Square-heart-district-Kathmandu-earthquake-Nepal-April-25-2015.jpg",
    "https://www.acethehimalaya.com/wp-content/uploads/2024/02/things-to-do-in-pokhara.jpg.webp",
  ];

  late MapController _mapController;

  @override
  void initState() {
    super.initState();
    _mapController = MapController();
  }

  bool _isExpanded = false; // State to toggle between expanded and collapsed

  String description =
      "The 3 level house that has a modern design, has a large pool and ...";
  String fullDescription =
      "The 3 level house that has a modern design, has a large pool and a garage that fits up to four cars";

  @override
  Widget build(BuildContext context) {
    final LatLng fixedPosition =
        LatLng(23.754253, 90.393425); // San Francisco's coordinates

    final theme = Theme.of(context);
    return Scaffold(
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            RichText(
              text: TextSpan(children: [
                TextSpan(
                  text: "Price\n",
                  style: theme.textTheme.bodyMedium,
                ),
                TextSpan(
                  text: "Rp. 2.500.000.000 / Year",
                  style: theme.textTheme.bodyLarge,
                ),
              ]),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: theme.colorScheme.primary,),
              onPressed: () {},
              child: Text("Rent Now",style: theme.textTheme.bodyMedium?.copyWith(color: Colors.white,),),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
            padding: const EdgeInsets.only(left: 10, right: 10, top: 16),
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
                                  backgroundColor: theme.colorScheme.onSurface
                                      .withOpacity(.4)),
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              icon: const Icon(
                                CupertinoIcons.back,
                                color: Colors.white,
                              )),
                          IconButton(
                              style: IconButton.styleFrom(
                                  backgroundColor: theme.colorScheme.onSurface
                                      .withOpacity(.4)),
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
                                text: _isExpanded
                                    ? fullDescription
                                    : description),
                            WidgetSpan(
                              child: GestureDetector(
                                onTap: () {
                                  setState(() {
                                    _isExpanded =
                                        !_isExpanded; // Toggle the state
                                  });
                                },
                                child: Text(
                                  _isExpanded ? "Show Less" : "Show More",
                                  style: TextStyle(
                                    color:
                                        Theme.of(context).colorScheme.primary,
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
                                color: theme.colorScheme.onSurface
                                    .withOpacity(.7))),
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
                SizedBox(
                  height: 10,
                ),
                SizedBox(
                  height: 80,
                  child: ListView.builder(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemCount: 10,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.only(
                          right: 10,
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(
                            10,
                          ),
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
                SizedBox(
                  height: 20,
                ),
                SizedBox(
                  height: 200,
                  child: FlutterMap(
                    mapController: _mapController,
                    options: MapOptions(
                      center: fixedPosition, // Center map at the fixed location
                      zoom: 16.0, // Default zoom level
                      minZoom: 3.0, // Minimum zoom
                      maxZoom: 18.0, // Maximum zoom
                    ),
                    children: [
                      // Tile Layer (OpenStreetMap)
                      TileLayer(
                        urlTemplate:
                            'https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png',
                        subdomains: ['a', 'b', 'c'],
                      ),
                      // Marker Layer to show the custom marker
                      MarkerLayer(
                        markers: [
                          Marker(
                            point: fixedPosition,
                            builder: (ctx) => Container(
                              child: Icon(
                                Icons.location_on,
                                size: 40.0,
                                color: Colors
                                    .red, // Custom marker color like Google Maps
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            )),
      ),
    );
  }
}

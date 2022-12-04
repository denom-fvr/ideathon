import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:ideathon/constants/colors.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';


class CarDetail extends StatefulWidget {
  const CarDetail({Key? key}) : super(key: key);

  @override
  State<CarDetail> createState() => _CarDetailState();
}

class _CarDetailState extends State<CarDetail> {
  late GoogleMapController mapController;
  static const initialPosition = LatLng(8.484444, -13.234444);
  final Set<Marker> marker ={};
  LatLng lastPosition = initialPosition;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            automaticallyImplyLeading: false,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Container(
                    width: 35,
                    height: 35,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: const Center(
                      child: Icon(
                        Icons.arrow_back_ios,
                        color: primary,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            bottom: PreferredSize(
              preferredSize: const Size.fromHeight(450),
              child: Container(
                  padding: const EdgeInsets.symmetric(
                      vertical: 10
                  ),
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(15),
                        topLeft: Radius.circular(15)
                    ),
                  ),
                  child: const Center(
                      child: Text(
                        'Google Locator',
                        style: TextStyle(
                            color: primary,
                            fontSize: 22,
                            fontWeight: FontWeight.bold
                        ),
                      )
                  )
              ),
            ),
            backgroundColor: primary,
            elevation: 0,
            pinned: true,
            expandedHeight: 300,
            flexibleSpace: Stack(
              children:[
                FlexibleSpaceBar(
                background: GoogleMap(
                  initialCameraPosition: const CameraPosition(
                      target: initialPosition,
                      zoom: 15
                  ),
                  onMapCreated: onCreated,
                  myLocationEnabled: true,
                  mapType: MapType.normal,
                  compassEnabled: true,
                ),
              ),
                /*Positioned(
                    top: 40,
                    right: 10,
                    child: FloatingActionButton(
                      onPressed: onAddMarkerPressed,
                      backgroundColor: search,
                      tooltip: 'Add Marker',
                      child: const Icon(
                        Icons.location_on_rounded,
                        color: Colors.white,
                      ),
                    )
                )*/
              ]
            ),
          ),
          SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Container(
                      margin: const EdgeInsets.symmetric(
                          vertical: 10,
                          horizontal: 10
                      ),
                      height: MediaQuery.of(context).size.height * 0.9,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          color: Colors.transparent,
                          borderRadius: BorderRadius.circular(15)
                      ),
                      child: Column(
                        children: [
                          Material(
                            elevation: 5,
                            borderRadius: BorderRadius.circular(15),
                            child: Container(
                              height: 50.0,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: Colors.white,
                              ),
                              child: TextField(
                                cursorColor: Colors.black,
                                //controller: appState.locationController,
                                decoration: InputDecoration(
                                  icon: Container(
                                    margin: const EdgeInsets.only(left: 20, top: 5),
                                    width: 10,
                                    height: 10,
                                    child: const Icon(
                                      Icons.location_on,
                                      color: Colors.black,
                                    ),
                                  ),
                                  hintText: "Pick Up",
                                  border: InputBorder.none,
                                  contentPadding: const EdgeInsets.only(left: 15.0, top: 16.0),
                                ),
                              ),
                            ),
                          ),
                          const Gap(10),
                          Material(
                            elevation: 5,
                            borderRadius: BorderRadius.circular(15),
                            child: Container(
                              height: 50.0,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: Colors.white,
                              ),
                              child: TextField(
                                cursorColor: Colors.black,
                                //controller: appState.destinationController,
                                textInputAction: TextInputAction.go,
                                /*onSubmitted: (value) {
                        appState.sendRequest(value);
                      },*/
                                decoration: InputDecoration(
                                  icon: Container(
                                    margin: const EdgeInsets.only(left: 20, top: 5),
                                    width: 10,
                                    height: 10,
                                    child: const Icon(
                                      Icons.local_taxi,
                                      color: Colors.black,
                                    ),
                                  ),
                                  hintText: "Destination",
                                  border: InputBorder.none,
                                  contentPadding: const EdgeInsets.only(left: 15.0, top: 16.0),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              )
          )
        ],
      ),
    );
  }
  void onCreated(GoogleMapController controller) {
    setState(() {
      mapController = controller;
    });
  }

  void onCameraMove(CameraPosition position) {
    setState(() {
      lastPosition = position.target;
    });
  }

  void onAddMarkerPressed() {
    setState(() {
      marker.add(
          Marker(
              markerId: MarkerId(
                  lastPosition.toString(),
              ),
            position: lastPosition,
            infoWindow: const InfoWindow(
                title: 'World',
                snippet: 'Smart'
            ),
            icon: BitmapDescriptor.defaultMarker
          )
      );
    });
  }

  List decodePoly(String poly) {
    var list = poly.codeUnits;
    var lList = [];
    int index = 0;
    int len = poly.length;
    int c = 0;
// repeating until all attributes are decoded
    do {
      var shift = 0;
      int result = 0;

      // for decoding value of one attribute
      do {
        c = list[index] - 63;
        result |= (c & 0x1F) << (shift * 5);
        index++;
        shift++;
      } while (c >= 32);
      /* if value is negetive then bitwise not the value */
      if (result & 1 == 1) {
        result = ~result;
      }
      var result1 = (result >> 1) * 0.00001;
      lList.add(result1);
    } while (index < len);

/*adding to previous value as done in encoding */
    for (var i = 2; i < lList.length; i++) {
      lList[i] += lList[i - 2];
    }

    (lList.toString());

    return lList;
  }
}

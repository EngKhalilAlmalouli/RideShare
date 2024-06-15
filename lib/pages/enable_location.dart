// import 'package:flutter/material.dart';
// import 'package:flutter_osm_plugin/flutter_osm_plugin.dart';

// class EnableLocation extends StatefulWidget {
//   const EnableLocation({super.key});

//   @override
//   State<EnableLocation> createState() => _EnableLocationState();
// }

// class _EnableLocationState extends State<EnableLocation> {
//   MapController controller = MapController(
//     initPosition: GeoPoint(latitude: 47.4358055, longitude: 8.4737324),
//     areaLimit: BoundingBox(
//       east: 10.4922941,
//       north: 47.8084648,
//       south: 45.817995,
//       west: 5.9559113,
//     ),
//   );
//   @override
//   Widget build(BuildContext context) {
//     return OSMFlutter(
//         controller: controller,
//         osmOption: OSMOption(
//           userTrackingOption: const UserTrackingOption(
//             enableTracking: true,
//             unFollowUser: false,
//           ),
//           zoomOption: const ZoomOption(
//             initZoom: 8,
//             minZoomLevel: 3,
//             maxZoomLevel: 19,
//             stepZoom: 1.0,
//           ),
//           userLocationMarker: UserLocationMaker(
//             personMarker: const MarkerIcon(
//               icon: Icon(
//                 Icons.location_history_rounded,
//                 color: Colors.red,
//                 size: 48,
//               ),
//             ),
//             directionArrowMarker: const MarkerIcon(
//               icon: Icon(
//                 Icons.double_arrow,
//                 size: 48,
//               ),
//             ),
//           ),
//           roadConfiguration: const RoadOption(
//             roadColor: Colors.yellowAccent,
//           ),
//           markerOption: MarkerOption(
//               defaultMarker: const MarkerIcon(
//             icon: Icon(
//               Icons.person_pin_circle,
//               color: Colors.blue,
//               size: 56,
//             ),
//           )),
//         ));
//   }
// }


import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class EnableLocation extends StatelessWidget {
  const EnableLocation({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: FloatingActionButton(onPressed: (){
                  context.go('/WelcomeScreen');

         },
         backgroundColor: const Color(0XFF08B783),
         child: const Icon(Icons.arrow_right_alt_rounded),
         
         shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(100)
        ),
         ),
    );
  }
}
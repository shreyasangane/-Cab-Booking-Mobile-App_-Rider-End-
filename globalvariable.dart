import 'package:cabrider/datamodels/user.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';


String serverKey= 'key=ld9byhCEnTQ0MyCgakIKBRnRDyRgylEssrzYdyALApgy2FZfqNg1xDnXrH2yDF9DQUJHOsS2HPEnd95kW59ymblzvm5a5o0WB3yX';

String mapKey='AIzaS8S554Dc2SCeRLcZ8mp66pLo2e0f7_iNwP4VdO5Q'; 

final CameraPosition googlePlex = CameraPosition(
  target: LatLng(48.6295133580664, -122.085749655962),
  zoom: 14.4746,
);



FirebaseUser currentFirebaseUser;

User currentUserInfo;


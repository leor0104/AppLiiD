import 'package:wifi/wifi.dart';

String ssid = Wifi.ssid as String;

//Signal strength， 1-3，The bigger the number, the stronger the signal
int level = Wifi.level as int;

String ip = Wifi.ip as String;

var result =  Wifi.connection('LiiDUTPL', 'LiiD2019');

// only work on Android.
List<WifiResult> list =  Wifi.list('key') as List<WifiResult>; // this key is used to filter


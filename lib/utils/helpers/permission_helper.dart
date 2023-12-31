import 'package:permission_handler/permission_handler.dart';

class PermissionHelper {
  static Future<bool> checkAndRequestPermission(Permission permission) async {
    // Check if the permission is already granted
    var status = await permission.status;
    if (status == PermissionStatus.granted) {
      // Permission already granted
      return true;
    } else {
      // Permission not granted, request it
      var result = await permission.request();
      if (result == PermissionStatus.granted) {
        // Permission granted after request
        return true;
      } else {
        // Permission denied
        return false;
      }
    }
  }

  // Example methods for specific permissions (modify as needed)
  static Future<bool> checkAndRequestCameraPermission() async {
    return checkAndRequestPermission(Permission.camera);
  }

  static Future<bool> checkAndRequestLocationPermission() async {
    return checkAndRequestPermission(Permission.location);
  }

  static Future<bool> checkAndRequestStoragePermission() async {
    return checkAndRequestPermission(Permission.storage);
  }

  static Future<bool> checkAndRequestMicrophonePermission() async {
    return checkAndRequestPermission(Permission.microphone);
  }

  static Future<bool> checkAndRequestContactsPermission() async {
    return checkAndRequestPermission(Permission.contacts);
  }

  static Future<void> openSettings() async {
    await openAppSettings();
  }
}

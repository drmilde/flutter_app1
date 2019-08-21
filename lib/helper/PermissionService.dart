import 'package:contacts_service/contacts_service.dart';
import 'package:permission_handler/permission_handler.dart';

class PermissionService {
  final PermissionHandler _permissionHandler = PermissionHandler();

  Future<bool> _requestPermission(PermissionGroup permission) async {
    var result = await _permissionHandler.requestPermissions([permission]);

    if (result[permission] == PermissionStatus.granted) {
      return true;
    }
    return false;
  }

  Future<bool> requestContactsPermission() async {
    return _requestPermission(PermissionGroup.contacts);
  }

  void requestContacts() async {
    PermissionService ps = PermissionService();

    var granted = await ps.requestContactsPermission();
    print("permission are {$granted}");

    if (granted) {
      Iterable<Contact> _contacts = await ContactsService.getContacts();

      for (Contact value in _contacts) {
        String dn = value.displayName;
        print("name ist {$dn} \n");
      }
    }
  }
}

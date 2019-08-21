import 'package:contacts_service/contacts_service.dart';
import 'package:permission_handler/permission_handler.dart';

class PermissionService {
  final PermissionHandler _permissionHandler = PermissionHandler();
  Iterable<Contact> _contacts;

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

  Future<Iterable<Contact>> requestContacts() async {
    PermissionService ps = PermissionService();

    var granted = await ps.requestContactsPermission();
    print("permission are {$granted}");

    if (granted) {
       _contacts = await ContactsService.getContacts();
      return _contacts;
    }
  }
}

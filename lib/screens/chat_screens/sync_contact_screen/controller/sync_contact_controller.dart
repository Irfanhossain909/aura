import 'package:get/get.dart';

class SyncContactController extends GetxController {
  final RxList<ContactItem> contacts = <ContactItem>[].obs;

  @override
  void onInit() {
    super.onInit();
    _initializeContacts();
  }

  void _initializeContacts() {
    contacts.value = [
      ContactItem(text: "travis"),
      ContactItem(text: "roger"),
      ContactItem(text: "IRFAN"),
      ContactItem(text: "SABBIR"),
      ContactItem(text: "RAKIB"),
    ];
  }
}

class ContactItem {
  final String text;

  ContactItem({required this.text});
}

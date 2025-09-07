import 'package:get/get.dart';

class ContactListController extends GetxController {
  // Observable list to store contact data
  final RxList<ContactItem> contacts = <ContactItem>[].obs;

  @override
  void onInit() {
    super.onInit();
    // Initialize with some sample data
    _initializeContacts();
  }

  void _initializeContacts() {
    contacts.value = [
      ContactItem(text: "(123) 456-7890"),
      ContactItem(text: "(987) 654-3210"),
      ContactItem(text: "(555) 123-4567"),
      ContactItem(text: "(111) 222-3333"),
      ContactItem(text: "(444) 555-6666"),
    ];
  }

  void removeContact(int index) {
    if (index >= 0 && index < contacts.length) {
      contacts.removeAt(index);
    }
  }
}

class ContactItem {
  final String text;

  ContactItem({required this.text});
}

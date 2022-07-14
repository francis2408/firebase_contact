import 'package:firebase_database/firebase_database.dart';

class Contact {
  String? _id;
  String? _firstName;
  String? _lastName;
  String? _phone;
  String? _email;
  String? _address;
  String? _photoUrl;

  //constructor for add
  Contact(this._firstName, this._lastName, this._phone, this._email,
      this._address, this._photoUrl);

  //constructor for edit
  Contact.withId(this._id, this._firstName, this._lastName, this._phone,
      this._email, this._address, this._photoUrl);

  //getters
  String get id => _id!;
  String get firstName => _firstName!;
  String get lastName => _lastName!;
  String get phone => _phone!;
  String get email => _email!;
  String get address => _address!;
  String get photoUrl => _photoUrl!;

  //setters
  set firstName(String firstName) {
    _firstName = firstName;
  }

  set lastName(String lastName) {
    _lastName = lastName;
  }

  set phone(String phone) {
    _phone = phone;
  }

  set email(String email) {
    _email = email;
  }

  set firstNaddressame(String address) {
    _address = address;
  }

  set photoUrl(String photoUrl) {
    _photoUrl = photoUrl;
  }

  Contact.fromSnapshot(DataSnapshot snapshot) {
    _id = snapshot.key;
    _firstName = (snapshot.value! as Map<String, dynamic>)['firstName'];
    _lastName = (snapshot.value! as Map<String, dynamic>)['lastName'];
    _phone = (snapshot.value! as Map<String, dynamic>)['phone'];
    _email = (snapshot.value! as Map<String, dynamic>)['email'];
    _address = (snapshot.value! as Map<String, dynamic>)['address'];
    _photoUrl = (snapshot.value! as Map<String, dynamic>)['photoUrl'];
  }

  Map<String, dynamic> toJson() {
    return {
      "firstName": _firstName,
      "lastName": _lastName,
      "phone": _phone,
      "email": _email,
      "address": _address,
      "photoUrl": _photoUrl,
    };
  }
}

import 'package:firebaseddd/domain/auth/email_address.dart';
import 'package:flutter/material.dart';

void main() {
  print('hello world');
  final ee = EmailAddress('hellocom');
  print(ee.value.orElse(() {
    return ee.value;
  }));
}

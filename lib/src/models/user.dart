import 'package:equatable/equatable.dart';

class User extends Equatable {
  const User({
    required this.birthDay,
    required this.personalInfo,
    required this.billingAddress,
    required this.payment,
  });

  final BirthDay birthDay;
  final PersonalInfo personalInfo;
  final BillingAddress billingAddress;
  final Payment payment;

  factory User.empty() {
    return User(
      birthDay: BirthDay.empty(),
      personalInfo: PersonalInfo.empty(),
      billingAddress: BillingAddress.empty(),
      payment: Payment.empty(),
    );
  }

  User copyWith({
    BirthDay? birthDay,
    PersonalInfo? personalInfo,
    BillingAddress? billingAddress,
    Payment? payment,
  }) {
    return User(
      birthDay: birthDay ?? this.birthDay,
      personalInfo: personalInfo ?? this.personalInfo,
      billingAddress: billingAddress ?? this.billingAddress,
      payment: payment ?? this.payment,
    );
  }

  @override
  List<Object?> get props => [personalInfo, billingAddress, payment];
}

class BirthDay extends Equatable {
  const BirthDay({
    required this.birthDay,
  });

  final String birthDay;

  factory BirthDay.empty() {
    return const BirthDay(
      birthDay: '',
    );
  }

  BirthDay copyWith({
    String? birthDay,
  }) {
    return BirthDay(
      birthDay: birthDay ?? this.birthDay,
    );
  }

  @override
  List<Object?> get props => [birthDay];
}

class PersonalInfo extends Equatable {
  const PersonalInfo({
    required this.firstName,
    required this.email,
    required this.phoneNumber,
  });

  final String firstName;
  final String email;
  final String phoneNumber;

  factory PersonalInfo.empty() {
    return const PersonalInfo(
      firstName: '',
      email: '',
      phoneNumber: '',
    );
  }

  PersonalInfo copyWith({
    String? firstName,
    String? email,
    String? phoneNumber,
  }) {
    return PersonalInfo(
      firstName: firstName ?? this.firstName,
      email: email ?? this.email,
      phoneNumber: phoneNumber ?? this.phoneNumber,
    );
  }

  @override
  List<Object?> get props => [firstName, email, phoneNumber];
}

class BillingAddress extends Equatable {
  const BillingAddress({
    required this.street,
    required this.apartment,
    required this.city,
    required this.country,
    required this.postcode,
  });

  final String street;
  final String apartment;
  final String city;
  final String country;
  final String postcode;

  factory BillingAddress.empty() {
    return const BillingAddress(
      street: '',
      apartment: '',
      city: '',
      country: '',
      postcode: '',
    );
  }

  BillingAddress copyWith({
    String? street,
    String? apartment,
    String? city,
    String? country,
    String? postcode,
  }) {
    return BillingAddress(
      street: street ?? this.street,
      apartment: apartment ?? this.apartment,
      city: city ?? this.city,
      country: country ?? this.country,
      postcode: postcode ?? this.postcode,
    );
  }

  @override
  List<Object?> get props => [street, apartment, city, country, postcode];
}

class Payment extends Equatable {
  const Payment({
    required this.cardName,
    required this.cardNumber,
    required this.expiryDate,
    required this.cvvNumber,
  });

  final String cardName;
  final String cardNumber;
  final String expiryDate;
  final String cvvNumber;

  factory Payment.empty() {
    return const Payment(
      cardName: '',
      cardNumber: '',
      expiryDate: '',
      cvvNumber: '',
    );
  }

  Payment copyWith({
    String? cardName,
    String? cardNumber,
    String? expiryDate,
    String? cvvNumber,
  }) {
    return Payment(
      cardName: cardName ?? this.cardName,
      cardNumber: cardNumber ?? this.cardNumber,
      expiryDate: expiryDate ?? this.expiryDate,
      cvvNumber: cvvNumber ?? this.cvvNumber,
    );
  }

  @override
  List<Object?> get props => [cardName, cardNumber, expiryDate, cvvNumber];
}

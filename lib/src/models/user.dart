import 'package:equatable/equatable.dart';

enum SwimLevelEnum { EINSTIEGERKURS, AUFSTIEGERKURS }

class User extends Equatable {
  const User({
    required this.signupUser,
    required this.swimLevel,
    required this.birthDay,
    required this.kidsPersonalInfo,
    required this.personalInfo,
    required this.swimCourseInfo,
    required this.swimPoolInfo,
  });

  final SignupUser signupUser;
  final SwimLevel swimLevel;
  final BirthDay birthDay;
  final KidsPersonalInfo kidsPersonalInfo;
  final PersonalInfo personalInfo;
  final SwimCourseInfo swimCourseInfo;
  final SwimPoolInfo swimPoolInfo;

  factory User.empty() {
    return User(
      signupUser: SignupUser.empty(),
      swimLevel: SwimLevel.empty(),
      birthDay: BirthDay.empty(),
      kidsPersonalInfo: KidsPersonalInfo.empty(),
      personalInfo: PersonalInfo.empty(),
      swimCourseInfo: SwimCourseInfo.empty(),
      swimPoolInfo: SwimPoolInfo.empty(),
    );
  }

  User copyWith({
    SignupUser? signupUser,
    SwimLevel? swimLevel,
    BirthDay? birthDay,
    KidsPersonalInfo? kidsPersonalInfo,
    PersonalInfo? personalInfo,
    SwimCourseInfo? swimCourseInfo,
    SwimPoolInfo? swimPoolInfo,
  }) {
    return User(
      signupUser: signupUser ?? this.signupUser,
      swimLevel: swimLevel ?? this.swimLevel,
      birthDay: birthDay ?? this.birthDay,
      kidsPersonalInfo: kidsPersonalInfo ?? this.kidsPersonalInfo,
      personalInfo: personalInfo ?? this.personalInfo,
      swimCourseInfo: swimCourseInfo ?? this.swimCourseInfo,
      swimPoolInfo: swimPoolInfo ?? this.swimPoolInfo,
    );
  }

  @override
  List<Object?> get props =>
      [
        signupUser,
        swimLevel,
        birthDay,
        kidsPersonalInfo,
        personalInfo,
        swimCourseInfo,
        swimPoolInfo,
      ];
}

class SignupUser extends Equatable {
  final String? firstName;
  final String? lastName;
  final String? email;
  final String? password;

  const SignupUser({this.firstName, this.lastName, this.email, this.password});

  factory SignupUser.empty() {
    return const SignupUser(
      firstName: '',
      lastName: '',
      email: '',
      password: '',
    );
  }

  SignupUser copyWith({
    String? firstName,
    String? lastName,
    String? email,
    String? password,
  }) {
    return SignupUser(
      firstName: firstName ?? this.firstName,
      lastName: lastName ?? this.lastName,
      email: email ?? this.email,
      password: password ?? this.password,
    );
  }

  @override
  List<Object?> get props => [firstName, lastName, email, password];
}

class SwimLevel extends Equatable {
  final SwimLevelEnum? swimLevel;

  const SwimLevel({
    this.swimLevel,
  });

  factory SwimLevel.empty() {
    return const SwimLevel(
      swimLevel: SwimLevelEnum.EINSTIEGERKURS,
    );
  }

  SwimLevel copyWith({
    SwimLevelEnum? swimLevel,
  }) {
    return SwimLevel(
      swimLevel: swimLevel ?? this.swimLevel,
    );
  }
  @override
  List<Object?> get props => [swimLevel];
}

class BirthDay extends Equatable {
  final DateTime? birthDay;

  const BirthDay({
    this.birthDay,
  });

  factory BirthDay.empty() {
    return const BirthDay(
      birthDay:
      null, // Null ist als Platzhalter für "kein Geburtsdatum gesetzt"
    );
  }

  BirthDay copyWith({
    DateTime? birthDay,
  }) {
    return BirthDay(
      birthDay: birthDay ?? this.birthDay,
    );
  }

  @override
  List<Object?> get props => [birthDay];
}

class KidsPersonalInfo extends Equatable {
  const KidsPersonalInfo({
    required this.firstName,
    required this.lastName,
  });

  final String firstName;
  final String lastName;

  factory KidsPersonalInfo.empty() {
    return const KidsPersonalInfo(
      firstName: '',
      lastName: '',
    );
  }

  KidsPersonalInfo copyWith({
    String? firstName,
    String? lastName,
  }) {
    return KidsPersonalInfo(
      firstName: firstName ?? this.firstName,
      lastName: lastName ?? this.lastName,
    );
  }

  @override
  List<Object?> get props => [firstName, lastName];
}

class PersonalInfo extends Equatable {
  const PersonalInfo({
    required this.title,
    required this.firstName,
    required this.lastName,
    required this.street,
    required this.streetNumber,
    required this.zipCode,
    required this.city,
    required this.email,
    required this.emailConfirm,
    required this.phoneNumber,
    required this.phoneNumberConfirm,
  });

  final String title;
  final String firstName;
  final String lastName;
  final String street;
  final String streetNumber;
  final String zipCode;
  final String city;
  final String email;
  final String emailConfirm;
  final String phoneNumber;
  final String phoneNumberConfirm;

  factory PersonalInfo.empty() {
    return const PersonalInfo(
      title: '',
      firstName: '',
      lastName: '',
      street: '',
      streetNumber: '',
      zipCode: '',
      city: '',
      email: '',
      emailConfirm: '',
      phoneNumber: '',
      phoneNumberConfirm: '',
    );
  }

  PersonalInfo copyWith({
    String? title,
    String? firstName,
    String? lastName,
    String? street,
    String? streetNumber,
    String? zipCode,
    String? city,
    String? email,
    String? emailConfirm,
    String? phoneNumber,
    String? phoneNumberConfirm,
  }) {
    return PersonalInfo(
      title: title ?? this.title,
      firstName: firstName ?? this.firstName,
      lastName: lastName ?? this.lastName,
      street: street ?? this.street,
      streetNumber: streetNumber ?? this.streetNumber,
      zipCode: zipCode ?? this.zipCode,
      city: city ?? this.city,
      email: email ?? this.email,
      emailConfirm: emailConfirm ?? this.emailConfirm,
      phoneNumber: phoneNumber ?? this.phoneNumber,
      phoneNumberConfirm: phoneNumberConfirm ?? this.phoneNumberConfirm,
    );
  }

  @override
  List<Object?> get props =>
      [
        title,
        firstName,
        lastName,
        street,
        streetNumber,
        zipCode,
        city,
        email,
        emailConfirm,
        phoneNumber,
        phoneNumberConfirm,
      ];
}

class SwimCourseInfo extends Equatable {
  const SwimCourseInfo({
    required this.season,
    required this.swimCourseID,
    required this.swimCourseName,
    required this.swimCoursePrice,
  });

  final String season;
  final int swimCourseID;
  final String swimCourseName;
  final String swimCoursePrice;

  factory SwimCourseInfo.empty() {
    return const SwimCourseInfo(
      season: '',
      swimCourseID: 0,
      swimCourseName: 'swimCourseName',
      swimCoursePrice: '',
    );
  }

  SwimCourseInfo copyWith({
    String? season,
    int? swimCourseID,
    String? swimCourseName,
    String? swimCoursePrice,
  }) {
    return SwimCourseInfo(
      season: season ?? this.season,
      swimCourseID: swimCourseID ?? this.swimCourseID,
      swimCourseName: swimCourseName ?? this.swimCourseName,
      swimCoursePrice: swimCoursePrice ?? this.swimCoursePrice,
    );
  }

  @override
  List<Object?> get props =>
      [season, swimCourseID, swimCourseName, swimCoursePrice];
}

class SwimPoolInfo extends Equatable {
  const SwimPoolInfo({
    required this.swimPoolID,
    required this.swimPoolName,
  });

  final int swimPoolID;
  final String swimPoolName;

  factory SwimPoolInfo.empty() {
    return const SwimPoolInfo(
      swimPoolID: 0,
      swimPoolName: '',
    );
  }

  SwimPoolInfo copyWith({
    int? swimPoolID,
    String? swimPoolName,
  }) {
    return SwimPoolInfo(
      swimPoolID: swimPoolID ?? this.swimPoolID,
      swimPoolName: swimPoolName ?? this.swimPoolName,
    );
  }

  @override
  List<Object?> get props => [swimPoolID, swimPoolName];
}

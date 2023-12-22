import 'models/user.dart';

class UserRepository {
  User? _user;

  Future<User?> getUser() async {
    await Future.delayed(const Duration(seconds: 1));
    return _user ?? User.empty();
  }

  Future<void> updateSignupUser({
    required String firstName,
    required String lastName,
    required String email,
    required String password,
  }) async {
    _user ??= User.empty();
    await Future.delayed(const Duration(seconds: 1));
    _user = _user?.copyWith(
        signupUser: SignupUser(
      firstName: firstName,
      lastName: lastName,
      email: email,
      password: password,
    ));
  }

  Future<void> updateSwimLevel({
    required SwimLevelEnum swimLevel,
}) async {
    _user ??= User.empty();
    await Future.delayed(const Duration(seconds: 1));
    _user = _user?.copyWith(swimLevel: SwimLevel(swimLevel: swimLevel));
  }

  Future<void> updateBirthDay({
    required DateTime birthDay,
  }) async {
    _user ??= User.empty();
    await Future.delayed(const Duration(seconds: 1));
    _user = _user?.copyWith(birthDay: BirthDay(birthDay: birthDay));
  }

  Future<void> updateKidsPersonalInfo({
    required String firstName,
    required String lastName,
  }) async {
    _user ??= User.empty();
    await Future.delayed(const Duration(seconds: 1));
    _user = _user?.copyWith(
        kidsPersonalInfo: KidsPersonalInfo(
      firstName: firstName,
      lastName: lastName,
    ));
  }

  Future<void> updatePersonalInfo({
    required String title,
    required String firstName,
    required String lastName,
    required String street,
    required String streetNumber,
    required String zipCode,
    required String city,
    required String email,
    required String emailConfirm,
    required String phoneNumber,
    required String phoneNumberConfirm,
  }) async {
    _user ??= User.empty();
    await Future.delayed(const Duration(seconds: 1));
    _user = _user?.copyWith(
      personalInfo: PersonalInfo(
        title: title,
        firstName: firstName,
        lastName: lastName,
        street: street,
        streetNumber: streetNumber,
        zipCode: zipCode,
        city: city,
        email: email,
        emailConfirm: emailConfirm,
        phoneNumber: phoneNumber,
        phoneNumberConfirm: phoneNumberConfirm,
      ),
    );
  }

  Future<void> updateSwimCourseInfo({
    required String season,
    required int swimCourseID,
    required String swimCourseName,
    required String swimCoursePrice,
  }) async {
    _user ??= User.empty();
    await Future.delayed(const Duration(seconds: 1));
    _user = _user?.copyWith(
        swimCourseInfo: SwimCourseInfo(
      season: season,
      swimCourseID: swimCourseID,
      swimCourseName: swimCourseName,
      swimCoursePrice: swimCoursePrice,
    ));
  }

  Future<void> updateSwimPoolInfo({
    required int swimPoolID,
    required String swimPoolName,
  }) async {
    _user ??= User.empty();
    await Future.delayed(const Duration(seconds: 1));
    _user = _user?.copyWith(
        swimPoolInfo: SwimPoolInfo(
      swimPoolID: swimPoolID,
      swimPoolName: swimPoolName,
    ));
  }
}

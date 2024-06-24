class AuthenticationController {
  Future<bool> registerNewUser(
      String email, String username, String password) async {
    // Simulate a network request
    await Future.delayed(Duration(seconds: 1));
    return email == '' && password == '';
  }
}

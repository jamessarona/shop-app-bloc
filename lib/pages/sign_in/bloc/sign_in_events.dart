abstract class SignInEvents {
  const SignInEvents();
}

class EmailEvent extends SignInEvents {
  final String email;
  const EmailEvent(this.email);
}

class Passwordvent extends SignInEvents {
  final String password;
  const Passwordvent(this.password);
}

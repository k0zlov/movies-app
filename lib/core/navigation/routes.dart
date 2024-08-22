enum AppRoutes {
  root('/'),
  library('/library'),
  search('/search'),
  home('/home'),
  profile('/profile'),
  person('/person'),
  media('/media'),
  account('/account'),
  settings('/account/settings'),

  /// Auth
  auth('/auth'),
  login('/auth/login'),
  registration('/auth/registration'),
  confirmation('/auth/confirmation');

  const AppRoutes(this.path);

  final String path;
}

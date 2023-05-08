enum Environments { production, development }

class Environment {
  // !!!IMPORTANT!!!
  static const environment = Environments.development;
  static const useFakeApiImplementation = false;

  //////////////////////////////////////////////////////////////////////////

  static bool get isProductionMode => environment == Environments.production;
  static bool get isDevelopmentMode => environment == Environments.development;

  static bool get isDevelopmentFakeApiMode =>
      environment == Environments.development && useFakeApiImplementation;

  //////////////////////////////////////////////////////////////////////////
}

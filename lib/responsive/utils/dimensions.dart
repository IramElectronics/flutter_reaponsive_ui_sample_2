class Dimensions {
  static const double mobileWidth = 500;
  static const double tabletWidth = 1100;

  static bool isMobile(double width) => width <= mobileWidth;
  static bool isTablet(double width) =>
      width > mobileWidth && width <= tabletWidth;
}

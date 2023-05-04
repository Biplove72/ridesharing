class UserRequest {
  late String requestId;
  late String requestDescription;
  late String name;
  late String imagaePath;
  late double fair;
  late String totaldistance;

  UserRequest(
    String requestId,
    String requestDescription,
    String name,
    String imagaePath,
    double fair,
    String totaldistance,
  ) {
    this.requestId = requestId;
    this.requestDescription = requestDescription;
    this.name = name;
    this.imagaePath = imagaePath;
    this.fair = fair;
    this.totaldistance = totaldistance;
  }
}

class AppConstants {
  static String appVersion = "1.0.0";
  static String appSign =
      "b30777fcb0bf29c05d01064748f8dd595a694428225563a4c5c2319c37f6ec49";
  static int appId = 472203212;
  // static String ip = "192.168.1.9";
    static String ip = "172.20.10.4";

  //all streamers
  // static String allStreamers = "http://192.168.1.10/astro/all_streamers.php";
  static String allStreamers = "http://$ip/astro/all_streamers.php";
  static String deleteStreamers = "http://$ip/astro/remove_streamers.php";
  static String addStreamers = "http://$ip/astro/add_streamers.php";
  // static String allStreamers = "http://172.20.10.4/astro/all_streamers.php";
}

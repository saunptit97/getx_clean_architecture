import 'package:intl/intl.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:in_app_review/in_app_review.dart';
import 'package:timeago/timeago.dart' as timeago;

///
/// --------------------------------------------
/// There are many amazing [Function]s in this class.
/// Especialy in [Function]ality.
class Utilities {
  /// handle call phone number
  /// [phone] phone number
  static Future<void> phone({String phone = "0"}) async {
    await launch("tel://$phone");
  }

  /// open web view
  /// [link] link of the webview
  static Future<void> web({
    String link = "https://google.com",
  }) async {
    final url = link;
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  /// handle formate date time
  /// [format] format type
  /// [date] date time
  static String formattedDate({
    String format = 'dd/MMMM/yyyy',
    String? date,
  }) {
    try {
      if (date == null) {
        return "";
      }
      String formattedDate = DateFormat(format).format(DateTime.parse(date));
      return formattedDate;
    } catch (e) {
      return DateFormat(format).format(DateTime.parse(
        DateTime.now().toString(),
      ));
    }
  }

  /// handle rate app
  static rateApp(String appId) async {
    final InAppReview inAppReview = InAppReview.instance;
    final isAvailable = await inAppReview.isAvailable();
    if (isAvailable) {
      inAppReview.openStoreListing(
        appStoreId: appId,
        microsoftStoreId: '...',
      );
    }
  }

  /// return time ago
  /// [date] date time
  /// [locale] locate
  static String timeAgo(DateTime date, String locale) {
    // set message locale for each locate
    timeago.setLocaleMessages('en', timeago.EnMessages());
    timeago.setLocaleMessages('vi', timeago.ViMessages());
    return timeago.format(date, locale: locale);
  }
}

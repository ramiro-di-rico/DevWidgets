import 'package:devtoys/infrastructure/bindings/controllers/encoders/html_encoder_controller_binding.dart';
import 'package:devtoys/infrastructure/bindings/controllers/home_controller_binding.dart';
import 'package:devtoys/infrastructure/bindings/controllers/formatters/json_formatter_controller_binding.dart';
import 'package:devtoys/infrastructure/bindings/controllers/formatters/sql_formatter_controller_binding.dart';
import 'package:devtoys/presentation/encoders/views/html_encoder_view.dart';
import 'package:devtoys/presentation/home/views/home_view.dart';
import 'package:devtoys/presentation/formatters/views/json_formatter_view.dart';
import 'package:devtoys/presentation/formatters/views/sql_formatter_view.dart';
import 'package:get/get.dart';
import 'routes.dart';

class Navigation {
  static List<GetPage> pages = [
    GetPage(
      name: Routes.home,
      page: () => const HomeView(),
      binding: HomeControllerBinding(),
    ),
    GetPage(
      name: Routes.sqlFormatter,
      page: () => const SQLFormatterView(),
      binding: SQLFormatterControllerBinding(),
    ),
    GetPage(
      name: Routes.jsonFormatter,
      page: () => const JSONFormatterView(),
      binding: JSONFormatterControllerBinding(),
    ),
    GetPage(
      name: Routes.htmlEncoder,
      page: () => const HTMLEncoderView(),
      binding: HTMLEncoderControllerBinding(),
    ),
  ];
}
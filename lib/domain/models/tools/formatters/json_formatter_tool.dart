import 'package:dev_widgets/domain/helpers/formatters/json_formatter.dart';
import 'package:dev_widgets/domain/models/groups/group.dart';
import 'package:dev_widgets/domain/models/groups/formatters_group.dart';
import 'package:dev_widgets/domain/models/tools/tool.dart';
import 'package:dev_widgets/infrastructure/navigation/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class JsonFormatterTool implements Tool {
  JsonFormatterTool();

  @override
  IconData get icon => Icons.data_object;

  @override
  String get homeTitle => "json_formatter".tr;

  @override
  String get route => Routes.jsonFormatter;

  @override
  Group get group => FormattersGroup();

  @override
  String get description => "json_formatter_description".tr;

  JsonFormatter get formatter => JsonFormatter();

  @override
  String get name => "jsonformat";

  @override
  String get menuTitle => "json_formatter_menu_name".tr;
}
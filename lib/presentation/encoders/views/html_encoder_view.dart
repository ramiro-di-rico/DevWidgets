import 'package:devtoys/domain/models/tools/encoders/conversion_mode.dart';
import 'package:devtoys/presentation/encoders/controllers/html_encoder_controller.dart';
import 'package:devtoys/presentation/widgets/helpers.dart';
import 'package:devtoys/presentation/widgets/io_editor.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:yaru_widgets/yaru_widgets.dart';

class HTMLEncoderView extends GetView<HTMLEncoderController> {
  const HTMLEncoderView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Text(
          controller.tool.name,
          style: const TextStyle(fontSize: 24),
        )),
        body: Container(
          height: Get.height - kToolbarHeight,
          child: ListView(
            children: [
              Container(
                margin: const EdgeInsets.all(8.0),
                child: YaruSection(headline: "configuration".tr, children: [
                  YaruRow(
                    enabled: true,
                    leadingWidget: Icon(FontAwesomeIcons.arrowRightArrowLeft),
                    trailingWidget: Padding(
                      child: ListTile(
                          title: Text("conversion".tr),
                          subtitle: Text("conversion_mode".tr)),
                      padding: const EdgeInsets.only(left: 8.0),
                    ),
                    actionWidget: Obx(
                      () => DropdownButton<ConversionMode>(
                          value: controller.conversionMode.value,
                          items: Helpers.getDropdownMenuItems<ConversionMode>(
                              ConversionMode.values),
                          onChanged: (selected) {
                            controller.conversionMode.value = selected;
                            controller.update();
                          }),
                    ),
                  )
                ]),
              ),
              Container(
                  height: Get.height / 1.2,
                  child: IOEditor(
                    inputController: controller.inputController,
                    outputController: controller.outputController,
                    isVerticalLayout: true,
                  )),
            ],
          ),
        ));
  }
}
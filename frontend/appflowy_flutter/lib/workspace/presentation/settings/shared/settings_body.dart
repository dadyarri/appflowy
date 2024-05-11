import 'package:flutter/material.dart';

import 'package:appflowy/workspace/presentation/settings/shared/settings_category_spacer.dart';
import 'package:appflowy/workspace/presentation/settings/shared/settings_header.dart';
import 'package:flowy_infra_ui/flowy_infra_ui.dart';

class SettingsBody extends StatelessWidget {
  const SettingsBody({
    super.key,
    required this.title,
    this.description,
    required this.children,
  });

  final String title;
  final String? description;
  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const ClampingScrollPhysics(),
      padding: const EdgeInsets.all(24),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SettingsHeader(title: title, description: description),
          Flexible(
            child: SeparatedColumn(
              separatorBuilder: () => const SettingsCategorySpacer(),
              crossAxisAlignment: CrossAxisAlignment.start,
              children: children,
            ),
          ),
        ],
      ),
    );
  }
}
import 'package:adb_tool/global/instance/global.dart';
import 'package:adb_tool/themes/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:global_repository/global_repository.dart';
import 'package:termare_pty/termare_pty.dart';

class TerminalPage extends StatelessWidget {
  const TerminalPage({Key key, this.enableInput = false}) : super(key: key);

  final bool enableInput;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.background,
        borderRadius: BorderRadius.circular(12.w),
        border: Border.all(
          color: Colors.black.withOpacity(0.1),
          width: 1.w,
        ),
      ),
      child: Material(
        color: Colors.transparent,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: TermarePty(
            enableInput: enableInput,
            controller: Global.instance.termareController..enableCursor(),
            pseudoTerminal: Global.instance.pseudoTerminal,
          ),
        ),
      ),
    );
  }
}

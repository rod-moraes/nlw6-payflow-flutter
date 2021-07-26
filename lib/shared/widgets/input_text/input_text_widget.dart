import 'package:flutter/material.dart';

import 'package:payflow/core/core.dart';

class InputTextWidget extends StatelessWidget {
  final String label;
  final IconData icon;
  final String? initialValue;
  final String? Function(String?)? validator;
  final TextEditingController? controller;
  final void Function(String value) onChanged;

  const InputTextWidget({
    Key? key,
    required this.label,
    required this.icon,
    this.initialValue,
    this.validator,
    this.controller,
    required this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16),
      child: Column(
        children: [
          TextFormField(
            controller: controller,
            onChanged: onChanged,
            validator: validator,
            initialValue: initialValue,
            style: AppTheme.textStyles.input,
            decoration: InputDecoration(
              contentPadding: EdgeInsets.zero,
              labelStyle: AppTheme.textStyles.input,
              labelText: label,
              border: InputBorder.none,
              icon: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 18),
                    child: Icon(icon, color: AppTheme.colors.primary),
                  ),
                  Container(
                      height: 48,
                      child: VerticalDivider(
                          width: 1,
                          thickness: 1,
                          color: AppTheme.colors.stroke))
                ],
              ),
            ),
          ),
          Divider(height: 1, thickness: 1, color: AppTheme.colors.stroke),
        ],
      ),
    );
  }
}

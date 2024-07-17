import 'package:flutter/material.dart';
import 'package:ritual_app/utils/utils.dart';

class AuthTermsWidget extends StatelessWidget {
  const AuthTermsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = l10nOf(context);

    return FormField<bool>(
      initialValue: false,
      validator: (value) {
        if (value != true) {
          return l10n.authUserTermsError;
        }
        return null;
      },
      builder: (FormFieldState<bool> state) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Checkbox(
                  value: state.value ?? false,
                  onChanged: (value) {
                    state.didChange(value);
                  },
                  side: BorderSide(
                    color: state.hasError ? Colors.red : Colors.grey,
                    width: state.hasError ? 2 : 1,
                  ),
                ),
                Expanded(
                  child: Text(
                    l10n.authUserTerms,
                    style: Theme.of(context).textTheme.bodySmall?.copyWith(
                          color: state.hasError ? Colors.red : null,
                        ),
                  ),
                ),
              ],
            ),
            if (state.hasError)
              Padding(
                padding: const EdgeInsets.only(top: 8, left: 8),
                child: Text(
                  state.errorText!,
                  style: const TextStyle(color: Colors.red, fontSize: 12),
                ),
              ),
          ],
        );
      },
    );
  }
}

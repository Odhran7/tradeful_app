import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';

class CountryCodeWidget extends StatelessWidget {
  const CountryCodeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const CountryCodePicker(
      flagWidth: 25,
      padding: EdgeInsets.all(0),
      onChanged: print,
      initialSelection: 'IE',
      favorite: ['+353', 'IE'],
      showCountryOnly: false,
      // optional. Shows only country name and flag when popup is closed.
      showOnlyCountryWhenClosed: false,
      alignLeft: false,
    );
  }
}

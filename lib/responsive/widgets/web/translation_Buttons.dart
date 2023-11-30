import 'package:flutter/cupertino.dart';

import 'language_text.dart';

class TranslationButtons extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15.0),
      child: Wrap(alignment: WrapAlignment.center,
        children:
      [Text("Google Offered in:"),
        LanguageText(title: "हिन्दी",),
        LanguageText(title: "বাংলা"),
        LanguageText(title: "తెలుగు"),
        LanguageText(title: "मराठी"),
        LanguageText(title: "தமிழ்"),
        LanguageText(title: "ગુજરાતી"),
        LanguageText(title: "ಕನ್ನಡ"),
        LanguageText(title: "മലയാളം"),
        LanguageText(title: "ਪੰਜਾਬੀ")],
        ),
    );
  }
}
import 'package:flutter/cupertino.dart';
import 'package:movies_app/core/widgets/buttons/imdb_logo_button.dart';

class ShortMediaStringData {
  const ShortMediaStringData({
    required this.imdbRating,
    required this.additionalInfo,
  });

  final double imdbRating;

  final List<String> additionalInfo;
}

class ShortMediaInfoString extends StatelessWidget {
  const ShortMediaInfoString({
    super.key,
    required this.data,
  });

  final ShortMediaStringData data;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ImdbLogoButton(onPressed: () {}),
        Text(data.imdbRating.toStringAsFixed(1)),
        if (data.additionalInfo.isNotEmpty) const Text('  ·  '),
        for (int i = 0; i < data.additionalInfo.length; i++) ...{
          Text(data.additionalInfo[i]),
          if (i + 1 != data.additionalInfo.length) ...{
            const Text('  ·  '),
          },
        },
      ],
    );
  }
}

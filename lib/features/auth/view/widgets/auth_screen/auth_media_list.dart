import 'package:flutter/cupertino.dart';
import 'package:movies_app/core/widgets/responsive/responsive_mixin.dart';
import 'package:movies_app/features/auth/view/widgets/auth_screen/auth_media_card.dart';

class AuthMediaList extends StatelessWidget with Responsive<double> {
  const AuthMediaList({
    super.key,
  });

  @override
  double get small => 200;

  @override
  double? get medium => 300;

  @override
  double? get large => 400;

  @override
  double? get xlarge => 500;

  @override
  Widget build(BuildContext context) {
    final res = responsive(context);

    final double height = MediaQuery.of(context).size.height;

    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 50,
        vertical: height * 0.008,
      ),
      child: SizedBox(
        height: res,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AuthMediaCard(
              title: 'Movies',
              poster: '/vpnVM9B6NMmQpWeZvzLvDESb2QY.jpg',
            ),
            if (res != small) ...{
              AuthMediaCard(
                poster: '/b33nnKl1GSFbao4l3fZDDqsMx0F.jpg',
              ),
            },
            AuthMediaCard(
              title: 'TV Shows',
              poster: '/qnaIFI2CkH1UQrGtVbSUqlSNFwX.jpg',
            ),
            if (res != small) ...{
              AuthMediaCard(
                poster: '/wMD1rnBwYAUe12JT6NHYaguXofs.jpg',
              ),
            },
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:nasa_pod/generated/l10n.dart';

class PodErrorWidget extends StatelessWidget {
  const PodErrorWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        S.of(context).fetchingError,
      ),
    );
  }
}

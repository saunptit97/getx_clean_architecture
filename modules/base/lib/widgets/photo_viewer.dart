import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:photo_view/photo_view.dart';

class PhotoViewer extends StatelessWidget {
  const PhotoViewer({super.key, this.url, this.imageProvider});
  final String? url;
  final ImageProvider? imageProvider;
  @override
  Widget build(BuildContext context) {
    return PhotoView(
      imageProvider: url != null
          ? CachedNetworkImageProvider(
              url!,
            )
          : imageProvider,
      loadingBuilder: (context, event) => const Center(
        child: SizedBox(
          width: 20.0,
          height: 20.0,
          child: CircularProgressIndicator(),
        ),
      ),
    );
  }
}

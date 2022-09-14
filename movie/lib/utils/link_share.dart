
import 'package:share_plus/share_plus.dart';

void shareTrailerLink(String movieName, String trailerName, String url){
  Share.share(
    // 'Check this trailer out for $movieName - $trailerName $youtubeUrl',
      url
  );
}
import 'package:flutter/material.dart';

class DetailsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final movie = ModalRoute.of(context)!.settings.arguments as Map;

    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        foregroundColor: Colors.white,
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(
          movie['name'] ?? 'No data',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (movie['image'] != null)
              Container(
                alignment: Alignment.center,
                child: Image.network(
                  movie['image']['original'] ?? '',
                  width: 180,
                  height: 320,
                  fit: BoxFit.cover,
                ),
              ),
              /*Padding(
                padding: const EdgeInsets.all(16.0),
                child: Card(
                  elevation: 8.0,
                  shadowColor: Colors.black54,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: AspectRatio(
                      aspectRatio: movie['image']['original'] != null ? 3 / 4 : 16 / 9,
                      child: Image.network(
                        movie['image']['original'] ?? '',
                        width: 100,
                        height: 300,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ),*/
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    movie['name'] ?? 'No data',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Language: ${movie['language'] ?? 'No data'}',
                    style: TextStyle(color: Colors.white70, fontSize: 16),
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Genres: ${movie['genres'] != null && movie['genres'].isNotEmpty ? movie['genres'].join(', ') : 'No data'}',
                    style: TextStyle(color: Colors.white70, fontSize: 16),
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Status: ${movie['status'] ?? 'No data'}',
                    style: TextStyle(color: Colors.white70, fontSize: 16),
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Runtime: ${movie['runtime'] != null ? '${movie['runtime']} mins' : 'No data'}',
                    style: TextStyle(color: Colors.white70, fontSize: 16),
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Premiered: ${movie['premiered'] ?? 'No data'}',
                    style: TextStyle(color: Colors.white70, fontSize: 16),
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Ended: ${movie['ended'] ?? 'No data'}',
                    style: TextStyle(color: Colors.white70, fontSize: 16),
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Rating: ${movie['rating'] != null && movie['rating']['average'] != null ? movie['rating']['average'].toString() : 'No data'}',
                    style: TextStyle(color: Colors.white70, fontSize: 16),
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Timing: ${movie['schedule'] != null && movie['schedule']['time'] != '' ? movie['schedule']['time'] : 'No data'}',
                    style: TextStyle(color: Colors.white70, fontSize: 16),
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Network: ${movie['network'] != null ? movie['network']['name'] : movie['webChannel'] != null ? movie['webChannel']['name'] : 'No data'}',
                    style: TextStyle(color: Colors.white70, fontSize: 16),
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Country: ${movie['network'] != null && movie['network']['country'] != null ? movie['network']['country']['name'] : movie['webChannel'] != null && movie['webChannel']['country'] != null ? movie['webChannel']['country']['name'] : 'No data'}',
                    style: TextStyle(color: Colors.white70, fontSize: 16),
                  ),
                  SizedBox(height: 8),
                  GestureDetector(
                    onTap: movie['externals'] != null && movie['externals']['imdb'] != null
                        ? () {
                      // Logic to open IMDb link
                    }
                        : null,
                    child: Text(
                      'IMDb: ${movie['externals'] != null && movie['externals']['imdb'] != null ? 'https://www.imdb.com/title/${movie['externals']['imdb']}' : 'No data'}',
                      style: TextStyle(color: Colors.blueAccent, fontSize: 16, decoration: TextDecoration.underline),
                    ),
                  ),
                  SizedBox(height: 20),
                  Text(
                    'Summary',
                    style: TextStyle(
                      color: Colors.white70,
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    movie['summary'] != null
                        ? movie['summary'].replaceAll(RegExp(r'<[^>]*>'), '')
                        : 'No summary available.',
                    style: TextStyle(
                      color: Colors.white70,
                      fontSize: 14,
                      height: 1.4,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}

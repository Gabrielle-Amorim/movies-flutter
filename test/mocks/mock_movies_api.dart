class MockMoviesApi {
  static Map<String, dynamic> popularMoviesMock = {
    "page": 1,
    "results": [
      {
        "adult": false,
        "backdrop_path": "/qrGtVFxaD8c7et0jUtaYhyTzzPg.jpg",
        "genre_ids": [28, 878, 12],
        "id": 823464,
        "original_language": "en",
        "original_title": "Godzilla x Kong: The New Empire",
        "overview":
            "Following their explosive showdown, Godzilla and Kong must reunite against a colossal undiscovered threat hidden within our world, challenging their very existence – and our own.",
        "popularity": 1818.259,
        "poster_path": "/tMefBSflR6PGQLv7WvFPpKLZkyk.jpg",
        "release_date": "2024-03-27",
        "title": "Godzilla x Kong: The New Empire",
        "video": false,
        "vote_average": 6.507,
        "vote_count": 910
      },
    ]
  };
  static Map<String, dynamic> movieById = {
    "adult": false,
    "backdrop_path": "/qrGtVFxaD8c7et0jUtaYhyTzzPg.jpg",
    "belongs_to_collection": {
      "id": 1280074,
      "name": "Kong Collection",
      "poster_path": "/lhyEUeOihbKf7ll8RCIE5CHTie3.jpg",
      "backdrop_path": null
    },
    "budget": 150000000,
    "genres": [
      {"id": 28, "name": "Action"},
      {"id": 878, "name": "Science Fiction"},
      {"id": 12, "name": "Adventure"}
    ],
    "homepage": "https://www.godzillaxkongmovie.com",
    "id": 823464,
    "imdb_id": "tt14539740",
    "origin_country": ["US"],
    "original_language": "en",
    "original_title": "Godzilla x Kong: The New Empire",
    "overview":
        "Following their explosive showdown, Godzilla and Kong must reunite against a colossal undiscovered threat hidden within our world, challenging their very existence – and our own.",
    "popularity": 1818.259,
    "poster_path": "/tMefBSflR6PGQLv7WvFPpKLZkyk.jpg",
    "production_companies": [
      {
        "id": 923,
        "logo_path": "/8M99Dkt23MjQMTTWukq4m5XsEuo.png",
        "name": "Legendary Pictures",
        "origin_country": "US"
      }
    ],
    "production_countries": [
      {"iso_3166_1": "US", "name": "United States of America"}
    ],
    "release_date": "2024-03-27",
    "revenue": 522503756,
    "runtime": 115,
    "spoken_languages": [
      {"english_name": "English", "iso_639_1": "en", "name": "English"}
    ],
    "status": "Released",
    "tagline": "Rise together or fall alone.",
    "title": "Godzilla x Kong: The New Empire",
    "video": false,
    "vote_average": 6.508,
    "vote_count": 910
  };
  static Map<String, dynamic> genres = {
    "genres": [
      {"id": 28, "name": "Action"},
      {"id": 12, "name": "Adventure"},
      {"id": 16, "name": "Animation"},
      {"id": 35, "name": "Comedy"},
      {"id": 80, "name": "Crime"},
      {"id": 99, "name": "Documentary"},
      {"id": 18, "name": "Drama"},
      {"id": 10751, "name": "Family"},
      {"id": 14, "name": "Fantasy"},
      {"id": 36, "name": "History"},
      {"id": 27, "name": "Horror"},
      {"id": 10402, "name": "Music"},
      {"id": 9648, "name": "Mystery"},
      {"id": 10749, "name": "Romance"},
      {"id": 878, "name": "Science Fiction"},
      {"id": 10770, "name": "TV Movie"},
      {"id": 53, "name": "Thriller"},
      {"id": 10752, "name": "War"},
      {"id": 37, "name": "Western"}
    ]
  };
}

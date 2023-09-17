class GetMoviesResponse {
  List<Docs>? docs;
  int? total;
  int? limit;
  int? page;
  int? pages;

  GetMoviesResponse({this.docs, this.total, this.limit, this.page, this.pages});

  GetMoviesResponse.fromJson(Map<String, dynamic> json) {
    if (json['docs'] != null) {
      docs = <Docs>[];
      json['docs'].forEach((v) {
        docs!.add(new Docs.fromJson(v));
      });
    }
    total = json['total'];
    limit = json['limit'];
    page = json['page'];
    pages = json['pages'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.docs != null) {
      data['docs'] = this.docs!.map((v) => v.toJson()).toList();
    }
    data['total'] = this.total;
    data['limit'] = this.limit;
    data['page'] = this.page;
    data['pages'] = this.pages;
    return data;
  }
}

class Docs {
  ExternalId? externalId;
  Rating? rating;
  Votes? votes;
  int? movieLength;
  int? id;
  String? type;
  String? name;
  String? description;
  int? year;
  Poster? poster;
  List<Genres>? genres;
  String? alternativeName;
  String? enName;
  List<Names>? names;
  String? shortDescription;
  Logo? logo;
  Watchability? watchability;

  Docs(
      {this.externalId,
        this.rating,
        this.votes,
        this.movieLength,
        this.id,
        this.type,
        this.name,
        this.description,
        this.year,
        this.poster,
        this.genres,
        this.alternativeName,
        this.enName,
        this.names,
        this.shortDescription,
        this.logo,
        this.watchability});

  Docs.fromJson(Map<String, dynamic> json) {
    externalId = json['externalId'] != null
        ? new ExternalId.fromJson(json['externalId'])
        : null;
    rating =
    json['rating'] != null ? new Rating.fromJson(json['rating']) : null;
    votes = json['votes'] != null ? new Votes.fromJson(json['votes']) : null;
    movieLength = json['movieLength'];
    id = json['id'];
    type = json['type'];
    name = json['name'];
    description = json['description'];
    year = json['year'];
    poster =
    json['poster'] != null ? new Poster.fromJson(json['poster']) : null;
    if (json['genres'] != null) {
      genres = <Genres>[];
      json['genres'].forEach((v) {
        genres!.add(new Genres.fromJson(v));
      });
    }
    alternativeName = json['alternativeName'];
    enName = json['enName'];
    if (json['names'] != null) {
      names = <Names>[];
      json['names'].forEach((v) {
        names!.add(new Names.fromJson(v));
      });
    }
    shortDescription = json['shortDescription'];
    logo = json['logo'] != null ? new Logo.fromJson(json['logo']) : null;
    watchability = json['watchability'] != null
        ? new Watchability.fromJson(json['watchability'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.externalId != null) {
      data['externalId'] = this.externalId!.toJson();
    }
    if (this.rating != null) {
      data['rating'] = this.rating!.toJson();
    }
    if (this.votes != null) {
      data['votes'] = this.votes!.toJson();
    }
    data['movieLength'] = this.movieLength;
    data['id'] = this.id;
    data['type'] = this.type;
    data['name'] = this.name;
    data['description'] = this.description;
    data['year'] = this.year;
    if (this.poster != null) {
      data['poster'] = this.poster!.toJson();
    }
    if (this.genres != null) {
      data['genres'] = this.genres!.map((v) => v.toJson()).toList();
    }
    data['alternativeName'] = this.alternativeName;
    data['enName'] = this.enName;
    if (this.names != null) {
      data['names'] = this.names!.map((v) => v.toJson()).toList();
    }
    data['shortDescription'] = this.shortDescription;
    if (this.logo != null) {
      data['logo'] = this.logo!.toJson();
    }
    if (this.watchability != null) {
      data['watchability'] = this.watchability!.toJson();
    }
    return data;
  }
}

class ExternalId {
  String? kpHD;
  String? imdb;
  int? tmdb;

  ExternalId({this.kpHD, this.imdb, this.tmdb});

  ExternalId.fromJson(Map<String, dynamic> json) {
    kpHD = json['kpHD'];
    imdb = json['imdb'];
    tmdb = json['tmdb'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['kpHD'] = this.kpHD;
    data['imdb'] = this.imdb;
    data['tmdb'] = this.tmdb;
    return data;
  }
}

class Rating {
  double? kp;
  double? imdb;
  double? filmCritics;
  num? russianFilmCritics;
  Null? await;

  Rating(
      {this.kp,
        this.imdb,
        this.filmCritics,
        this.russianFilmCritics,
        this.await});

  Rating.fromJson(Map<String, dynamic> json) {
    kp = json['kp'];
    imdb = json['imdb'];
    filmCritics = json['filmCritics'];
    russianFilmCritics = json['russianFilmCritics'];
    await = json['await'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['kp'] = this.kp;
    data['imdb'] = this.imdb;
    data['filmCritics'] = this.filmCritics;
    data['russianFilmCritics'] = this.russianFilmCritics;
    data['await'] = this.await;
    return data;
  }
}

class Votes {
  int? kp;
  int? imdb;
  int? filmCritics;
  int? russianFilmCritics;
  int? await;

  Votes(
      {this.kp,
        this.imdb,
        this.filmCritics,
        this.russianFilmCritics,
        this.await});

  Votes.fromJson(Map<String, dynamic> json) {
    kp = json['kp'];
    imdb = json['imdb'];
    filmCritics = json['filmCritics'];
    russianFilmCritics = json['russianFilmCritics'];
    await = json['await'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['kp'] = this.kp;
    data['imdb'] = this.imdb;
    data['filmCritics'] = this.filmCritics;
    data['russianFilmCritics'] = this.russianFilmCritics;
    data['await'] = this.await;
    return data;
  }
}

class Poster {
  String? url;
  String? previewUrl;

  Poster({this.url, this.previewUrl});

  Poster.fromJson(Map<String, dynamic> json) {
    url = json['url'];
    previewUrl = json['previewUrl'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['url'] = this.url;
    data['previewUrl'] = this.previewUrl;
    return data;
  }
}

class Genres {
  String? name;

  Genres({this.name});

  Genres.fromJson(Map<String, dynamic> json) {
    name = json['name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    return data;
  }
}

class Names {
  String? name;
  String? language;
  String? type;

  Names({this.name, this.language, this.type});

  Names.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    language = json['language'];
    type = json['type'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['language'] = this.language;
    data['type'] = this.type;
    return data;
  }
}

class Logo {
  String? url;

  Logo({this.url});

  Logo.fromJson(Map<String, dynamic> json) {
    url = json['url'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['url'] = this.url;
    return data;
  }
}

class Watchability {
  List<Items>? items;

  Watchability({this.items});

  Watchability.fromJson(Map<String, dynamic> json) {
    if (json['items'] != null) {
      items = <Items>[];
      json['items'].forEach((v) {
        items!.add(new Items.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.items != null) {
      data['items'] = this.items!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Items {
  String? name;
  Logo? logo;
  String? url;

  Items({this.name, this.logo, this.url});

  Items.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    logo = json['logo'] != null ? new Logo.fromJson(json['logo']) : null;
    url = json['url'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    if (this.logo != null) {
      data['logo'] = this.logo!.toJson();
    }
    data['url'] = this.url;
    return data;
  }
}

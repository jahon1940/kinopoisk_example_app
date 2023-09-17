class GetSearchResponse {
  List<MovieDocs>? docs;
  int? total;
  int? limit;
  int? page;
  int? pages;

  GetSearchResponse({this.docs, this.total, this.limit, this.page, this.pages});

  GetSearchResponse.fromJson(Map<String, dynamic> json) {
    if (json['docs'] != null) {
      docs = <MovieDocs>[];
      json['docs'].forEach((v) {
        docs!.add(new MovieDocs.fromJson(v));
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

class MovieDocs {
  int? id;
  String? name;
  String? alternativeName;
  String? enName;
  List<String>? names;
  String? type;
  int? year;
  String? description;
  String? shortDescription;
  String? logo;
  String? poster;
  String? backdrop;
  double? rating;
  int? votes;
  int? movieLength;
  List<String>? genres;
  List<String>? countries;
  List<Null>? releaseYears;

  MovieDocs(
      {this.id,
        this.name,
        this.alternativeName,
        this.enName,
        this.names,
        this.type,
        this.year,
        this.description,
        this.shortDescription,
        this.logo,
        this.poster,
        this.backdrop,
        this.rating,
        this.votes,
        this.movieLength,
        this.genres,
        this.countries,
        this.releaseYears});

  MovieDocs.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    alternativeName = json['alternativeName'];
    enName = json['enName'];
    names = json['names'].cast<String>();
    type = json['type'];
    year = json['year'];
    description = json['description'];
    shortDescription = json['shortDescription'];
    logo = json['logo'];
    poster = json['poster'];
    backdrop = json['backdrop'];
    rating = json['rating'];
    votes = json['votes'];
    movieLength = json['movieLength'];
    genres = json['genres'].cast<String>();
    countries = json['countries'].cast<String>();
    if (json['releaseYears'] != null) {
      releaseYears = <Null>[];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['alternativeName'] = this.alternativeName;
    data['enName'] = this.enName;
    data['names'] = this.names;
    data['type'] = this.type;
    data['year'] = this.year;
    data['description'] = this.description;
    data['shortDescription'] = this.shortDescription;
    data['logo'] = this.logo;
    data['poster'] = this.poster;
    data['backdrop'] = this.backdrop;
    data['rating'] = this.rating;
    data['votes'] = this.votes;
    data['movieLength'] = this.movieLength;
    data['genres'] = this.genres;
    data['countries'] = this.countries;
    return data;
  }
}

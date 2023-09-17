class GetMovieResponse {
  Fees? fees;
  Null? status;
  ExternalId? externalId;
  Rating? rating;
  Votes? votes;
  Backdrop? backdrop;
  int? movieLength;
  Images? images;
  List<ProductionCompanies>? productionCompanies;
  List<SpokenLanguages>? spokenLanguages;
  int? id;
  String? type;
  String? name;
  String? description;
  Distributors? distributors;
  Premiere? premiere;
  String? slogan;
  int? year;
  World? budget;
  Backdrop? poster;
  List<Facts>? facts;
  List<Genres>? genres;
  Videos? videos;
  List<Null>? seasonsInfo;
  List<Persons>? persons;
  List<Null>? lists;
  int? typeNumber;
  String? alternativeName;
  String? enName;
  List<Names>? names;
  List<SimilarMovies>? similarMovies;
  String? updatedAt;
  ImagesInfo? imagesInfo;
  List<Null>? sequelsAndPrequels;
  String? ratingMpaa;
  String? shortDescription;
  Technology? technology;
  bool? ticketsOnSale;
  int? ageRating;
  Logo? logo;
  Watchability? watchability;
  Null? top10;
  int? top250;
  List<Audience>? audience;
  Null? deletedAt;
  bool? isSeries;
  Null? seriesLength;
  Null? totalSeriesLength;

  GetMovieResponse(
      {this.fees,
        this.status,
        this.externalId,
        this.rating,
        this.votes,
        this.backdrop,
        this.movieLength,
        this.images,
        this.productionCompanies,
        this.spokenLanguages,
        this.id,
        this.type,
        this.name,
        this.description,
        this.distributors,
        this.premiere,
        this.slogan,
        this.year,
        this.budget,
        this.poster,
        this.facts,
        this.genres,
        this.videos,
        this.seasonsInfo,
        this.persons,
        this.lists,
        this.typeNumber,
        this.alternativeName,
        this.enName,
        this.names,
        this.similarMovies,
        this.updatedAt,
        this.imagesInfo,
        this.sequelsAndPrequels,
        this.ratingMpaa,
        this.shortDescription,
        this.technology,
        this.ticketsOnSale,
        this.ageRating,
        this.logo,
        this.watchability,
        this.top10,
        this.top250,
        this.audience,
        this.deletedAt,
        this.isSeries,
        this.seriesLength,
        this.totalSeriesLength});

  GetMovieResponse.fromJson(Map<String, dynamic> json) {
    fees = json['fees'] != null ? new Fees.fromJson(json['fees']) : null;
    status = json['status'];
    externalId = json['externalId'] != null
        ? new ExternalId.fromJson(json['externalId'])
        : null;
    rating =
    json['rating'] != null ? new Rating.fromJson(json['rating']) : null;
    votes = json['votes'] != null ? new Votes.fromJson(json['votes']) : null;
    backdrop = json['backdrop'] != null
        ? new Backdrop.fromJson(json['backdrop'])
        : null;
    movieLength = json['movieLength'];
    images =
    json['images'] != null ? new Images.fromJson(json['images']) : null;
    if (json['productionCompanies'] != null) {
      productionCompanies = <ProductionCompanies>[];
      json['productionCompanies'].forEach((v) {
        productionCompanies!.add(new ProductionCompanies.fromJson(v));
      });
    }
    if (json['spokenLanguages'] != null) {
      spokenLanguages = <SpokenLanguages>[];
      json['spokenLanguages'].forEach((v) {
        spokenLanguages!.add(new SpokenLanguages.fromJson(v));
      });
    }
    id = json['id'];
    type = json['type'];
    name = json['name'];
    description = json['description'];
    distributors = json['distributors'] != null
        ? new Distributors.fromJson(json['distributors'])
        : null;
    premiere = json['premiere'] != null
        ? new Premiere.fromJson(json['premiere'])
        : null;
    slogan = json['slogan'];
    year = json['year'];
    budget = json['budget'] != null ? new World.fromJson(json['budget']) : null;
    poster =
    json['poster'] != null ? new Backdrop.fromJson(json['poster']) : null;
    if (json['facts'] != null) {
      facts = <Facts>[];
      json['facts'].forEach((v) {
        facts!.add(new Facts.fromJson(v));
      });
    }
    if (json['genres'] != null) {
      genres = <Genres>[];
      json['genres'].forEach((v) {
        genres!.add(new Genres.fromJson(v));
      });
    }

    videos =
    json['videos'] != null ? new Videos.fromJson(json['videos']) : null;
    if (json['seasonsInfo'] != null) {
      seasonsInfo = <Null>[];

    }
    if (json['persons'] != null) {
      persons = <Persons>[];
      json['persons'].forEach((v) {
        persons!.add(new Persons.fromJson(v));
      });
    }
    if (json['lists'] != null) {
      lists = <Null>[];
    }
    typeNumber = json['typeNumber'];
    alternativeName = json['alternativeName'];
    enName = json['enName'];
    if (json['names'] != null) {
      names = <Names>[];
      json['names'].forEach((v) {
        names!.add(new Names.fromJson(v));
      });
    }
    if (json['similarMovies'] != null) {
      similarMovies = <SimilarMovies>[];
      json['similarMovies'].forEach((v) {
        similarMovies!.add(new SimilarMovies.fromJson(v));
      });
    }
    updatedAt = json['updatedAt'];
    imagesInfo = json['imagesInfo'] != null
        ? new ImagesInfo.fromJson(json['imagesInfo'])
        : null;
    if (json['sequelsAndPrequels'] != null) {
      sequelsAndPrequels = <Null>[];
    }
    ratingMpaa = json['ratingMpaa'];
    shortDescription = json['shortDescription'];
    technology = json['technology'] != null
        ? new Technology.fromJson(json['technology'])
        : null;
    ticketsOnSale = json['ticketsOnSale'];
    ageRating = json['ageRating'];
    logo = json['logo'] != null ? new Logo.fromJson(json['logo']) : null;
    watchability = json['watchability'] != null
        ? new Watchability.fromJson(json['watchability'])
        : null;
    top10 = json['top10'];
    top250 = json['top250'];
    if (json['audience'] != null) {
      audience = <Audience>[];
      json['audience'].forEach((v) {
        audience!.add(new Audience.fromJson(v));
      });
    }
    deletedAt = json['deletedAt'];
    isSeries = json['isSeries'];
    seriesLength = json['seriesLength'];
    totalSeriesLength = json['totalSeriesLength'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.fees != null) {
      data['fees'] = this.fees!.toJson();
    }
    data['status'] = this.status;
    if (this.externalId != null) {
      data['externalId'] = this.externalId!.toJson();
    }
    if (this.rating != null) {
      data['rating'] = this.rating!.toJson();
    }
    if (this.votes != null) {
      data['votes'] = this.votes!.toJson();
    }
    if (this.backdrop != null) {
      data['backdrop'] = this.backdrop!.toJson();
    }
    data['movieLength'] = this.movieLength;
    if (this.images != null) {
      data['images'] = this.images!.toJson();
    }
    if (this.productionCompanies != null) {
      data['productionCompanies'] =
          this.productionCompanies!.map((v) => v.toJson()).toList();
    }
    if (this.spokenLanguages != null) {
      data['spokenLanguages'] =
          this.spokenLanguages!.map((v) => v.toJson()).toList();
    }
    data['id'] = this.id;
    data['type'] = this.type;
    data['name'] = this.name;
    data['description'] = this.description;
    if (this.distributors != null) {
      data['distributors'] = this.distributors!.toJson();
    }
    if (this.premiere != null) {
      data['premiere'] = this.premiere!.toJson();
    }
    data['slogan'] = this.slogan;
    data['year'] = this.year;
    if (this.budget != null) {
      data['budget'] = this.budget!.toJson();
    }
    if (this.poster != null) {
      data['poster'] = this.poster!.toJson();
    }
    if (this.facts != null) {
      data['facts'] = this.facts!.map((v) => v.toJson()).toList();
    }
    if (this.genres != null) {
      data['genres'] = this.genres!.map((v) => v.toJson()).toList();
    }
    if (this.videos != null) {
      data['videos'] = this.videos!.toJson();
    }
    if (this.persons != null) {
      data['persons'] = this.persons!.map((v) => v.toJson()).toList();
    }
    data['typeNumber'] = this.typeNumber;
    data['alternativeName'] = this.alternativeName;
    data['enName'] = this.enName;
    if (this.names != null) {
      data['names'] = this.names!.map((v) => v.toJson()).toList();
    }
    if (this.similarMovies != null) {
      data['similarMovies'] =
          this.similarMovies!.map((v) => v.toJson()).toList();
    }
    data['updatedAt'] = this.updatedAt;
    if (this.imagesInfo != null) {
      data['imagesInfo'] = this.imagesInfo!.toJson();
    }
    data['ratingMpaa'] = this.ratingMpaa;
    data['shortDescription'] = this.shortDescription;
    if (this.technology != null) {
      data['technology'] = this.technology!.toJson();
    }
    data['ticketsOnSale'] = this.ticketsOnSale;
    data['ageRating'] = this.ageRating;
    if (this.logo != null) {
      data['logo'] = this.logo!.toJson();
    }
    if (this.watchability != null) {
      data['watchability'] = this.watchability!.toJson();
    }
    data['top10'] = this.top10;
    data['top250'] = this.top250;
    if (this.audience != null) {
      data['audience'] = this.audience!.map((v) => v.toJson()).toList();
    }
    data['deletedAt'] = this.deletedAt;
    data['isSeries'] = this.isSeries;
    data['seriesLength'] = this.seriesLength;
    data['totalSeriesLength'] = this.totalSeriesLength;
    return data;
  }
}

class Fees {
  World? world;
  World? russia;
  World? usa;

  Fees({this.world, this.russia, this.usa});

  Fees.fromJson(Map<String, dynamic> json) {
    world = json['world'] != null ? new World.fromJson(json['world']) : null;
    russia = json['russia'] != null ? new World.fromJson(json['russia']) : null;
    usa = json['usa'] != null ? new World.fromJson(json['usa']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.world != null) {
      data['world'] = this.world!.toJson();
    }
    if (this.russia != null) {
      data['russia'] = this.russia!.toJson();
    }
    if (this.usa != null) {
      data['usa'] = this.usa!.toJson();
    }
    return data;
  }
}

class World {
  int? value;
  String? currency;

  World({this.value, this.currency});

  World.fromJson(Map<String, dynamic> json) {
    value = json['value'];
    currency = json['currency'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['value'] = this.value;
    data['currency'] = this.currency;
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

class Backdrop {
  String? url;
  String? previewUrl;

  Backdrop({this.url, this.previewUrl});

  Backdrop.fromJson(Map<String, dynamic> json) {
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

class Images {
  int? postersCount;
  int? backdropsCount;
  int? framesCount;

  Images({this.postersCount, this.backdropsCount, this.framesCount});

  Images.fromJson(Map<String, dynamic> json) {
    postersCount = json['postersCount'];
    backdropsCount = json['backdropsCount'];
    framesCount = json['framesCount'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['postersCount'] = this.postersCount;
    data['backdropsCount'] = this.backdropsCount;
    data['framesCount'] = this.framesCount;
    return data;
  }
}

class ProductionCompanies {
  String? name;
  String? url;
  String? previewUrl;

  ProductionCompanies({this.name, this.url, this.previewUrl});

  ProductionCompanies.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    url = json['url'];
    previewUrl = json['previewUrl'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['url'] = this.url;
    data['previewUrl'] = this.previewUrl;
    return data;
  }
}

class SpokenLanguages {
  String? name;
  String? nameEn;

  SpokenLanguages({this.name, this.nameEn});

  SpokenLanguages.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    nameEn = json['nameEn'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['nameEn'] = this.nameEn;
    return data;
  }
}

class Distributors {
  String? distributor;
  String? distributorRelease;

  Distributors({this.distributor, this.distributorRelease});

  Distributors.fromJson(Map<String, dynamic> json) {
    distributor = json['distributor'];
    distributorRelease = json['distributorRelease'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['distributor'] = this.distributor;
    data['distributorRelease'] = this.distributorRelease;
    return data;
  }
}

class Premiere {
  String? world;
  String? russia;

  Premiere({this.world, this.russia});

  Premiere.fromJson(Map<String, dynamic> json) {
    world = json['world'];
    russia = json['russia'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['world'] = this.world;
    data['russia'] = this.russia;
    return data;
  }
}

class Facts {
  String? value;
  String? type;
  bool? spoiler;

  Facts({this.value, this.type, this.spoiler});

  Facts.fromJson(Map<String, dynamic> json) {
    value = json['value'];
    type = json['type'];
    spoiler = json['spoiler'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['value'] = this.value;
    data['type'] = this.type;
    data['spoiler'] = this.spoiler;
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

class Videos {
  List<Trailers>? trailers;
  List<Null>? teasers;

  Videos({this.trailers, this.teasers});

  Videos.fromJson(Map<String, dynamic> json) {
    if (json['trailers'] != null) {
      trailers = <Trailers>[];
      json['trailers'].forEach((v) {
        trailers!.add(new Trailers.fromJson(v));
      });
    }
    if (json['teasers'] != null) {
      teasers = <Null>[];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.trailers != null) {
      data['trailers'] = this.trailers!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Trailers {
  String? url;
  String? name;
  String? site;
  String? type;

  Trailers({this.url, this.name, this.site, this.type});

  Trailers.fromJson(Map<String, dynamic> json) {
    url = json['url'];
    name = json['name'];
    site = json['site'];
    type = json['type'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['url'] = this.url;
    data['name'] = this.name;
    data['site'] = this.site;
    data['type'] = this.type;
    return data;
  }
}

class Persons {
  int? id;
  String? photo;
  String? name;
  String? enName;
  String? description;
  String? profession;
  String? enProfession;

  Persons(
      {this.id,
        this.photo,
        this.name,
        this.enName,
        this.description,
        this.profession,
        this.enProfession});

  Persons.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    photo = json['photo'];
    name = json['name'];
    enName = json['enName'];
    description = json['description'];
    profession = json['profession'];
    enProfession = json['enProfession'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['photo'] = this.photo;
    data['name'] = this.name;
    data['enName'] = this.enName;
    data['description'] = this.description;
    data['profession'] = this.profession;
    data['enProfession'] = this.enProfession;
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

class SimilarMovies {
  int? id;
  String? name;
  Null? enName;
  String? alternativeName;
  String? type;
  Backdrop? poster;

  SimilarMovies(
      {this.id,
        this.name,
        this.enName,
        this.alternativeName,
        this.type,
        this.poster});

  SimilarMovies.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    enName = json['enName'];
    alternativeName = json['alternativeName'];
    type = json['type'];
    poster =
    json['poster'] != null ? new Backdrop.fromJson(json['poster']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['enName'] = this.enName;
    data['alternativeName'] = this.alternativeName;
    data['type'] = this.type;
    if (this.poster != null) {
      data['poster'] = this.poster!.toJson();
    }
    return data;
  }
}

class ImagesInfo {
  int? framesCount;

  ImagesInfo({this.framesCount});

  ImagesInfo.fromJson(Map<String, dynamic> json) {
    framesCount = json['framesCount'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['framesCount'] = this.framesCount;
    return data;
  }
}

class Technology {
  bool? hasImax;
  bool? has3D;

  Technology({this.hasImax, this.has3D});

  Technology.fromJson(Map<String, dynamic> json) {
    hasImax = json['hasImax'];
    has3D = json['has3D'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['hasImax'] = this.hasImax;
    data['has3D'] = this.has3D;
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

class Audience {
  int? count;
  String? country;

  Audience({this.count, this.country});

  Audience.fromJson(Map<String, dynamic> json) {
    count = json['count'];
    country = json['country'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['count'] = this.count;
    data['country'] = this.country;
    return data;
  }
}

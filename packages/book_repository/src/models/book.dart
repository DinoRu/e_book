// To parse this JSON data, do
//
//     final book = bookFromJson(jsonString);

import 'dart:convert';

Book bookFromJson(String str) => Book.fromJson(json.decode(str));

String bookToJson(Book data) => json.encode(data.toJson());

class Book {
  String? kind;
  int? totalItems;
  List<Item>? items;

  Book({
    this.kind,
    this.totalItems,
    this.items,
  });

  Book copyWith({
    String? kind,
    int? totalItems,
    List<Item>? items,
  }) =>
      Book(
        kind: kind ?? this.kind,
        totalItems: totalItems ?? this.totalItems,
        items: items ?? this.items,
      );

  factory Book.fromJson(Map<String, dynamic> json) => Book(
    kind: json["kind"],
    totalItems: json["totalItems"],
    items: json["items"] == null ? [] : List<Item>.from(json["items"]!.map((x) => Item.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "kind": kind,
    "totalItems": totalItems,
    "items": items == null ? [] : List<dynamic>.from(items!.map((x) => x.toJson())),
  };
}

class Item {
  String? kind;
  String? id;
  String? etag;
  String? selfLink;
  VolumeInfo? volumeInfo;
  SaleInfo? saleInfo;
  AccessInfo? accessInfo;
  SearchInfo? searchInfo;

  Item({
    this.kind,
    this.id,
    this.etag,
    this.selfLink,
    this.volumeInfo,
    this.saleInfo,
    this.accessInfo,
    this.searchInfo,
  });

  Item copyWith({
    String? kind,
    String? id,
    String? etag,
    String? selfLink,
    VolumeInfo? volumeInfo,
    SaleInfo? saleInfo,
    AccessInfo? accessInfo,
    SearchInfo? searchInfo,
  }) =>
      Item(
        kind: kind ?? this.kind,
        id: id ?? this.id,
        etag: etag ?? this.etag,
        selfLink: selfLink ?? this.selfLink,
        volumeInfo: volumeInfo ?? this.volumeInfo,
        saleInfo: saleInfo ?? this.saleInfo,
        accessInfo: accessInfo ?? this.accessInfo,
        searchInfo: searchInfo ?? this.searchInfo,
      );

  factory Item.fromJson(Map<String, dynamic> json) => Item(
    kind: json["kind"],
    id: json["id"],
    etag: json["etag"],
    selfLink: json["selfLink"],
    volumeInfo: json["volumeInfo"] == null ? null : VolumeInfo.fromJson(json["volumeInfo"]),
    saleInfo: json["saleInfo"] == null ? null : SaleInfo.fromJson(json["saleInfo"]),
    accessInfo: json["accessInfo"] == null ? null : AccessInfo.fromJson(json["accessInfo"]),
    searchInfo: json["searchInfo"] == null ? null : SearchInfo.fromJson(json["searchInfo"]),
  );

  Map<String, dynamic> toJson() => {
    "kind": kind,
    "id": id,
    "etag": etag,
    "selfLink": selfLink,
    "volumeInfo": volumeInfo?.toJson(),
    "saleInfo": saleInfo?.toJson(),
    "accessInfo": accessInfo?.toJson(),
    "searchInfo": searchInfo?.toJson(),
  };
}

class AccessInfo {
  String? country;
  String? viewability;
  bool? embeddable;
  bool? publicDomain;
  String? textToSpeechPermission;
  Epub? epub;
  Epub? pdf;
  String? webReaderLink;
  String? accessViewStatus;
  bool? quoteSharingAllowed;

  AccessInfo({
    this.country,
    this.viewability,
    this.embeddable,
    this.publicDomain,
    this.textToSpeechPermission,
    this.epub,
    this.pdf,
    this.webReaderLink,
    this.accessViewStatus,
    this.quoteSharingAllowed,
  });

  AccessInfo copyWith({
    String? country,
    String? viewability,
    bool? embeddable,
    bool? publicDomain,
    String? textToSpeechPermission,
    Epub? epub,
    Epub? pdf,
    String? webReaderLink,
    String? accessViewStatus,
    bool? quoteSharingAllowed,
  }) =>
      AccessInfo(
        country: country ?? this.country,
        viewability: viewability ?? this.viewability,
        embeddable: embeddable ?? this.embeddable,
        publicDomain: publicDomain ?? this.publicDomain,
        textToSpeechPermission: textToSpeechPermission ?? this.textToSpeechPermission,
        epub: epub ?? this.epub,
        pdf: pdf ?? this.pdf,
        webReaderLink: webReaderLink ?? this.webReaderLink,
        accessViewStatus: accessViewStatus ?? this.accessViewStatus,
        quoteSharingAllowed: quoteSharingAllowed ?? this.quoteSharingAllowed,
      );

  factory AccessInfo.fromJson(Map<String, dynamic> json) => AccessInfo(
    country: json["country"],
    viewability: json["viewability"],
    embeddable: json["embeddable"],
    publicDomain: json["publicDomain"],
    textToSpeechPermission: json["textToSpeechPermission"],
    epub: json["epub"] == null ? null : Epub.fromJson(json["epub"]),
    pdf: json["pdf"] == null ? null : Epub.fromJson(json["pdf"]),
    webReaderLink: json["webReaderLink"],
    accessViewStatus: json["accessViewStatus"],
    quoteSharingAllowed: json["quoteSharingAllowed"],
  );

  Map<String, dynamic> toJson() => {
    "country": country,
    "viewability": viewability,
    "embeddable": embeddable,
    "publicDomain": publicDomain,
    "textToSpeechPermission": textToSpeechPermission,
    "epub": epub?.toJson(),
    "pdf": pdf?.toJson(),
    "webReaderLink": webReaderLink,
    "accessViewStatus": accessViewStatus,
    "quoteSharingAllowed": quoteSharingAllowed,
  };
}

class Epub {
  bool? isAvailable;

  Epub({
    this.isAvailable,
  });

  Epub copyWith({
    bool? isAvailable,
  }) =>
      Epub(
        isAvailable: isAvailable ?? this.isAvailable,
      );

  factory Epub.fromJson(Map<String, dynamic> json) => Epub(
    isAvailable: json["isAvailable"],
  );

  Map<String, dynamic> toJson() => {
    "isAvailable": isAvailable,
  };
}

class SaleInfo {
  String? country;
  String? saleability;
  bool? isEbook;

  SaleInfo({
    this.country,
    this.saleability,
    this.isEbook,
  });

  SaleInfo copyWith({
    String? country,
    String? saleability,
    bool? isEbook,
  }) =>
      SaleInfo(
        country: country ?? this.country,
        saleability: saleability ?? this.saleability,
        isEbook: isEbook ?? this.isEbook,
      );

  factory SaleInfo.fromJson(Map<String, dynamic> json) => SaleInfo(
    country: json["country"],
    saleability: json["saleability"],
    isEbook: json["isEbook"],
  );

  Map<String, dynamic> toJson() => {
    "country": country,
    "saleability": saleability,
    "isEbook": isEbook,
  };
}

class SearchInfo {
  String? textSnippet;

  SearchInfo({
    this.textSnippet,
  });

  SearchInfo copyWith({
    String? textSnippet,
  }) =>
      SearchInfo(
        textSnippet: textSnippet ?? this.textSnippet,
      );

  factory SearchInfo.fromJson(Map<String, dynamic> json) => SearchInfo(
    textSnippet: json["textSnippet"],
  );

  Map<String, dynamic> toJson() => {
    "textSnippet": textSnippet,
  };
}

class VolumeInfo {
  String? title;
  List<String>? authors;
  String? publisher;
  String? publishedDate;
  String? description;
  List<IndustryIdentifier>? industryIdentifiers;
  ReadingModes? readingModes;
  int? pageCount;
  String? printType;
  List<String>? categories;
  String? maturityRating;
  bool? allowAnonLogging;
  String? contentVersion;
  PanelizationSummary? panelizationSummary;
  ImageLinks? imageLinks;
  String? language;
  String? previewLink;
  String? infoLink;
  String? canonicalVolumeLink;

  VolumeInfo({
    this.title,
    this.authors,
    this.publisher,
    this.publishedDate,
    this.description,
    this.industryIdentifiers,
    this.readingModes,
    this.pageCount,
    this.printType,
    this.categories,
    this.maturityRating,
    this.allowAnonLogging,
    this.contentVersion,
    this.panelizationSummary,
    this.imageLinks,
    this.language,
    this.previewLink,
    this.infoLink,
    this.canonicalVolumeLink,
  });

  VolumeInfo copyWith({
    String? title,
    List<String>? authors,
    String? publisher,
    String? publishedDate,
    String? description,
    List<IndustryIdentifier>? industryIdentifiers,
    ReadingModes? readingModes,
    int? pageCount,
    String? printType,
    List<String>? categories,
    String? maturityRating,
    bool? allowAnonLogging,
    String? contentVersion,
    PanelizationSummary? panelizationSummary,
    ImageLinks? imageLinks,
    String? language,
    String? previewLink,
    String? infoLink,
    String? canonicalVolumeLink,
  }) =>
      VolumeInfo(
        title: title ?? this.title,
        authors: authors ?? this.authors,
        publisher: publisher ?? this.publisher,
        publishedDate: publishedDate ?? this.publishedDate,
        description: description ?? this.description,
        industryIdentifiers: industryIdentifiers ?? this.industryIdentifiers,
        readingModes: readingModes ?? this.readingModes,
        pageCount: pageCount ?? this.pageCount,
        printType: printType ?? this.printType,
        categories: categories ?? this.categories,
        maturityRating: maturityRating ?? this.maturityRating,
        allowAnonLogging: allowAnonLogging ?? this.allowAnonLogging,
        contentVersion: contentVersion ?? this.contentVersion,
        panelizationSummary: panelizationSummary ?? this.panelizationSummary,
        imageLinks: imageLinks ?? this.imageLinks,
        language: language ?? this.language,
        previewLink: previewLink ?? this.previewLink,
        infoLink: infoLink ?? this.infoLink,
        canonicalVolumeLink: canonicalVolumeLink ?? this.canonicalVolumeLink,
      );

  factory VolumeInfo.fromJson(Map<String, dynamic> json) => VolumeInfo(
    title: json["title"],
    authors: json["authors"] == null ? [] : List<String>.from(json["authors"]!.map((x) => x)),
    publisher: json["publisher"],
    publishedDate: json["publishedDate"],
    description: json["description"],
    industryIdentifiers: json["industryIdentifiers"] == null ? [] : List<IndustryIdentifier>.from(json["industryIdentifiers"]!.map((x) => IndustryIdentifier.fromJson(x))),
    readingModes: json["readingModes"] == null ? null : ReadingModes.fromJson(json["readingModes"]),
    pageCount: json["pageCount"],
    printType: json["printType"],
    categories: json["categories"] == null ? [] : List<String>.from(json["categories"]!.map((x) => x)),
    maturityRating: json["maturityRating"],
    allowAnonLogging: json["allowAnonLogging"],
    contentVersion: json["contentVersion"],
    panelizationSummary: json["panelizationSummary"] == null ? null : PanelizationSummary.fromJson(json["panelizationSummary"]),
    imageLinks: json["imageLinks"] == null ? null : ImageLinks.fromJson(json["imageLinks"]),
    language: json["language"],
    previewLink: json["previewLink"],
    infoLink: json["infoLink"],
    canonicalVolumeLink: json["canonicalVolumeLink"],
  );

  Map<String, dynamic> toJson() => {
    "title": title,
    "authors": authors == null ? [] : List<dynamic>.from(authors!.map((x) => x)),
    "publisher": publisher,
    "publishedDate": publishedDate,
    "description": description,
    "industryIdentifiers": industryIdentifiers == null ? [] : List<dynamic>.from(industryIdentifiers!.map((x) => x.toJson())),
    "readingModes": readingModes?.toJson(),
    "pageCount": pageCount,
    "printType": printType,
    "categories": categories == null ? [] : List<dynamic>.from(categories!.map((x) => x)),
    "maturityRating": maturityRating,
    "allowAnonLogging": allowAnonLogging,
    "contentVersion": contentVersion,
    "panelizationSummary": panelizationSummary?.toJson(),
    "imageLinks": imageLinks?.toJson(),
    "language": language,
    "previewLink": previewLink,
    "infoLink": infoLink,
    "canonicalVolumeLink": canonicalVolumeLink,
  };
}

class ImageLinks {
  String? smallThumbnail;
  String? thumbnail;

  ImageLinks({
    this.smallThumbnail,
    this.thumbnail,
  });

  ImageLinks copyWith({
    String? smallThumbnail,
    String? thumbnail,
  }) =>
      ImageLinks(
        smallThumbnail: smallThumbnail ?? this.smallThumbnail,
        thumbnail: thumbnail ?? this.thumbnail,
      );

  factory ImageLinks.fromJson(Map<String, dynamic> json) => ImageLinks(
    smallThumbnail: json["smallThumbnail"],
    thumbnail: json["thumbnail"],
  );

  Map<String, dynamic> toJson() => {
    "smallThumbnail": smallThumbnail,
    "thumbnail": thumbnail,
  };
}

class IndustryIdentifier {
  String? type;
  String? identifier;

  IndustryIdentifier({
    this.type,
    this.identifier,
  });

  IndustryIdentifier copyWith({
    String? type,
    String? identifier,
  }) =>
      IndustryIdentifier(
        type: type ?? this.type,
        identifier: identifier ?? this.identifier,
      );

  factory IndustryIdentifier.fromJson(Map<String, dynamic> json) => IndustryIdentifier(
    type: json["type"],
    identifier: json["identifier"],
  );

  Map<String, dynamic> toJson() => {
    "type": type,
    "identifier": identifier,
  };
}

class PanelizationSummary {
  bool? containsEpubBubbles;
  bool? containsImageBubbles;

  PanelizationSummary({
    this.containsEpubBubbles,
    this.containsImageBubbles,
  });

  PanelizationSummary copyWith({
    bool? containsEpubBubbles,
    bool? containsImageBubbles,
  }) =>
      PanelizationSummary(
        containsEpubBubbles: containsEpubBubbles ?? this.containsEpubBubbles,
        containsImageBubbles: containsImageBubbles ?? this.containsImageBubbles,
      );

  factory PanelizationSummary.fromJson(Map<String, dynamic> json) => PanelizationSummary(
    containsEpubBubbles: json["containsEpubBubbles"],
    containsImageBubbles: json["containsImageBubbles"],
  );

  Map<String, dynamic> toJson() => {
    "containsEpubBubbles": containsEpubBubbles,
    "containsImageBubbles": containsImageBubbles,
  };
}

class ReadingModes {
  bool? text;
  bool? image;

  ReadingModes({
    this.text,
    this.image,
  });

  ReadingModes copyWith({
    bool? text,
    bool? image,
  }) =>
      ReadingModes(
        text: text ?? this.text,
        image: image ?? this.image,
      );

  factory ReadingModes.fromJson(Map<String, dynamic> json) => ReadingModes(
    text: json["text"],
    image: json["image"],
  );

  Map<String, dynamic> toJson() => {
    "text": text,
    "image": image,
  };
}



class TBaseResponse {
  Status? status;
  Pagination? pagination;
  List<TNews>? news;

  TBaseResponse({this.status, this.pagination, this.news});

  TBaseResponse.fromJson(Map<String, dynamic> json) {
    status =
    json['status'] != null ? Status.fromJson(json['status']) : null;
    pagination = json['pagination'] != null
        ? Pagination.fromJson(json['pagination'])
        : null;
    if (json['news'] != null) {
      news = <TNews>[];
      json['news'].forEach((v) {
        news!.add(TNews.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.status != null) {
      data['status'] = this.status!.toJson();
    }
    if (this.pagination != null) {
      data['pagination'] = this.pagination!.toJson();
    }
    if (this.news != null) {
      data['news'] = this.news!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Status {
  bool? success;
  int? code;
  String? message;

  Status({this.success, this.code, this.message});

  Status.fromJson(Map<String, dynamic> json) {
    success = json['success'];
    code = json['code'];
    message = json['message'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['success'] = this.success;
    data['code'] = this.code;
    data['message'] = this.message;
    return data;
  }
}

class Pagination {
  int? iTotalObjects;
  int? iItemsOnPage;
  int? iPerPages;
  int? iCurrentPage;
  int? iTotalPages;

  Pagination(
      {this.iTotalObjects,
        this.iItemsOnPage,
        this.iPerPages,
        this.iCurrentPage,
        this.iTotalPages});

  Pagination.fromJson(Map<String, dynamic> json) {
    iTotalObjects = json['i_total_objects'];
    iItemsOnPage = json['i_items_on_page'];
    iPerPages = json['i_per_pages'];
    iCurrentPage = json['i_current_page'];
    iTotalPages = json['i_total_pages'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['i_total_objects'] = this.iTotalObjects;
    data['i_items_on_page'] = this.iItemsOnPage;
    data['i_per_pages'] = this.iPerPages;
    data['i_current_page'] = this.iCurrentPage;
    data['i_total_pages'] = this.iTotalPages;
    return data;
  }
}

class TNews {
  int? pkIId;
  String? sTitle;
  String? sImage;
  String? sDescription;
  bool? bEnabled;
  String? dtCreatedDate;
  String? dtModifiedDate;
  Null? dtDeletedDate;

  TNews(
      {
         this.pkIId,
        this.sTitle,
        this.sImage,
        this.sDescription,
        this.bEnabled,
        this.dtCreatedDate,
        this.dtModifiedDate,
        this.dtDeletedDate});

  TNews.fromJson(Map<String, dynamic> json) {
    pkIId = json['pk_i_id'];
    sTitle = json['s_title'];
    sImage = json['s_image'];
    sDescription = json['s_description'];
    bEnabled = json['b_enabled'];
    dtCreatedDate = json['dt_created_date'];
    dtModifiedDate = json['dt_modified_date'];
    dtDeletedDate = json['dt_deleted_date'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['pk_i_id'] = this.pkIId;
    data['s_title'] = this.sTitle;
    data['s_image'] = this.sImage;
    data['s_description'] = this.sDescription;
    data['b_enabled'] = this.bEnabled;
    data['dt_created_date'] = this.dtCreatedDate;
    data['dt_modified_date'] = this.dtModifiedDate;
    data['dt_deleted_date'] = this.dtDeletedDate;
    return data;
  }
}






// class NewsModle {
//   final String s_newsImage;
//   final String s_title;
//   final String s_date;
//   NewsModle ({
//     required this.s_newsImage,
//     required this.s_title,
//     required this.s_date,
//   });
// }
// List<NewsModle> items = [
//   NewsModle(
//       s_newsImage: ('assets/images/one_coin.png'),
//       s_title:   'انتعاش في قيمة العملات الرقمية \n الرئيسية تمثلت بارتفاع كل من البيتكوين \n والاثيريوم وكاردانو',
//       s_date: '12/22/2018'),
//
//   NewsModle(
//       s_newsImage: ('assets/images/one_coin.png'),
//       s_title:   'انتعاش في قيمة العملات الرقمية \n الرئيسية تمثلت بارتفاع كل من البيتكوين \n والاثيريوم وكاردانو',
//       s_date: '12/22/2018'),
//   NewsModle(
//       s_newsImage: ('assets/images/one_coin.png'),
//       s_title:   'انتعاش في قيمة العملات الرقمية \n الرئيسية تمثلت بارتفاع كل من البيتكوين \n والاثيريوم وكاردانو',
//       s_date: '12/22/2018'),
//   NewsModle(
//       s_newsImage: ('assets/images/one_coin.png'),
//       s_title:   'انتعاش في قيمة العملات الرقمية \n الرئيسية تمثلت بارتفاع كل من البيتكوين \n والاثيريوم وكاردانو',
//       s_date: '12/22/2018'),
//   NewsModle(
//       s_newsImage: ('assets/images/one_coin.png'),
//       s_title:   'انتعاش في قيمة العملات الرقمية \n الرئيسية تمثلت بارتفاع كل من البيتكوين \n والاثيريوم وكاردانو',
//       s_date: '12/22/2018'),
//   NewsModle(
//       s_newsImage: ('assets/images/one_coin.png'),
//       s_title:   'انتعاش في قيمة العملات الرقمية \n الرئيسية تمثلت بارتفاع كل من البيتكوين \n والاثيريوم وكاردانو',
//       s_date: '12/22/2018'),
//   NewsModle(
//       s_newsImage: ('assets/images/one_coin.png'),
//       s_title:   'انتعاش في قيمة العملات الرقمية \n الرئيسية تمثلت بارتفاع كل من البيتكوين \n والاثيريوم وكاردانو',
//       s_date: '12/22/2018'),
//   NewsModle(
//       s_newsImage: ('assets/images/one_coin.png'),
//       s_title:   'انتعاش في قيمة العملات الرقمية \n الرئيسية تمثلت بارتفاع كل من البيتكوين \n والاثيريوم وكاردانو',
//       s_date: '12/22/2018'),
// ];
//

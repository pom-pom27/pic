class ImageModel {
  int id;
  String url;
  String title;

  ImageModel(this.id, this.url, this.title);

  ImageModel.fromJSON(Map<String, dynamic> json) {
    id = json["id"];
    url = json["url"];
    title = json['title'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};

    data['id'] = id;
    data['url'] = url;
    data['title'] = title;

    return data;
  }
}

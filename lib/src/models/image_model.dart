class ImageModel {
  int id;
  String url;
  String title;

  ImageModel(this.id, this.url, this.title);

  ImageModel.fromJson(Map<String, dynamic> parsedJson) {
    id = parsedJson['id'];
    url = parsedJson['url'];
    title = parsedJson['title'];
  }

  /* An alternative way to write a setter method.
  ImageModel.fromJson(Map<String, dynamic> parsedJson) :
    id = parsedJson['id'],
    url = parsedJson['url'],
    title = parsedJson['title'];
  */
}

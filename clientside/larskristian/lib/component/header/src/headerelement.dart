part of header.dart;

class HeaderElement {

  String src;
  String name;
  List<HeaderElement> elements;

  HeaderElement(this.src, this.name, this.elements);

  HeaderElement.fromJson(Map<String, dynamic> json) : 
    this(json['src'], json['name'], json['elements']);
  
  Map<String, dynamic> toJson() => <String, dynamic> {
    "src" : src,
    "name" : name,
    "elements": elements
  };

}

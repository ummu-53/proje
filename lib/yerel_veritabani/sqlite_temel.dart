class besinsqlite {
  int no;
  String _besinadi;
  String _ay;
  besinsqlite(this._besinadi, this._ay);

  besinsqlite.map(dynamic nsne) {
    this._besinadi=nsne["besinadi"];
    this._ay=nsne["ay"];
  }
  String get besinadi=>_besinadi;
  String get ay=>_ay;

  Map<String, dynamic> haritaYap(){
    var map=new Map<String, dynamic>();
    map["besinadi"]=_besinadi;
    map["ay"]=_ay;
    return map;
  }
  void numaraVer(int no){
    this.no=no;
  }
}
void main(){
  dynamic name;
  
  if(name is String){
    
  }
  else if (name is int){
    name.isEven;
  }

  String? sik = 'haesik';
  sik = null;

  if(sik != null){
    print(sik.length);
  }

  sik?.isNotEmpty;

  final y = 'w';
  final String x = 'aw';

  late final haesik;
  // late -> without Initialize

  const API = '1212123';
  // compile know value

}
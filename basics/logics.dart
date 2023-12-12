void if_condition(){
  var num = 1;
  if(num >= 5){
    print("The number is greater of equal to 5");
  }else if(num == 3 || num == 4){
    print("The number is not 5, the number is $num");
  }else if(num < 3 && num > 1){
    print("the number is 2");
  }else{
    print("No condition satisfied for the number");
  }
}


void main(){
  print("Dealing with logic with dart");
  if_condition();
}
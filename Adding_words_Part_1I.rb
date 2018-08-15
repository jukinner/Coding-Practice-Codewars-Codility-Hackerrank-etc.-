# This is the first part of this kata series. Second part is here and third part is here

# Add two English words together!

# Implement a class Arith (struct struct Arith{value : &'static str,} in Rust) such that

#   //javascript
#   var k = new Arith("three");
#   k.add("seven"); //this should return "ten"
#   //c++
#   Arith* k = new Arith("three");
#   k->add("seven"); //this should return string "ten"
#   //Rust
#   let c = Arith{value: "three"};
#   c.add("seven") // this should return &str "ten"
# Input - Will be between zero and ten and will always be in lower case

# Output - Word representation of the result of the addition. Should be in lower case



class Arith
  def initialize(number)
    @number = number
    @lookup = {0=>"zero",1=>"one",2=>"two",3=>"three",4=>"four",5=>"five",6=>"six",7=>"seven",8=>"eight",9=>"nine",
                    10=>"ten",11=>"eleven",12=>"twelve",13=>"thirteen",14=>"fourteen",15=>"fifteen",16=>"sixteen",
                     17=>"seventeen", 18=>"eighteen",19=>"nineteen",
                    20=>"twenty",30=>"thirty",40=>"forty",50=>"fifty",60=>"sixty",70=>"seventy",80=>"eighty",90=>"ninety"}.invert
  end
  
  def add (argument)
    return @lookup.invert.fetch((@lookup.fetch(@number)) + (@lookup.fetch(argument)))    
  end
end
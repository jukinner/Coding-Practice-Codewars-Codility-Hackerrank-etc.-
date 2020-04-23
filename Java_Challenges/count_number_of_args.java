

//first option-simple
class Arguments {
  public static int countArgs(Object... args) {
    return args.length;
	}
}

//use a for each loop
class Arguments {
  public static int countArgs(Object... args) {
  	int answer = 0;
  	for(Object a:args) {
  		answer++;
  	}
    return answer;
	}
}
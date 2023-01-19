public void setup() 
{
	String[] lines = loadStrings("words.txt");
	System.out.println("there are " + lines.length + " lines");
	for (int i = 0 ; i < lines.length; i++) 
	{
	  System.out.println(pigLatin(lines[i]));
	}
}
public void draw()
{
        //not used
}
public boolean isVowel(String x){
     return x.equals("a")||x.equals("e")||x.equals("i")||x.equals("o")||x.equals("u");
   } 
public int findFirstVowel(String word){

    for(int i = 0; i<word.length();i++){
      if (isVowel(word.substring(i,i+1)))
      return i;
    }
return -1;
}


    public String pigLatin(String sWord) {
        //precondition: sWord is a valid String of length greater than 0
        //postcondition: returns the pig latin equivalent of sWord
        // more code should go here
	    if(findFirstVowel(sWord) == -1) {
		    return sWord + "ay";
	    }
	    else if (sWord.substring(0,2).equalsIgnoreCase("qu")){
        return sWord.substring(2,sWord.length())+"quay";
      }
      else if(findFirstVowel(sWord)==0){
        return sWord + "way";
      }
      else
      {
        //case where begins with non-q consonant
	       while(!isVowel(sWord.substring(0,1))){
           sWord = sWord.substring(1,sWord.length())+sWord.substring(0,1);
         }
        return sWord+ "ay";
	    }
    }
}//end PigLatin class

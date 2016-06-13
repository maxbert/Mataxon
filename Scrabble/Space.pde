class BoardSpace{
  String getLet(){
    return "Error";
  }
  
  int getVal(){
    return 0;
  }
}


class Space extends BoardSpace{
  int modifier;
  boolean playable;
  boolean wholeWord;
  int getModifier(){return modifier;}
  boolean getPlayable(){return playable;}
  boolean getWholeWord(){
    return wholeWord;
  }

}

class BlankSpace extends Space{
  int modifier = 1;
  boolean playable = true;
  boolean wholeWord = false;
  String getLet(){
   return "BlankSpace";
  }
  int getModifier(){return modifier;}
  boolean getWholeWord(){
    return wholeWord;
  }
}

class DoubleLetter extends Space{
  int modifier = 2;
  boolean playable = true;
  boolean wholeWord = false;
    String getLet(){
   return "DoubleLetter";
  }
  int getModifier(){return modifier;}
  boolean getWholeWord(){
    return wholeWord;
  }
}

class TripleLetter extends Space{
    int modifier = 3;
  boolean playable = true;
  boolean wholeWord = false;
    String getLet(){
   return "TripleLetter";
  }
  int getModifier(){return modifier;}
  boolean getWholeWord(){
    return wholeWord;
  }
}

class TripleWord extends Space{
    int modifier = 3;
  boolean playable = true;
  boolean wholeWord = true;
    String getLet(){
   return "TripleWord";
  }
  int getModifier(){return modifier;}
  boolean getWholeWord(){
    return wholeWord;
  }
}
class StarSpace extends Space{
    int modifier = 2;
  boolean playable = true;
  boolean wholeWord = true;
    String getLet(){
   return "star";
  }
  int getModifier(){return modifier;}
  boolean getWholeWord(){
    return wholeWord;
  }
}

class DoubleWord extends Space{
    int modifier = 2;
  boolean playable = true;
  boolean wholeWord = true;
    String getLet(){
   return "DoubleWord";
  }
  int getModifier(){return modifier;}
  boolean getWholeWord(){
    return wholeWord;
  }
}
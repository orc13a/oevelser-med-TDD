import java.lang.reflect.Method;
import java.util.Arrays;

void compareBooleans(boolean a, boolean b, String nameOfTest){
  printTestResult(a==b,nameOfTest);
}

void compareInts(int a, int b, String nameOfTest){
   printTestResult(a==b,nameOfTest);
}

void largerInts(int a, int b, String nameOfTest){
   printTestResult(a<b,nameOfTest);
}


void compareFloats(float a, float b, String nameOfTest){
    printTestResult(a==b,nameOfTest);
}

void compareStrings(String a, String b, String nameOfTest){
    printTestResult(a.equals(b),nameOfTest);
}

void printTestResult(boolean result, String nameOfTest){
  if(result) println("SUCCES\t:\t" + nameOfTest); else println("FAILS\t:\t" + nameOfTest);
}

void enbleUnitTest(String testPrefix){
  println("-------------UNIT TEST " + testPrefix + "-----------------");
  String name="";
  //Alle metoder som starter med "test" bliver kørt automatisk
    try {
    Class s = this.getClass();
    Method[] methods = s.getMethods();
    for (Method method : methods)
      if (method.getName().contains(testPrefix)) {
         name = method.getName(); //<>//
        Method unitTest = s.getDeclaredMethod(name,null);
        // invokes the method at runtime
        unitTest.invoke(this);
      }
  }
  catch(Exception e) {
    println(name+":",e.getCause());
  }

}

import org.junit.runner.JUnitCore;
import org.junit.runner.Result;
import org.junit.runner.notification.Failure;

public class TestRunner {
   public static void main(String[] args) {
      Result result = JUnitCore.runClasses(TestA.class);
      for (Failure failure : result.getFailures()) {
         System.out.println("The failed test: " + failure.toString());
      }
      System.out.println("The number of tests run: " + result.getRunCount());
      System.out.println("The number of tests that failed during the run: " + result.getFailureCount());
      System.out.println("The result of tests: " + result.wasSuccessful());
   }
} 

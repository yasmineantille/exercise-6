package tools;

import cartago.Artifact;
import cartago.OPERATION;

/* TASK 2 - STEP 1
  Extend the implementation of the artifact that exploits the dweet.io API
*/
public class DweetArtifact extends Artifact {

  private final static String DWEET_ENDPOINT = "https://dweet.io/dweet/for/";

  public void init() {

  }

  @OPERATION
  public void dweet(String message, String agent) {
    System.out.println("Task 2 - Step 1: Implement the method dweet() of the DweetArtifact.");
  }
}

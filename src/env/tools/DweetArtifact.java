package tools;

import java.io.IOException;
import java.net.URI;
import java.net.http.HttpClient;
import java.net.http.HttpRequest;
import java.net.http.HttpResponse;

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
    // System.out.println("Task 2 - Step 1: Implement the method dweet() of the DweetArtifact.");
    String dweetEndpoint = DWEET_ENDPOINT + this.getCurrentOpAgentId().getAgentName();
    log("URL: " + dweetEndpoint);

    HttpClient client = HttpClient.newHttpClient();
    HttpRequest request = HttpRequest.newBuilder()
      .uri(URI.create(dweetEndpoint))
      .header("Content-Type", "application/json")
      .POST(HttpRequest.BodyPublishers.ofString("{\"text\" : \"" + message + "\"}"))
      .build();

      try {
        HttpResponse<String> response = client.send(request, HttpResponse.BodyHandlers.ofString());
        log("Dweet Response: " + response.body());
        if (response.statusCode() != 200) {
          failed("Dweet status code: " + response.statusCode());
        }
      } catch (IOException | InterruptedException e) {
        failed("Dweet could not be sent due to exception: " + e);
      }
  }
}

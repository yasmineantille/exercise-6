package tools;

import cartago.Artifact;
import cartago.OPERATION;

public class BlindsArtifact extends Artifact {

    public void init() {}

    @OPERATION
    public void blinds(String action, String agent) {
        log("Blinds action moved " + action + " performed by agent " + agent);
    }
}

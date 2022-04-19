package tools;

import cartago.Artifact;
import cartago.OPERATION;

public class LampArtifact extends Artifact {

    public void init() {}

    @OPERATION
    public void lamp(String action, String agent) {
        log("Lamp action " + action + " performed by by " + agent);
    }
}

/* Maria's blinds controller agent */

/*
  The agent believes that it can offer regulating the natural light
  for the task of waking up Maria
*/
available_offer(wake_up(maria), natural_light).


/* Initial goals */
!start.


/* Behavior for handling goal-achievement addition start */
@start
+!start : true
<-
  .print("Hello from blinds controller agent.").


/* TASK 3 - STEP 1
  Behavior for handling the belief addition cfp(Task)
  Implement the behavior for responding to Call For Proposals
  by sending a Propose with a natural_light offer.
*/
+cfp(Task)[source(Agent)] :
  available_offer(Task, Offer)
<-
  .print("Received CALL FOR PROPOSAL for task ", Task, " from ", Agent);
  .send(Agent, tell, proposal(natural_light)).
  // I guess to generalise this it would also be:
  // .send(Agent, tell, proposal(Offer)).

+acceptProposal(Offer)[source(Agent)] :
  true
<-
  .print("Accepted proposal ", Offer);
  makeArtifact("blinds", "tools.BlindsArtifact", [], BlindsId);
  blinds("up", "Blinds_Controller_Agent");
  .send(Agent, tell, informDone(Task)). // Where is informDone from?


/* Additional behaviors */
{ include("$jacamoJar/templates/common-cartago.asl") }
{ include("$jacamoJar/templates/common-moise.asl") }
{ include("$jacamoJar/templates/org-obedient.asl") }

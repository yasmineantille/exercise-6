/* Maria's lamp controller agent */

/*
  The agent believes that it can offer regulating the artificial light
  for the task of waking up Maria
*/
available_offer(wake_up(maria), artificial_light).


/* Initial goals */
!start.


/* Behavior for handling goal-achievement addition start */
@start
+!start : true
<-
  .print("Hello from lamp controller agent.").


/* TASK 3 - STEP 1
  Behavior for handling the belief addition cfp(Task)
  Implement the behavior for responding to Call For Proposals
  by sending a Propose with an artificial_light offer.
*/
+cfp(Task)[source(Agent)] :
  available_offer(Task, Offer)
<-
  .print("Received CALL FOR PROPOSAL for task ", Task, " from ", Agent);
  .send(Agent, tell, proposal(artificial_light)).
  // again, general version:
  // .send(Agent, tell, proposal(Offer)).

+acceptProposal(Task)[source(Agent)] :
  true
<-
  .print("Accepted proposal ", Offer);
  makeArtifact("lamp", "tools.LampArtifact", [], LampId);
  lamp("on", "Lamp_Controller_Agent");
  .send(Agent, tell, informDone(Task)).


/* Additional behaviors */
{ include("$jacamoJar/templates/common-cartago.asl") }
{ include("$jacamoJar/templates/common-moise.asl") }
{ include("$jacamoJar/templates/org-obedient.asl") }

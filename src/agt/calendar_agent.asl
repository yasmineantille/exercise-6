/* Maria's calendar agent that manages Maria's events.

/* Initial goals */
!start.

/* Behavior for handling goal-achievement addition start */
@start
+!start : true
<-
  .print("Hello from calendar agent.");
  .wait(6000);

  // The agent broadcasts that Maria has an upcoming meeting with David at 8AM.
  .broadcast(tell, upcoming_event("meeting with david",8)).


/* Additional behaviors */
{ include("$jacamoJar/templates/common-cartago.asl") }
{ include("$jacamoJar/templates/common-moise.asl") }
{ include("$jacamoJar/templates/org-obedient.asl") }

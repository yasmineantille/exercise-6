# Exercise 6: Interacting Agents on the Web

A template for an application implemented with the [JaCaMo 0.9](http://jacamo.sourceforge.net/?page_id=40) framework for programming Multi-Agent Systems (MAS).

### Project overview
```bash
├── exercise6.jcm # The configuration file of the JaCaMo application 
└── src
    ├── agt 
    │   ├── assistant_agent.asl # Assistant agent (part of): the user's assistant
    │   ├── calendar_agent.asl # Calendar agent: knows and manages the user's events (e.g. like being a wrapper for Goodle Calendar)
    │   ├── alarm_agent.asl # Alarm agent (part of): notifies the user
    │   ├── blinds_controller_agent.asl # Blinds controller agent (part of): regulates the level of natural light in the user's room.
    │   └── lamp_controller_agent.asl # Lamp controller agent (part of): regulates the level of natural light in the user's room.
    └── env
        └── tools
            └── DweetArtifact.java # A Dweet artifact (part of) that could be used by agents to send messages to the user’s friends using the dweet.io API.
```

### How to run the project
Run with [Gradle 7.4](https://gradle.org/): 
- MacOS and Linux: run the following command
- Windows: replace `./gradlew` with `gradlew.bat`

```shell
./gradlew mas
```

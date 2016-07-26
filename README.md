# Dockerized Apache OpenMeetings

Openmeetings video conference by Apache

## Versions:

3.1.1 -> latest

# Launching

You will need to open 2 ports:

- 5080 to get application
- 8081 for websockets

```bash
docker run -p 5080:5080 -p 8081:8081 odvinc/openmeetings:3.1.1
```
or
```
docker-compose up -d
```

Then open http://localhost:5080/openmeetings and proceed to the installation. You may connect external database as Mysql or Postgres if you don't want to use the internal database.

# Flash and Java

Unfortunately, OpenMeetings needs Flash to share webcam and Java web plugin to share desktop (only for the sender). On linux, you may installe `icedtea-web` package and use Firefox to be able to send desktop.



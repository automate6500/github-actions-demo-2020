FROM python:3.6

LABEL "com.github.actions.name"="Test"
LABEL "com.github.actions.description"="Run unit tests"
LABEL "com.github.actions.icon"="box"

ADD entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]

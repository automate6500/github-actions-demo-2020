FROM python:3.6

LABEL "com.github.actions.name"="Lint"
LABEL "com.github.actions.description"="Lint all python files"
LABEL "com.github.actions.icon"="code"


ADD entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]

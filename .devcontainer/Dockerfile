# [Choice] alpine,...
ARG VARIANT="alpine"
FROM erlang:${VARIANT}

ARG USERNAME=vscode
ARG USER_UID=1000
ARG USER_GID=$USER_UID

ENV DEBIAN_FRONTEND=noninteractive

RUN addgroup --gid $USER_GID $USERNAME \
    && adduser  -u $USER_UID -g $USER_GID -S $USERNAME
USER $USERNAME

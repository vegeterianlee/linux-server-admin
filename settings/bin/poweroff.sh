#!/bin/bash


# 서버 목록
SERVERS=("main" "server2" "server1")

# 실행할 명령
REMOTE_CMD="init0"

# 로그 함수
log() {
    echo "[`date +'%Y-%m-%d %H:%M:%S'`] $1"
}

# SSH 접속 및 명령 실행
for server in "${SERVERS[@]}"; do
    log "접속 시도: $server"
    if ssh "$server" "$REMOTE_CMD"; then
        log "성공: $server"
    else
        log "실패: $server"
    fi
    sleep 3
done

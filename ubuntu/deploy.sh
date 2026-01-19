#!/bin/bash


echo "1. 프로젝트 폴더로 이동"
# 스크립트 위치와 상관없이 프로젝트 루트 폴더로 이동합니다.
cd ~/workspace/todo-repository

echo "2. 최신 코드 pull"
git pull [cite: 82, 92]

echo "3. 기존 uvicorn 프로세스 종료"
# 8000 포트를 사용하는 프로세스를 종료합니다. [cite: 83, 92]
fuser -k 8000/tcp

echo "4. 서버 백그라운드 실행"
# uv를 사용하여 FastAPI를 백그라운드에서 실행합니다. [cite: 84, 92, 93]
nohup uv run uvicorn main:app --host 0.0.0.0 --port 8000 > /dev/null 2>&1 < /dev/null &

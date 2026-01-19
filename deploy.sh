
#!/bin/bash

echo "1. 프로젝트 폴더로 이동"
cd ~/workspace/todo-repository

echo "2. 최신 코드 pull"
git pull

echo "3. 기존 uvicorn 프로세스 종료"
fuser -k 8000/tcp

echo "4. 서버 백그라운드 실행"
nohup uv run uvicorn main:app --host 0.0.0.0 --port 8000 > /dev/null 2>&1 < /dev/null &

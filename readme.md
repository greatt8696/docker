###docker 기반 
###local server 구축

1. window 환경
    1. docker desktop 설치
       https://www.docker.com/products/docker-desktop/ 에서 설치

    2. WSL 환경 구성
        WSL 가 설치되어 있다면
        1. 윈도우키 + r => 실행창 
        2. 실행창에 powershell 입력
        3. wsl --install -d Ubuntu-20.04

        WSL 이 설치 되지 않았다면
        1. 오른쪽하단에 윈도우 버튼 (시작메뉴) => PowerShell => 관리자권한으로 실행
        2. dism.exe /online /enable-feature /featurename:Microsoft-Windows-Subsystem-Linux /all /norestart  입력
        3. wsl --install -d Ubuntu-20.04

    3. ubuntu 환경 설정
        1. 관리자이름 : local
        2. 비밀번호 : haru 

    4. ubuntu에 git 레파지토리 다운
       git clone https://github.com/greatt8696/docker.git

    5. 레파지토리로 이동
       cd ./docker
    
    6. docker 등 필수 프로그램 설치 및 기타 셋업
       sudo bash installDocker.sh

    7. 윈도우 docker 와 wsl ubuntu 간 docker 연결
       1. docker desktop 실행 
       2. 설정 이동 (오른쪽 상단)
       3. Resources 이동 (두번째 메뉴) 
       4. WSL integration 에서 ubuntu-20.04 스위치 ON 
       5. Apply & restart 클릭 (오른쪽 하단)
    
    8. docker-compose 몽고, redis 등 서버 배포
       sudo docker-compose up -d

    9. mongodb 레플리카셋 등록
       ubuntu 에 
       sudo bash ./mongodb/setReplica.sh


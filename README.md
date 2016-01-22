# maps
미마짱

먼저 캐논한테 권한 달라고 하세요

윈도우면 git 깔고 bash 띄운다음에 한 5줄 정도만 치면 올라갑니다.
일단 레포를 클론을 하고 폴더에 더 추가할 맵을 넣은담에 커밋을 하는게 안전할듯.

## 올리는 방법을 알려드릴게요.

1. 우선 git을 깔고(https://git-scm.com/), 걍 저장할 폴더 아무거나 만든 다음에 폴더에 우클릭으로 git bash here해서

2. git clone https://github.com/cannonmma/maps.git 하면 git 정보를 포함해서 여기 내용물이 폴더로 복사가 됩니다. (난 600kb/s 정도 나옴 -알타)

3. 그러면 배쉬 뜬거에 cd maps해서 들어간다음에 폴더 안에 올리고 싶은 맵 파일을 복붙하고

4. scx 확장자만 올리고 싶으면 git add **.scx (또는 다 올리고 싶으면 git add -A)
이런걸로 다 스테이징 한다음에 (올릴 파일을 git에 인식 시키는 거임)

5. git commit -m “남기고싶은말” 치면 추가된 내용의 스냅샷을 찍는대요
git push origin master 하면 올라감 와 끝













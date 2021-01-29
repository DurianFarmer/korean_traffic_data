# korean_traffic_data

### Link for the data
- sending you a link to downlaod data because some csv files are too large to update in github
- [LINK](https://1drv.ms/u/s!Ak88NozsEyAJhO8KuE4Dz5X6tcnnpw?e=YUzNgh)
- please let me know when you finish download

### Legend
| DATA_NAME | DETAILS | SOURCE |
|---|:---:|---:|
| MOCT_LINK.csv | 2020-12-28까지 반영된 전국표준노드링크 중 링크 정보 | [국토교통부 표준노드링크 지능형교통체계관리시스템](http://nodelink.its.go.kr/data/data01.aspx) |
| MOCT_NODE.csv | 2020-12-28까지 반영된 전국표준노드링크 중 노드 정보 | [국토교통부 표준노드링크 지능형교통체계관리시스템](http://nodelink.its.go.kr/data/data01.aspx) |
| MOCT_NODE_LATLNG.csv | latitude and longitude of nodes | [국토교통부 표준노드링크 지능형교통체계관리시스템](http://nodelink.its.go.kr/data/data01.aspx) |
| TURNINFO.csv | 2020-12-28까지 반영된 전국표준노드링크 중 회전 가능한 노드 중 회전이 제한되는 노드의 회전 제한 정보 | [국토교통부 표준노드링크 지능형교통체계관리시스템](http://nodelink.its.go.kr/data/data01.aspx) |
| MULTILINK.csv | 2020-12-28까지 반영된 전국표준노드링크 중 다른 링크와 ROAD_NO(구 제도의 도로번호인 듯)가 중복되는 링크들의 정보 | [국토교통부 표준노드링크 지능형교통체계관리시스템](http://nodelink.its.go.kr/data/data01.aspx) |
| TMAP_DATA.csv | T맵 사용자 GPS 위치정보를 기반으로 5분 단위로 생성한 소통정보 및 교통량 데이터 | [교통 데이터 거래소](https://www.bigdata-transportation.kr/orderProductGroup/86597eee-4b15-11ea-b639-246e9637d7d8) |

### Cypher codes
- I also uploaded some cypher codes (or cypher queries using python module)
- The `create_links.ipynb` needs modification
  - It needs index for the nodes.
  - If you just run the code, it will take Neo4j almost one day to connect the nodes and links

### Some useful sites
- [Korean transport database](https://www.ktdb.go.kr/www/selectBbsNttList.do?bbsNo=18&key=301)
- [Korean traffic node-link system](http://nodelink.its.go.kr/data/data01.aspx)
- [Laws related to Korean traffic node-link system](https://www.law.go.kr/LSW/admRulInfoP.do?admRulSeq=2100000157569)
- [Traffic info. open API](http://openapi.its.go.kr/portal/main.do;jsessionid=1D460571BCDCA7B61F0EF23F796E47CE)


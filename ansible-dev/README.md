# dev vagrant

개발환경 구성 플레이북

참고자료
https://docs.ansible.com/ansible/latest/modules/shell_module.html?highlight=shell
https://docs.ansible.com/ansible/latest/reference_appendices/galaxy.html

## vagrant 노드 생성

* master
* node1
* node2

## ansible 설치

### ansible-galaxy 사용

테스트 해보고 그냥 하는게 나을것같으면 apt 설치
범용적인 설치가 필요없는 경우가 많아서 따로 하는게 나을수도 있음

#### 설치방법

한개씩\
`ansible-galaxy install -p redis DavidWittman.redis`\
정의된거 모두다\
`ansible-galaxy install -p roles -r requirements.yml`

#### requirements.yml
* redis cluster(all)(DavidWittman.redis)
* mysql m-s(all)(geerlingguy.mysql)
* postgresql m-s(all)
* hdfs cluster(all)
* nginx(master)
* cassandra(all)


## 다운로드



# sb-vagrant

개발환경 설정 저장소

## 용도

이제 개발용으로는 도커가 있어서 busybox 작성용으로는 크게 의미가 없다.

packer, ansible, chef, puppet, saltstack 등등 테스트용

## ansible
한개씩\
`ansible-galaxy install -p redis DavidWittman.redis`\
정의된거 모두다\
`ansible-galaxy install -p roles -r requirements.yml`

## Vagrant!!

### docker가 아닌 vagrant인 이유는..?

docker는 윈도우, 맥, 리눅스 환경이 묘하게 조금씩 다르다.
vagrant는 hypervisor를 돌리니까 아예 가상환경이라 더 편함.
셋다 virtualbox를 쓸 수도 있고 안 써도 되고

### Hypervisor
hyperv, vmware, parallels..등도 지원이 되기도 하는게 해보니 virtualbox 말고 다른거 쓰려면 스트레스 받는다
이미지가 없는 경우도 많고

### 설치

#### 프로그램 설치
다운로드, apt, brew ...

#### 플러그인 설치

사하라 : 테스트환경 타임루프기능
```
https://github.com/ryuzee/sahara.git
$ vagrant plugin install sahara
```
옴니버스 : chef 사용지원
```
https://github.com/chef/vagrant-omnibus
$ vagrant plugin install vagrant-omnibus
```
버크셸프 : chef 의존성 지원
```
Install the latest version of Vagrant
Install the latest version of ChefDK
$ vagrant plugin install vagrant-berkshelf
```
아래 명령으로 의존성 받아올 수 있음
$ berks vendor cookbooks
커뮤니티 쿡북이 상태가 안좋아서 대부분 별도로 만들어야 하니 신경 쓸 필요 없음

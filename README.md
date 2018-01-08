# sb-vagrant
vagrant 자주쓰는 이미지 모음

## vagrant 환경 셋팅

1. vagrant https://www.vagrantup.com/
2. hypervisor
  hyperv, vmware, parallels..등도 지원이 되기도 하는게 해보니 virtualbox 말고 다른거 쓰려면 스트레스 받는다
3. 플러그인 설치

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

berks 이용 설정파일 받아와야함

$ berks vendor cookbooks


# 이미지 종류

## test-ub
종합 테스트서버
이것저것 설치
* mysql
* apache2

## chef-ub
chef 전용 테스트
* chef

## docker-ub
도커 인스턴스 구동 테스트용
* docker.io docker-compose docker

## docker-deploy-ub
배포시스템 테스트용
* dokku
* flynn

## cluster-ub
3대짜리 클러스터
* hadoop
* spark
* mesos
* docker-kubernetes
* docker-swarm


GCP - cloud shell
https://cloud.google.com/sdk/docs/quickstart-debian-ubuntu
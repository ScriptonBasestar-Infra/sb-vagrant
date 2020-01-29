sb-vagrant
==========

용도
---

이제 개발용으로는 도커가 있어서 busybox 용도로는 많이 쓰지 않는다

* 윈도우, 맥, 리눅스 특정 환경이 필요할 때
* packer, ansible, chef, puppet, saltstack 등등 테스트

사용기술
------

* Vagrant!!
* Ansible
* Chef
* Hypervisor
  * Virtualbox
  * HyperV

케이스
----

### 이미지가 없을 때

packer 활용 <https://github.com/ScriptonBasestar-devops/packer-boxes>

### network

  config.vm.synced_folder '../data', '/vagrant_data'
  config.vm.network 'public_network'
  config.vm.network 'private_network', :ip => '192.168.56.201', :type => 'dhcp', :name => 'vboxnet0', :adapter => 2
  config.vm.network 'private_network', ip: '192.168.56.201', type: 'dhcp', name: 'vboxnet0'
  config.vm.network 'private_network', ip: '192.168.56.101', type: 'dhcp', name: 'VirtualBox Host-Only Ethernet Adapter'
  config.vm.network "private_network", ip: "192.168.56.101"

### 설치

#### 프로그램 설치

* virtualbox
* vagrant

#### 플러그인

##### 사하라 : 테스트환경 타임루프기능

<https://github.com/ryuzee/sahara.git>

```bash
$ vagrant plugin install sahara
```

##### 옴니버스 : chef 사용지원

<https://github.com/chef/vagrant-omnibus>

```bash
$ vagrant plugin install vagrant-omnibus
```

```bash
vagrant sandbox on
vagrant sandbox commit
vagrant sandbox rollback
vagrant sandbox off
```

##### Test Kitchen

<https://github.com/test-kitchen/kitchen-vagrant>

# Chef-work

vagrant plugin install vagrant-omnibus

사용자명 변경은 환경으로 받아서 처리하기 힘들어서 고정 devuser

엔트리포인트스크립트 별도로 작성하려면 수정
docker run --rm -it -v $(pwd)/docker/docker-entrypoint.sh:/docker-entrypoint.sh -v $(pwd)/work:/work archmagece/chef-dev:3.4.28

git 기본값변경 필요
git config --global user.email "archmagece@gmail.com"
git config --global user.name "cee"

docker run --rm -it -v $(pwd)/work:/work archmagece/chef-dev:3.4.28


## 참고할만한 쿡북

https://github.com/mrflip/mrflip-cookbooks
https://github.com/bloomberg/redis-cookbook
https://github.com/infochimps-labs/ironfan-pantry
https://github.com/ScriptonBasestar-infra/ironfan-pantry
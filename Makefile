.PHONY: build
build: 
	packer build -var "tag=`cat VERSION`" packer.json

.PHONY: docker_tag
docker_tag:
	echo "docker tagging with `cat VERSION`"
	docker tag reaandrew/devenv_java reaandrew/devenv_java:`cat VERSION`

.PHONY: docker_push
docker_push:
	docker push reaandrew/devenv_java:`cat VERSION`

.PHONY: vagrant_package
vagrant_package:
	vagrant package --base devenv_java --output devenv_java_`cat VERSION`.box

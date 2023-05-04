FOLDERS=$(shell ls -d */ | grep -v "media/")

up:
	for FOLDER in $(FOLDERS); do \
		cd $$FOLDER && docker-compose up -d && cd ..; \
	done
down:
	for FOLDER in $(FOLDERS); do \
		cd $$FOLDER && docker-compose down --remove-orphans && cd ..; \
	done
net:
	docker network create media_net

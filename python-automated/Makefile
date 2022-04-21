download_deps:
	chmod +x do-download.sh
	docker run -v $(CURDIR)/application:/tmp -v $(CURDIR):/scripts --entrypoint /scripts/do-download.sh python:3.9-buster


build_app:
	docker build --tag application:airgapped ./application

run:
	docker run -d -p 8000:8000 --name application-airgapped -d application:airgapped

cleanup:
	docker stop application-airgapped && docker rm application-airgapped
build: 
	docker build --tag python-base:latest .
run:
	docker run --name django -d -p 8000:8000 python-base:latest

cleanup:
	docker stop django && docker rm django
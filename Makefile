init:
	pip install -r requirements.txt

test:
	docker pull eltonlaw/pybase
	docker build -t diehard .
	docker run diehard python2.7 -m pytest
	docker run diehard python3.4 -m pytest
	docker run diehard python3.5 -m pytest
	docker run diehard python3.6 -m pytest

docker-pybase:
	docker build -t pybase -f Dockerfile.pybase .
	docker tag pybase eltonlaw/pybase
	docker push eltonlaw/pybase

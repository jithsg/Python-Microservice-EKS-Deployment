install:
	pip install --upgrade pip &&\
		pip install -r requirements.txt

lint:
	pylint --disable=R,C,W1203,W0702 app.py

test:
	python -m pytest -vv --cov=app test_app.py
deploy:
	aws ecr get-login-password --region us-east-2 | docker login --username AWS --password-stdin 185183796631.dkr.ecr.us-east-2.amazonaws.com
	docker build -t eks-repo .
	docker tag eks-repo:latest 185183796631.dkr.ecr.us-east-2.amazonaws.com/eks-repo:latest
	docker push 185183796631.dkr.ecr.us-east-2.amazonaws.com/eks-repo:latest

all: install lint test
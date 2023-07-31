format:
	@poetry run python -Bm black .

format-check:
	@poetry run python -Bm black -q --check .

test:
	@poetry run python -Bm coverage run -m pytest tests

coverage-report:
	@poetry run python -Bm coverage report

requirements:
	@poetry export -o requirements.txt

requirements-test:
	@poetry export --only test -o requirements-test.txt

requirements-update:
	@poetry update

build: requirements requirements-test
	@poetry build -f wheel

init:
	git clone --depth 1 --branch 2024.02.2 https://github.com/buildroot/buildroot.git buildroot-src

build:
	docker build -t buildroot-rpi .

run: build
	docker run -it buildroot-rpi

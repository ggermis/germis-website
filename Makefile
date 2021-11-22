.PHONY: all upload

all: upload

upload:
	@aws s3 cp index.html s3://germis.be/ && \
		aws s3 sync img s3://germis.be/img && \
		aws s3 sync css s3://germis.be/css && \
		aws s3 sync fonts s3://germis.be/fonts
		
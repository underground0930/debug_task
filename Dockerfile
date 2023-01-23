FROM ruby:3.2.0
ARG ROOT="/myapp"
ENV LANG=C.UTF-8
ENV TZ=Asia/Tokyo

WORKDIR ${ROOT}

RUN apt-get update; \
    apt-get install -y --no-install-recommends \
		  vim tzdata
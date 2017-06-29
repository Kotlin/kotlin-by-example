# Docker for Jekyll 
FROM alpine:latest
MAINTAINER Hadi Hariri <mail@hadihariri.com>

# Install base, Ruby, Headers, Jekyll, Export Path and Clean Up
RUN apk update && apk upgrade && apk add curl wget bash && \
    apk add ruby ruby-bundler ruby-dev ruby-irb ruby-rdoc libatomic readline readline-dev \
    libxml2 libxml2-dev libxslt libxslt-dev zlib-dev zlib \
    libffi-dev build-base git nodejs && \
    export PATH="/root/.rbenv/bin:$PATH" && \
    rm -rf /var/cache/apk/* && \
    # Install Jekyll and required gems
    gem install jekyll redcarpet kramdown maruku rdiscount RedCloth liquid pygments.rb \
    jekyll-paginate jekyll-sass-converter jekyll-sitemap jekyll-gist jekyll-feed


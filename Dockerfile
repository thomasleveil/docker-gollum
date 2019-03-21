FROM ruby
RUN apt-get -y update \
	&& apt-get -y install \
 		cmake \
		libicu-dev
RUN gem install gollum
RUN gem install redcarpet org-ruby github-linguist github-markdown gollum-rugged_adapter

VOLUME /wiki
WORKDIR /wiki

ENTRYPOINT ["gollum", "--port", "8080", "--adapter=rugged"]
CMD ["--emoji", "--live-preview", "--h1-title", "--allow-uploads", "--user-icons=gravatar"]
EXPOSE 8080

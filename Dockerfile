FROM ubuntu

RUN apt-get update
RUN apt-get install -y \
    git-core \
    curl \
    zlib1g-dev \
    build-essential \
    libssl-dev \
    libreadline-dev \
    libyaml-dev \
    libsqlite3-dev \
    sqlite3 \
    libxml2-dev \
    libxslt1-dev \
    libcurl4-openssl-dev \
    python-software-properties \
    libffi-dev

RUN useradd -ms /bin/bash prisoner
USER prisoner

RUN git clone https://github.com/rbenv/rbenv.git ~/.rbenv

RUN git clone https://github.com/rbenv/ruby-build.git ~/.rbenv/plugins/ruby-build
ENV PATH /home/prisoner/.rbenv/bin:$PATH
ENV PATH /home/prisoner/.rbenv/shims:$PATH

RUN rbenv install 2.3.1
RUN rbenv global 2.3.1
RUN gem install bundler

WORKDIR /workdir
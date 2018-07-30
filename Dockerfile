FROM circleci/ruby:2.3-node-browsers

# Install qt5 (for capybara-webkit gem) and also
# postgresql-client and mysql-client
RUN sudo apt-get update \
  && sudo apt-get install -y \
    gcc g++ make \
    qt5-default libqt5webkit5-dev \
    ruby-dev zlib1g-dev \
    postgresql-client mysql-client \
  && sudo rm -rf /var/lib/apt/lists/*

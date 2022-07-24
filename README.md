# Library Management system

# Installation

### Database Setup

* Make sure you have docker compose v2 installed. Check using `docker compose --version`. Don't use the `docker-compose` command because it defaults to v1.
* `docker compose up` starts `mysql`
* `bin/rails db:setup db:schema:load`

### Dependencies for linux
* Add `gem "nokogiri", force_ruby_platform: true` to Gemfile
* Run `bundle lock --add-platform x86_64-linux`


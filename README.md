The goal is to create a URL shorener, and save URLS in the database to grab later. If the possible URL characters are exclusively in the 62 length string of "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789", all shortened URLS will be generated on base 62. 

for each URL that is entered, I will want to save the ID, the title, the short URL and the long URL. Anything else??


# Intial Setup

    docker-compose build
    docker-compose run short-app rails db:setup && rails db:migrate

# To run the specs

    docker-compose -f docker-compose-test.yml run short-app-rspec

# To run migrations

    docker-compose run short-app rails db:migrate
    docker-compose -f docker-compose-test.yml run short-app-rspec rails db:test:prepare

# Run the web server

    docker-compose up

# Adding a URL

    curl -X POST -d "full_url=https://google.com" http://localhost:3000/short_urls.json

# Getting the top 100

    curl localhost:3000

# Checking your short URL redirect

    curl -I localhost:3000/abc

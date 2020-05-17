# First of all be sure to have all the dependencies install in your machine Docker and Git

# To create the project just use the command in terminal:

    docker-compose run app rails new . --force --database=mysql --skip-bundle
    
# Use all the comands with this prefix.

    docker-compose run --rm app
    
# To install gems we need to build the application again.

    docker-compose run --rm app bundle install
    docker-compose up --build

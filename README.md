# medical database

## how to run the app

1. create a .env file with the following structure
    >
    > ```.env
    > secret_key=""
    > db_host=""
    > db_user=""
    > db_password=""
    > db_database="Insurance"
    > db_port=3306
    > ```
    >
    `don't forget to fill the empty string with the correct values`
2. first you need to run the database
    > do that with in the database folder by running `docker compose up -d` \
    > this is run with docker so you would need to install docker as well \
    > you can do this [here](https://docs.docker.com/get-docker/)
3. fill the database with data you can do that with the files in the database folder for each table
    > to create the tables and fill them use the  `init_db.sql` file
4. install the dependencies
    > you do that with `pip install -r requirements.txt`
5. then run the web app
    > python src/run.py
6. now you can connect to the app by going to [http://localhost:9090](http://localhost:9090)

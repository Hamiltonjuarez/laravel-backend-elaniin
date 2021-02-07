
## Laravel Backend Elaniin API

This repository containts a RESTfull API that follows the JSON:API development specifications. The authorization token 
is created and passed on login function (Database dump is located inside dbdump folder path=/dbdump/database_dump.zip).

The API covers the following content: 

- User authentication.
- User passwort reset link.
- User CRUD.
- Products CRUD.
- Products case insensitive browser(by name or by SKU).

## Local API installation

Open local console and clone the repository

```bash
git clone git@github.com:HamiltonJuarez/laravel-backend-elaniin.git
```

Switch to repo folder 

```bash
cd laravel-backend-elaniin
```

Install all dependencies using composer

```bash
composer install
```

Copy the example env file and make the required configuration changes in the .env file

```bash
cp .env.example .env
```

Generate a new application key

```bash
php artisan key:generate
```

Run the database migrations seed the database tables with dummy data make sure database configuration is complete on .env before

```bash
php artisan migrate --seed
```

Install npm dependencies 

```bash
npm install
```

run developer mixer 

```bash
npm run dev 
```

Deploy laravel development server 

```bash
php artisan serve  
```

The api can now be accessed at

```bash
http://localhost:8000/api
```

## API request headers 

| Required      | Key              | Value            |
| ------------- |:----------------:| ----------------:|
| Yes           | Content-Type     | application/json |
| Yes           | X-Requested-With | XMLHttpRequest   |
| Optional      | Authorization    | Token {Bearer}   |

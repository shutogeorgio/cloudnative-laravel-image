## CloudNative Laravel Pack Demo
With CloudnNative Principle, Develpers should not be concerned with vunability of dependencies with dockerfile.
Dockerfile is not required to create runnable and solid image for production.

### Prerequisite
- docker for Desktop
- `pack` command is installed at your OS correctly.
    - Here is how to install ... https://buildpacks.io/docs/install-pack/

### Build Image
bash
```
1. $ composer install
2. $ cp .env.example .env
3. $ pack build laravel-sample-pack:latest --buildpack heroku/php --buildpack heroku/nodejs --builder heroku/buildpacks
```

### Local Env
#### Run Locally
bash
```
$ docker-compose up -d
```
Now your application is running on http://localhost

### Production Env
#### Run Production
bash
```
$ docker run -e OPTION='(php command such as php artisan migrate)' laravel-sample-pack:latest
```

### Custom
- change container listen port by editting `nginx_app.conf`.
- customize env varibale and shell by editing `deploy.sh`



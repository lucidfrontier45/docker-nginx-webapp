# Docker nginx webapp

Docker image of nginx with customizable remote API URL.
This is suitable for hosting SPA such as React based app.

## Usage

Put your web resources to `/webapp` and specify remote API URL via `API_URL` env.

```
$ docker run -d -p 80:80 -p 443:443 -v <your_webapp_dir>:/webapp:ro -e API_URL=http://remote-server/api 
```

This image expose 80 and 443 ports for HTTP and HTTPS.
HTTPS is served with basic auth (default user:password) and a self-signed SSL certificate. They can be altered by changing `/etc/nginx/conf.d/htpasswd` for basic auth and `/etc/nginx/conf.d/key.pem` and `/etc/nginx/con.d/cert.pem` for SSL.

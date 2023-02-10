# DEPLOYMENT

## Hosting Providers

these are our online landlords, server landlords. They own servers and rent spaces on them for customers, who can then use this space to store their websites and make them accessible to anyone on the web.

## static vrs dynamic sites

### static

this consists of pre-written HTML pages, they are considered 'static' because everyone who visits them will see the same content.

to build static site you only need HTML, CSS and JavaScript.

### dynamic

these are those sites that change content based on users who visits them, i.e twitter.

in addition to HTML, CSS and JavaScript, you need to add server-side application for this and a database.

such websites we would like to host them in the following(just examples):

1. AWS
2. Google Cloud
3. Microsoft Azure
4. Heroku
5. Railways
6. Render
7. Fly.io

## PAAS - Platform as a Service Provider

this is a specific kind of  A hosting provider.They manage many of the low-level nitty-gritty details with the underlying server infrastructure. Allowing us as developers to focus more of our time on building our applications instead of configuring and managing the servers they run on.

A PaaS platform is like having a landlord who takes care of all the utilities, building maintenance and security. While you, the developer, focuses on furnishing, decorating and living in the space.

### EXAMPLES OF PAAS

1. [fly.io](https://fly.io/)
2. [Railway.app](https://railway.app)
3. [Render](https://render.com/)
4. [Heroku](https://www.heroku.com/)

### How does PAAS work?

#### instances

PAAS provides you with 'virtual computers', called instances which run our apps. Basically, one instance means a single instance of your application running at one time.

Multiple instances are like having several copies of your app running simultaneously, which allows you to handle more traffic.

#### Databases

they make it easy to spin up a new database for each app by doing all the setup and configurations for us.

Many providers even manage the database for you by setting up automatic backups, ensuring the database is constantly updated with the latest critical security patches and ongoing maintenance that keeps your databases up and running smoothly

## DOMAIN NAMES

PaaS providers will give you a random domain name when you first deploy

The domain name will always be yours on a PaaS provider. They give each app a unique domain name that’s yours as long as your app lives on their platform.

if you want custom domains, you can always buy them here: [GoDaddy](https://www.godaddy.com/) or [IWantMyName](https://iwantmyname.com/)

to find if your domain is free or find a new domain you try using [DOmainr](https://domainr.com/)

Once you have your domain, you need to point it to your project. The provider you are using will have exhaustive documentation on using custom domain names on their platform.

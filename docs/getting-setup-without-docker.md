![Civil Services Logo](https://cdn.civil.services/common/github-logo.png "Civil Services Logo")

**[↤ Developer Overview](../README.md)**

Getting Setup without Docker
===

Requirements
---

* [PHP 5.6.4+](http://php.net/manual/en/install.php)
* [Composer](https://getcomposer.org)
* [Yarn](https://yarnpkg.com)
* [Redis](http://redis.io)


Install Dependencies
---

Using Docker is Super Easy once it's installed, you just need to run the following commands:

```bash
cd /path/to/bot
yarn install
composer install
```


Build Chat Bot
---

Now that we have all the dependencies installed, we can build the website:

#### Build for Development

```bash
cd /path/to/bot
yarn run dev
```

#### Build for Production

```bash
cd /path/to/bot
yarn run production
```


Accessing the Chat Bot
---

Now you can open your web browser to [http://localhost](http://localhost)

Internally we are using [http://civil-services.loc](http://civil-services.loc) as a developer domain.  This can be added to your `/etc/hosts` by adding:

```
127.0.0.1 civil-services.loc
```
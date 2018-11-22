# README
Sleekr Setup is a script to set up an macOS for web development.

## Supported OS
* macOS High Sierra (10.13)
* macOS Mojave (10.14)

## How To Generate SSH Key (Optional)
Download the generate_ssh_key script:

```sh
curl --remote-name https://bitbucket.org/mid-kelola-indonesia/sleekr-setup/raw/master/generate_ssh_key.sh
```

Review the script if you want:

```sh
less generate_ssh_key.sh
```

Execute the downloaded script:

```sh
./generate_ssh_key.sh myemail@example.com
```

## How to Run Setup Script
Download the setup script:

```sh
curl --remote-name https://bitbucket.org/mid-kelola-indonesia/sleekr-setup/raw/master/bash_profile
curl --remote-name https://bitbucket.org/mid-kelola-indonesia/sleekr-setup/raw/master/mac.sh
```

Review the script, remove / add your customization if you want:

```sh
less bash_profile
less mac.sh
```

Execute the downloaded script:

```sh
sh mac.sh 2>&1 | tee ~/sleekr-setup.log
```

Optionally, review the log:

```sh
less ~/sleekr-setup.log
```

## Logging
Your last Laptop run will be saved to `~/sleekr-setup.log`.

## What it sets up

macOS tools:

* [Homebrew] for managing operating system libraries.

[Homebrew]: http://brew.sh/

Programming languages, package managers, and configuration:

* [Bundler] for managing Ruby libraries
* [Node.js] and [NPM], for running apps and installing JavaScript packages
* [Ruby] stable for writing general-purpose code
* [Yarn] for managing JavaScript packages
* [NVM] as Node Versioning Manager
* [RVM] as Ruby Versioning Manager

[Bundler]: http://bundler.io/
[ImageMagick]: http://www.imagemagick.org/
[Node.js]: http://nodejs.org/
[NPM]: https://www.npmjs.org/
[ASDF]: https://github.com/asdf-vm/asdf
[Ruby]: https://www.ruby-lang.org/en/
[Yarn]: https://yarnpkg.com/en/
[NVM]: https://github.com/creationix/nvm
[RVM]: http://rvm.io

Databases:

* [MySQL] for storing relational data

[Postgres]: http://www.postgresql.org/
[MySQL]: https://www.mysql.com

## License
Sleekr Setup is released under the [MIT License](https://opensource.org/licenses/MIT).

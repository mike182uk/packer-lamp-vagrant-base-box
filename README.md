Packer project for building a LAMP development base box for use with vagrant

- Ubuntu 12.04.4 (LTS)
- Chef installed
- Virtualbox guest additions installed
- LAMP packages installed:
    - apache2
    - mysql-server
    - php5
    - php5-cli
    - php5-dev
    - php5-mysql
    - php-pear
    - xdebug
    - apc
- Other useful packages installed:
    - git
    - vim
- Apache modules enabled
    - mod_rewrite
    - mod_alias
- MySQL database setup
    - Database can be accessed from the host machine:
        - **user:** root
        - **password:** root
- Composer installed and available globally
- Xdebug installed and setup to allow remote debugging
        - **host:** 10.10.10.2
        - **remote port:** 9000

## Prerequisites

- A Ruby environment with the following Gems installed:

    - [Bundler](http://bundler.io/)

- [Virtualbox](https://www.virtualbox.org/)

##Usage

Install required Ruby Gems:

```bash
bundle install
```

Install required chef cookbooks:

```bash
cd chef && librarian-chef install
```

Build the box:

```bash
cd ../ && packer build lamp-vagrant-chef-solo.json
```

Once packer has built the box in the root directory there will be a vagrant box file (`packer-lamp-vagrant-chef-solo.box`).

You can also test the box in virtualbox using the build artifacts in `output-lamp-vagrant-chef-solo` (import `packer-lamp-vagrant-chef-solo.ovf` into virtualbox).

## FAQ's

## Notes
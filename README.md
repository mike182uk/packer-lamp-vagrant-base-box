Packer project for building a LAMP development base box for use with vagrant

- Ubuntu 12.04.4 (LTS)
- Chef installed (latest version at time of build)
- Virtualbox guest additions installed (latest version at time of build)
- Apache, MySQL & PHP installed
- PHP Modules installed
    - apc
    - curl
    - GD
    - mcrypt
    - mysql
    - xdebug
- Apache modules installed:
    - mod_rewrite
    - mod_alias
    - mod_php5
- Miscellaneous packages installed:
    - git
    - vim
- Composer installed

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

Once packer has built the box there will be a vagrant box file (`packer-lamp-vagrant-chef-solo.box`) in build directory.

You can also test the box in virtualbox using the build artifacts in `output-lamp-vagrant-chef-solo` (import `packer-lamp-vagrant-chef-solo.ovf` into virtualbox).

## FAQ's

## Notes
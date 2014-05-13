Packer project for building a LAMP development base box for use with vagrant

- Ubuntu 12.04.4 (LTS)
- Chef installed (latest version at time of build)
- Virtualbox guest additions installed (latest version at time of build)
- Apache, MySQL & PHP (5.3) installed
- PHP modules installed:
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
- [Packer](http://www.packer.io/)

##Usage

Install required Ruby Gems:

```bash
bundle install
```

Install required Chef cookbooks:

```bash
cd chef && librarian-chef install
```

Build the box:

```bash
cd ../ && packer build lamp-vagrant-chef-solo.json
```

Once packer has built the box there will be a vagrant box file (`packer-lamp-vagrant-chef-solo.box`) in the `build` directory.

You can also test the box in virtualbox using the build artifacts in the `output-lamp-vagrant-chef-solo` directory (import `packer-lamp-vagrant-chef-solo.ovf` into virtualbox).

## FAQ's

## Notes

- The MySQL root user password is set to `root`
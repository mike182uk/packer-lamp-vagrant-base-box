Packer project for building a LAMP development base box for use with vagrant

- Ubuntu 14.04.3 (LTS)
- Chef installed (latest version at time of build)
- Virtualbox guest additions installed (latest version at time of build)
- Apache (2.4), MySQL (5.6) & PHP (5.5) installed
- PHP modules installed:
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
    - vim

##Prerequisites

- [Chef Development Kit](https://downloads.chef.io/chef-dk/)
- [Virtualbox](https://www.virtualbox.org/)
- [Packer](http://www.packer.io/)

##Usage

Install required cookbooks:

```bash
cd chef && berks vendor vendor-cookbooks
```

Build the box:

```bash
cd ../ && packer build lamp-vagrant-chef-solo.json
```

Once packer has built the box there will be a vagrant box file (`packer-lamp-vagrant-chef-solo.box`) in the `build` directory.

You can also test the box in virtualbox using the build artifacts in the `output-lamp-vagrant-chef-solo` directory (import `packer-lamp-vagrant-chef-solo.ovf` into virtualbox).

##FAQ's

##Notes

- The MySQL root user password is set to `root`
- To login into MySQL from the command line you will need to specify the host:
```bash
mysql -h 127.0.0.1 -u root -proot
```

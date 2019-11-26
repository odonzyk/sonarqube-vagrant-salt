# Sonarqube installed with Vagrant and Saltstack on bento/ubuntu-19.04

- creates a new virtualbox with masterless saltstack  
- install Open JDK 11 JRE
- install Sonarqube Version 8.0 (build 29455)
- update the Box with Saltstack
- automatical start after vagrant up
- some tools like: vim, htop, iotop, bwm-ng, curl, mc, git

## First install of the VirtualBox with Vagrat ##
```
vagrant up
```

## After installation call "localhost:9000" from your host browser.
* Standard Login Username: admin and Password: admin


In the VirtualBox, you can find important folders mounted from the host:
* /etc/salt
* /srv/salt/
* /var/www/

## Debugging

If you want to see a full list of what Salt is doing you can add the following line to the VagrantFile

```
salt.verbose = true
```

Or use flag below when running vagrant command

```
--debug
```

## Using Salt from the Box 
```
vagrant ssh
```

Box update and pre-configure with:
```
salt-call state.highstate
```




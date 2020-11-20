andrewrothstein.astro
=========
[![Build Status](https://travis-ci.org/andrewrothstein/ansible-astro.svg?branch=master)](https://travis-ci.org/andrewrothstein/ansible-astro)

Installs the Astronomer's [astro-cli](https://github.com/astronomer/astro-cli)

Requirements
------------

See [meta/main.yml](meta/main.yml)

Role Variables
--------------

See [defaults/main.yml](defaults/main.yml)

Dependencies
------------

See [meta/main.yml](meta/main.yml)

Example Playbook
----------------

```yml
- hosts: servers
  roles:
    - andrewrothstein.astro
```

License
-------

MIT

Author Information
------------------

Andrew Rothstein <andrew.rothstein@gmail.com>

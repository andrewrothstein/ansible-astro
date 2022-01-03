andrewrothstein.astro
=========
![Build Status](https://github.com/andrewrothstein/ansible-astro/actions/workflows/build.yml/badge.svg)

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

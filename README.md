# Firefly III

Repository has been created to automate install [Firefly III](https://firefly-iii.org/) on single-board computers (should works on Orange PI, Raspberry Pi etc) based on Armbian and Docker.

It was created to own use in isolated local network on OrangePI PC.

To deploy Firefly III uses images built from Dockerfiles in docker folder and stored on Docker Hub [MySQL ARM](https://hub.docker.com/r/po1yak/mysql_arm/), [Firefly III ARM](https://hub.docker.com/r/po1yak/firefly-iii_arm/)


## Installation steps

  * Install Armbian on single-board computer

  * Start initial setup script with sudo

    `sudo init-setup.sh`

After steps will be completed Firefly III will be available on http://single-board-computer-IP.


## References

  * Debian jessie-slim ARM based image

	[Docker Hub](https://hub.docker.com/r/arm32v7/debian/)

  * PHP 7.1

	[Docker Hub](https://hub.docker.com/_/php/)

	[(Dockerfile)](https://github.com/docker-library/php/blob/f504394473ea762a02a707325a9114df02987e71/7.1/jessie/apache/Dockerfile)

  * MySQL

	[Docker Hub](https://hub.docker.com/r/beercan1989/arm-mysql/)

  * Firefly III

	[Docker Hub](https://hub.docker.com/r/jc5x/firefly-iii/)

	[Official GitHub repository](https://github.com/firefly-iii/firefly-iii)

## Tested
  Tested on OrangePI PC based on:

  Title:			Armbian 5.38 Orangepipc Debian stretch next

  Kernel:			Linux 4.14.15

  Build date:		        25.01.2018

  Authors:		        https://www.armbian.com/authors

  Sources: 		        https://github.com/armbian/

  Support: 		        https://forum.armbian.com/

  Changelog: 		        https://www.armbian.com/logbook/

  Documantation:		https://docs.armbian.com/

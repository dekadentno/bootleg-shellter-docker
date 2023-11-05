# Bootleg Shellter Docker

This is a Docker image that's made to help folks preparing for the OSCP, especially if you've had trouble getting Wine to work on ARM64 systems. It's got wget and nano for downloading stuff and editing files, plus [Shellter](https://www.shellterproject.com/), a tool for hiding code inside other programs. I made this so I can focus on studying instead of fixing Wine problems.

I'm still learning Docker, so this image might not follow all the best practices, but it gets the job done.

## Contributing

If you got ideas or something's not working right, just let me know by opening an issue or sending a pull request.

## Prerequisites

You have to install Wine and some other stuff on your host. Follow these steps:
1. https://www.kali.org/tools/shellter/
2. https://www.kali.org/docs/arm/x86-on-arm/ 

## How to use

```shell
git clone https://github.com/dekadentno/bootleg-shellter-docker.git
cd bootleg-shellter-docker
docker build -t bootleg-shellter-docker .
docker run -it bootleg-shellter-docker
```

## License

[Don't Be a Jerk: The Open Source Software License.](https://github.com/evantahler/Dont-be-a-Jerk)
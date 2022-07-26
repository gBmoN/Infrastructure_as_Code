# Infrastructure_as_Code
## User, Directory and Permissions Structure Creation Script
- This project presents a script where all user infrastructure, user groups, directories and permissions will be created automatically. So when the script file is loaded from GitHub on new virtual machines, the environment is ready for use.
- User password settings are programmed to be reset on first login.
- By choice, in this project, the SHA-512 hash algorithm was used as a parameter (openssl passwd -6) for user password encryption. Other parameters can be checked in the help of the "openssl passwd" command:
- -salt val           (Use provided salt)
- -stdin              (Read passwords from stdin)
- -6                  (SHA512-based password algorithm)
- -5                  (SHA256-based password algorithm)
- -apr1               (MD5-based password algorithm, Apache variant)
- -1                  (MD5-based password algorithm)
- -aixmd5             (AIX MD5-based password algorithm)
- -crypt              (Standard Unix password algorithm (default))

This project was offered in the bootcamp "Linux Experience" of the [Digital Inovation One platform](https://web.dio.me/track/linux-experience), and developed for this purpose.

## Useful links
[OpenSSl Documentation](https://www.openssl.org/docs/man1.1.1/man1/openssl-passwd.html)
[AWS](https://aws.amazon.com/pt/)
[Ubuntu Server](https://ubuntu.com/download/server)
[VMware Workstation](https://www.vmware.com/br/products/workstation-player/workstation-player-evaluation.html)
[PuTTY](https://www.putty.org/)

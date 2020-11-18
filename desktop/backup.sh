#!/bin/bash
cd ~
rm -rf backup.tgz
tar -zcvf backup.tgz Documents bin .gnupg .password-store .ssh

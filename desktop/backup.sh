#!/bin/bash
rm -rf backup.tgz
tar --exclude './Documents/bin' --exclude './Documents/prog' -zcvf backup.tgz './Documents'

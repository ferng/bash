#!/bin/bash
rm -rf ubuntu-backup.tgz
tar --exclude 'node_modules' -zcvf ubuntu-backup.tgz './prog'

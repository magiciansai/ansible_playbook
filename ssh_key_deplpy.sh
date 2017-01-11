#!/bin/sh
ansible reader_servers -m authorized_key -a "user=reader key='{{ lookup('file', './ssh_key/id_rsa.pub') }}'" -k

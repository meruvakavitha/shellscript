#!/bin/bash
 sudo  mkdir -p ./backup && sudo  tar -czvf /backup/etc-$(date +%F_%H-%M-%S).tar.gz /etc


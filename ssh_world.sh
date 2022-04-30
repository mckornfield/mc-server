#!/bin/bash
ssh -o UserKnownHostsFile=/dev/null root@$(cat hosts)

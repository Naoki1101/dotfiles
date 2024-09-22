include install/mac/Makefile
include install/ubuntu/Makefile

############################################################
# setup
############################################################
.PHONY: setup/*

mac: setup/mac
ubuntu: setup/ubuntu   # 実装途中

#!/bin/bash

set -xe

truncate -s 10MiB dataset_image

bcachefs format\
    --block_size=4k\
    --metadata_checksum=none\
    --data_checksum=none\
    --compression=none\
    --str_hash=siphash\
    --label=LabelDEADBEEF dataset_image

mkdir dataset_mount

bcachefs fusemount -s dataset_image dataset_mount

fusermount3 -u dataset_mount

pybcachefs
=============================

Install
-------

.. code-block:: bash

   apt install make pkg-config libaio-dev libblkid-dev\
        libkeyutils-dev liblz4-dev libscrypt-dev libsodium-dev\
        liburcu-dev libzstd-dev libudev-dev uuid-dev zlib1g-dev\
        libfuse3-dev

   pip install pybcachefs


Example
-------

.. code-block:: bash

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


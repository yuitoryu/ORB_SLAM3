#!/bin/bash

./Examples/Monocular/mono_kitti \
    Vocabulary/ORBvoc.txt \
    camera2.yaml \
    data/run16

# ./Examples/Monocular-Inertial/mono_inertial_euroc \
#     Vocabulary/ORBvoc.txt \
#     ../../camera2.yaml \
#     ../../data/run16_euroc/mav0/sensor.yaml \
#     ../../data/run16_euroc

# ./Examples/Monocular-Inertial/mono_inertial_tum_vi \
#     Vocabulary/ORBvoc.txt \
#     ../../data/run16_euroc/calib.yaml \
#     ../../data/run16_euroc

# ./Examples/Monocular-Inertial/mono_inertial_tum_vi \
#     Vocabulary/ORBvoc.txt \
#     Examples/Monocular-Inertial/TUM_VI.yaml \
#     ../../data/run16_tum/cam0/data \
#     ../../data/run16_tum/cam0/data.csv \
#     ../../data/run16_tum/imu0/data.csv

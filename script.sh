DEVICE_BLOB_ROOT=./proprietary

# Camera data
for CAMERA_LIB in \
 lib/libmmcamera2_iface_modules.so \
 lib/libmmcamera2_dcrf.so \
 lib/libmmcamera2_imglib_modules.so \
 lib/libmmcamera_imglib.so \
 lib/libmmcamera_dbg.so \
 lib/libmmcamera2_cpp_module.so \
 lib/libmmcamera2_mct.so \
 lib/libmmcamera_tintless_bg_pca_algo.so \
 lib/libmmcamera_tintless_algo.so \
 lib/libmmcamera2_pproc_modules.so \
 lib/libmmcamera2_sensor_modules.so \
 lib/libmmcamera_tuning.so \
 lib/libmmcamera_pdafcamif.so \
 lib/libmmcamera2_stats_modules.so \
 lib/libmmcamera2_q3a_core.so \
 lib/libmmcamera_pdaf.so \
 lib/libmm-qcamera.so \
 bin/mm-qcamera-daemon; do
    sed -i "s|data/vendor/camera|data/vendor/qcam|g" "$DEVICE_BLOB_ROOT"/vendor/$CAMERA_LIB
done

for CAMERA_LIB in \
 lib/libmmcamera2_stats_algorithm.so \
 lib/libAsusDngCreator.so  \
 lib/libxditk_ditArchLIB.so \
 lib/libxditk_ditBSP.so \
 ../bin/ditbsp; do
    sed -i "s|data/misc/camera|data/vendor/qcam|g" "$DEVICE_BLOB_ROOT"/vendor/$CAMERA_LIB
done



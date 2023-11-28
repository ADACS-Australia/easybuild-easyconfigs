# dliptai 24 Oct 2023
The installer needs `lsb_release`, which is not in the PATH.
So just do `export PATH="$PATH:/usr/lib/dkms"` before install.

After a successfuly install, make sure to:

(2018 version) edit `INSTALL_DIR/sim/linux_a64/SMA/site/custom_v6.env` to look something like the following:
```
plugin_central_dir="INSTALL_DIR/cae"
doc_root="http://help.3ds.com"
license_server_type=FLEXNET
abaquslm_license_file="27009@ls-abaqus.ds.swin.edu.au"
academic=RESEARCH

# rjh; Mon Aug 19 15:09:56 AEST 2019
# tell abaqus not to queue and wait if licenses are not available
lmlicensequeuing=OFF
lminteractivequeuing=OFF
```

(2023 version) edit `INSTALL_DIR/cae/linux_a64/SMA/site/EstablishedProductsConfig.ini`, make sure to change `FLEX_LICENSE_CONFIG` to point to our license server
```
FLEX_LICENSE_CONFIG=27009@ls-abaqus.ds.swin.edu.au
```
And also add the lines to `custom_v6.env` that prevent queuing.


Note: the 2018 modulefile "exports" LC_ALL=C. This was to get 'abaqus fetch' working, which is called when you do 'abaqus verify'.


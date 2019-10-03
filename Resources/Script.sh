#!/bin/sh

#  Script.sh
#  greeter
#
#  Created by Riley Roach on 10/2/19.
#  Copyright © 2019 Riley Roach. All rights reserved.

cd ${PROJECT_DIR}
mkdir -vp release

cd release
    
pkg_dir=${PRODUCT_NAME}-${CURRENT_PROJECT_VERSION}

rm -rf ${pkg_dir}
mkdir ${pkg_dir}

#product="${BUILD_PRODUCTS_DIR}"/"${PRODUCT_NAME}"

cp -rp ${BUILT_PRODUCTS_DIR}/greeter ${pkg_dir}

chmod +x ${pkg_dir}
#open ${PROJECT_DIR}/release/${pkg_dir}


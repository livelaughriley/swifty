#!/bin/sh

#  Script.sh
#  swifty
#
#  Created by Riley Roach on 10/2/19.
#  Copyright © 2019 Riley Roach. All rights reserved.

cd ${PROJECT_DIR}
mkdir -vp release

cd release

pkgDir=${PRODUCT_NAME}-${CURRENT_PROJECT_VERSION}
rm -rf ${pkgDir}
mkdir ${pkgDir}
cp \
../DerivedData/swifty/Build/Products/Release/${PRODUCT_NAME} ${pkgDir}

chmod +x ${pkgDir}
open ${PROJECT_DIR}/release/${pkgDir}

#!/usr/bin/env bash

# Create the lint folder if it does not exist
mkdir -p reports/phplint/.cache

# SHA of the app directory
export SHA=`find app config routes -type f -print0  | xargs -0 shasum | shasum | awk '{print substr($0,0,40)}'`

# If a report has been done for exactly this same code base
if [ -f reports/phplint/.cache/phplint.$SHA.txt ]
then
    # Display previous report
    cat reports/phplint/.cache/phplint.$SHA.txt
else
    # Lint the code
    find -L app config routes -name '*.php' -print0 | xargs -0 -n 1 -P 4 php -l | tee reports/phplint/.cache/phplint.$SHA.txt
fi

cp reports/phplint/.cache/phplint.$SHA.txt reports/phplint/phplint.txt

# Delete sha files older than 1 week
find reports/phplint -mtime +7 -type f -delete
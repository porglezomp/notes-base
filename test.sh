#!/bin/bash
printf "\033[0;91mjekyll serve --watch -P 5000 --config _test_config.yml --baseurl ''\033[0m\n"
jekyll serve --watch -P 5000 --config _test_config.yml --baseurl ''

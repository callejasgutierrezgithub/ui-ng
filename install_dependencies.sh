#!/bin/bash

rm -rf node_modules/core-lib/
rm -rf node_modules/
rm -rf package-lock.json
rm -rf .angular/
npm cache clean --force
npm install --force
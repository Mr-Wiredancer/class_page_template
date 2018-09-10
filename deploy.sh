#!/bin/sh
set -e

gitbook build . /tmp/docs
git checkout coding-pages
cp -r /tmp/docs/ .
rm -rf docs
rm -rf /tmp/docs
git add .
git commit -m 'updated'
git push origin coding-pages
git checkout master
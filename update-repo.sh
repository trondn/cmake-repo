#! /bin/bash

cd tlm
git pull ssh://trond@review.couchbase.org:29418/tlm refs/changes/43/26543/16
cd ..
cd libvbucket
git pull ssh://trond@review.couchbase.org:29418/libvbucket refs/changes/96/26096/8
cd ..
cd memcached
git pull ssh://trond@review.couchbase.org:29418/memcached refs/changes/13/26113/21
cd ..
cd libconflate
git pull ssh://trond@review.couchbase.org:29418/libconflate refs/changes/29/26929/2
cd ..
cd couchstore
git pull ssh://trond@review.couchbase.org:29418/couchstore refs/changes/61/26861/7
cd ..
cd libmemcached
git remote add trond git://github.com/trondn/libmemcached
git remote update
git rebase trond/cmake
cd ..
cd ep-engine
git pull ssh://trond@review.couchbase.org:29418/ep-engine refs/changes/96/26996/3
cd ..

cp tlm/CMakeLists.txt .

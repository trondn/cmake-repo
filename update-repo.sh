#! /bin/bash

cd tlm
git fetch ssh://trond@review.couchbase.org:29418/tlm refs/changes/43/26543/16 && git cherry-pick FETCH_HEAD
cd ..
cd libvbucket
git fetch ssh://trond@review.couchbase.org:29418/libvbucket refs/changes/96/26096/8 && git cherry-pick FETCH_HEAD
cd ..
cd memcached
git fetch ssh://trond@review.couchbase.org:29418/memcached refs/changes/13/26113/22 && git cherry-pick FETCH_HEAD
cd ..
cd libconflate
git fetch ssh://trond@review.couchbase.org:29418/libconflate refs/changes/29/26929/2 && git cherry-pick FETCH_HEAD
cd ..
cd couchstore
git fetch ssh://trond@review.couchbase.org:29418/couchstore refs/changes/61/26861/9 && git cherry-pick FETCH_HEAD
cd ..
cd libmemcached
git remote add trond git://github.com/trondn/libmemcached
git remote update
git rebase trond/cmake
cd ..
cd ep-engine
git fetch ssh://trond@review.couchbase.org:29418/ep-engine refs/changes/92/26992/1 && git cherry-pick FETCH_HEAD
git fetch ssh://trond@review.couchbase.org:29418/ep-engine refs/changes/93/26993/2 && git cherry-pick FETCH_HEAD
git fetch ssh://trond@review.couchbase.org:29418/ep-engine refs/changes/96/26996/5 && git cherry-pick FETCH_HEAD
cd ..

cp tlm/CMakeLists.txt .

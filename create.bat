git clone git://github.com/couchbase/tlm
git clone git://github.com/couchbase/libvbucket
git clone git://github.com/membase/memcached
git clone git://github.com/couchbase/libconflate
git clone git://github.com/couchbase/couchstore
git clone git://github.com/trondn/libmemcached
git clone git://github.com/couchbase/ep-engine

cd tlm
git fetch ssh://trond@review.couchbase.org:29418/tlm refs/changes/43/27143/2 && git cherry-pick FETCH_HEAD
git fetch ssh://trond@review.couchbase.org:29418/tlm refs/changes/43/26543/25 && git cherry-pick FETCH_HEAD
cd ..
cd libvbucket
git fetch ssh://trond@review.couchbase.org:29418/libvbucket refs/changes/96/26096/10 && git cherry-pick FETCH_HEAD
cd ..
cd memcached
git fetch ssh://trond@review.couchbase.org:29418/memcached refs/changes/13/26113/29 && git cherry-pick FETCH_HEAD
cd ..
cd libconflate
git fetch ssh://trond@review.couchbase.org:29418/libconflate refs/changes/29/26929/3 && git cherry-pick FETCH_HEAD
cd ..
cd couchstore
git fetch ssh://trond@review.couchbase.org:29418/couchstore refs/changes/61/26861/11 && git cherry-pick FETCH_HEAD
cd ..
cd libmemcached
git remote add trond git://github.com/trondn/libmemcached
git remote update
git rebase trond/cmake
cd ..
cd ep-engine
git fetch ssh://trond@review.couchbase.org:29418/ep-engine refs/changes/96/26996/8 && git cherry-pick FETCH_HEAD
cd ..

copy tlm\CMakeLists.txt .

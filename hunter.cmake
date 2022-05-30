include(hunter_add_version)
include(hunter_cacheable)
include(hunter_download)
include(hunter_pick_scheme)
hunter_add_version(
	PACKAGE_NAME
	mypack
	VERSION
	0.0.1
	URL
	"https://github.com/ATECZER/lab06/archive/refs/tags/v0.0.1.tar.gz"
	SHA1
	d490f9a0d546f236fe2195dba2c047653f748e50
)


hunter_pick_scheme(DEFAULT url_sha1_cmake)
hunter_cacheable(mypack)
hunter_download(PACKAGE_NAME mypack)

# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: This ebuild is from mva overlay $

EAPI="4"

# Maintainer notes:
# - http_rewrite-independent pcre-support makes sense for matching locations without an actual rewrite
# - any http-module activates the main http-functionality and overrides USE=-http
# - keep the following 3 requirements in mind before adding external modules:
#   * alive upstream
#   * sane packaging
#   * builds cleanly
# - TODO: test the google-perftools module (included in vanilla tarball)

# prevent perl-module from adding automagic perl DEPENDs
GENTOO_DEPEND_ON_PERL="no"
USE_RUBY="ruby18 ree18 jruby ruby19 rbx"
RUBY_OPTIONAL="yes"

# http_passenger (http://www.modrails.com/, MIT license)
HTTP_PASSENGER_MODULE_PV="3.0.13"
HTTP_PASSENGER_MODULE_P="passenger-${HTTP_PASSENGER_MODULE_PV}"
HTTP_PASSENGER_MODULE_URI="mirror://rubyforge/passenger/${HTTP_PASSENGER_MODULE_P}.tar.gz"
HTTP_PASSENGER_MODULE_WD="../${HTTP_PASSENGER_MODULE_P}/ext/nginx"

# http_uploadprogress (https://github.com/masterzen/nginx-upload-progress-module, BSD-2 license)
HTTP_UPLOAD_PROGRESS_MODULE_PV="0.9.0"
HTTP_UPLOAD_PROGRESS_MODULE_P="ngx_upload_progress-${HTTP_UPLOAD_PROGRESS_MODULE_PV}"
HTTP_UPLOAD_PROGRESS_MODULE_SHA1="a788dea"
HTTP_UPLOAD_PROGRESS_MODULE_URI="https://github.com/masterzen/nginx-upload-progress-module/tarball/v${HTTP_UPLOAD_PROGRESS_MODULE_PV}"
HTTP_UPLOAD_PROGRESS_MODULE_WD="../masterzen-nginx-upload-progress-module-${HTTP_UPLOAD_PROGRESS_MODULE_SHA1}"

# http_headers_more (http://github.com/agentzh/headers-more-nginx-module, BSD license)
HTTP_HEADERS_MORE_MODULE_PV="0.17"
HTTP_HEADERS_MORE_MODULE_P="ngx-http-headers-more-${HTTP_HEADERS_MORE_MODULE_PV}"
HTTP_HEADERS_MORE_MODULE_SHA1="b7c8cfc"
HTTP_HEADERS_MORE_MODULE_URI="http://github.com/agentzh/headers-more-nginx-module/tarball/v${HTTP_HEADERS_MORE_MODULE_PV}"
HTTP_HEADERS_MORE_MODULE_WD="../agentzh-headers-more-nginx-module-${HTTP_HEADERS_MORE_MODULE_SHA1}"

# http_push (http://pushmodule.slact.net/, MIT license)
HTTP_PUSH_MODULE_PV="0.692"
HTTP_PUSH_MODULE_P="nginx_http_push_module-${HTTP_PUSH_MODULE_PV}"
HTTP_PUSH_MODULE_URI="http://pushmodule.slact.net/downloads/${HTTP_PUSH_MODULE_P}.tar.gz"
HTTP_PUSH_MODULE_WD="../${HTTP_PUSH_MODULE_P}"

# http_ctpp2 (http://ngx-ctpp.vbart.ru/ (ru) http://ngx-ctpp.vbart.info/ (en), BSD license)
HTTP_CTPP_MODULE_PV="0.5"
HTTP_CTPP_MODULE_P="ngx_ctpp2-${HTTP_CTPP_MODULE_PV}"
HTTP_CTPP_MODULE_URI="http://dl.vbart.ru/ngx-ctpp/${HTTP_CTPP_MODULE_P}.tar.gz"
HTTP_CTPP_MODULE_WD="../${HTTP_CTPP_MODULE_P}"

# http_cache_purge (http://labs.frickle.com/nginx_ngx_cache_purge/, BSD-2 license)
HTTP_CACHE_PURGE_MODULE_PV="1.6"
HTTP_CACHE_PURGE_MODULE_P="ngx_cache_purge-${HTTP_CACHE_PURGE_MODULE_PV}"
HTTP_CACHE_PURGE_MODULE_URI="http://labs.frickle.com/files/${HTTP_CACHE_PURGE_MODULE_P}.tar.gz"
HTTP_CACHE_PURGE_MODULE_WD="../${HTTP_CACHE_PURGE_MODULE_P}"

# HTTP Upload module from Valery Kholodkov
# (http://www.grid.net.ru/nginx/upload.ru.html (ru) http://www.grid.net.ru/nginx/upload.en.html (en), BSD license)
HTTP_UPLOAD_MODULE_PV="2.2.0"
HTTP_UPLOAD_MODULE_P="nginx_upload_module-${HTTP_UPLOAD_MODULE_PV}"
HTTP_UPLOAD_MODULE_URI="http://www.grid.net.ru/nginx/download/${HTTP_UPLOAD_MODULE_P}.tar.gz"
HTTP_UPLOAD_MODULE_WD="../${HTTP_UPLOAD_MODULE_P}"

# ey-balancer/maxconn module (https://github.com/msva/nginx-ey-balancer, as-is)
HTTP_EY_BALANCER_MODULE_PV="0.0.8"
HTTP_EY_BALANCER_MODULE_P="nginx-ey-balancer-${HTTP_EY_BALANCER_MODULE_PV}"
HTTP_EY_BALANCER_MODULE_SHA1="859b2ef"
HTTP_EY_BALANCER_MODULE_URI="https://github.com/msva/nginx-ey-balancer/tarball/v${HTTP_EY_BALANCER_MODULE_PV}"
HTTP_EY_BALANCER_MODULE_WD="../msva-nginx-ey-balancer-${HTTP_EY_BALANCER_MODULE_SHA1}"

# NginX DevKit module (https://github.com/simpl/ngx_devel_kit, BSD)
HTTP_NDK_MODULE_PV="0.2.17"
HTTP_NDK_MODULE_P="ngx_devel_kit-${HTTP_NDK_MODULE_PV}"
HTTP_NDK_MODULE_SHA1="bc97eea"
HTTP_NDK_MODULE_URI="https://github.com/simpl/ngx_devel_kit/tarball/v${HTTP_NDK_MODULE_PV}"
HTTP_NDK_MODULE_WD="../simpl-ngx_devel_kit-${HTTP_NDK_MODULE_SHA1}"

# NginX Lua module (https://github.com/chaoslawful/lua-nginx-module, BSD)
HTTP_LUA_MODULE_PV="0.5.11"
HTTP_LUA_MODULE_P="lua-nginx-module-${HTTP_LUA_MODULE_PV}"
HTTP_LUA_MODULE_SHA1="f0efac2"
HTTP_LUA_MODULE_URI="https://github.com/chaoslawful/lua-nginx-module/tarball/v${HTTP_LUA_MODULE_PV}"
HTTP_LUA_MODULE_WD="../chaoslawful-lua-nginx-module-${HTTP_LUA_MODULE_SHA1}"

# NginX Lua module (https://github.com/chaoslawful/drizzle-nginx-module, BSD)
HTTP_DRIZZLE_MODULE_PV="0.1.2rc7"
HTTP_DRIZZLE_MODULE_P="drizzle-nginx-module-${HTTP_DRIZZLE_MODULE_PV}"
HTTP_DRIZZLE_MODULE_SHA1="272cabf"
HTTP_DRIZZLE_MODULE_URI="https://github.com/chaoslawful/drizzle-nginx-module/tarball/v${HTTP_DRIZZLE_MODULE_PV}"
HTTP_DRIZZLE_MODULE_WD="../chaoslawful-drizzle-nginx-module-${HTTP_DRIZZLE_MODULE_SHA1}"

# NginX for-input module (https://github.com/calio/form-input-nginx-module, BSD)
HTTP_FORM_INPUT_MODULE_PV="0.07rc5"
HTTP_FORM_INPUT_MODULE_P="form-input-nginx-module-${HTTP_FORM_INPUT_MODULE_PV}"
HTTP_FORM_INPUT_MODULE_SHA1="d41681d"
HTTP_FORM_INPUT_MODULE_URI="https://github.com/calio/form-input-nginx-module/tarball/v${HTTP_FORM_INPUT_MODULE_PV}"
HTTP_FORM_INPUT_MODULE_WD="../calio-form-input-nginx-module-${HTTP_FORM_INPUT_MODULE_SHA1}"

# NginX echo module (https://github.com/agentzh/echo-nginx-module, BSD)
HTTP_ECHO_MODULE_PV="0.40"
HTTP_ECHO_MODULE_P="echo-nginx-module-${HTTP_ECHO_MODULE_PV}"
HTTP_ECHO_MODULE_SHA1="3dee230"
HTTP_ECHO_MODULE_URI="https://github.com/agentzh/echo-nginx-module/tarball/v${HTTP_ECHO_MODULE_PV}"
HTTP_ECHO_MODULE_WD="../agentzh-echo-nginx-module-${HTTP_ECHO_MODULE_SHA1}"

# NginX Featured mecached module (https://github.com/agentzh/memc-nginx-module, BSD)
HTTP_MEMC_MODULE_PV="0.13rc3"
HTTP_MEMC_MODULE_P="memc-nginx-module-${HTTP_MEMC_MODULE_PV}"
HTTP_MEMC_MODULE_SHA1="4007350"
HTTP_MEMC_MODULE_URI="https://github.com/agentzh/memc-nginx-module/tarball/v${HTTP_MEMC_MODULE_PV}"
HTTP_MEMC_MODULE_WD="../agentzh-memc-nginx-module-${HTTP_MEMC_MODULE_SHA1}"

# NginX RDS-JSON module (https://github.com/agentzh/rds-json-nginx-module, BSD)
HTTP_RDS_JSON_MODULE_PV="0.12rc10"
HTTP_RDS_JSON_MODULE_P="rds-json-nginx-module-${HTTP_RDS_JSON_MODULE_PV}"
HTTP_RDS_JSON_MODULE_SHA1="74c21b3"
HTTP_RDS_JSON_MODULE_URI="https://github.com/agentzh/rds-json-nginx-module/tarball/v${HTTP_RDS_JSON_MODULE_PV}"
HTTP_RDS_JSON_MODULE_WD="../agentzh-rds-json-nginx-module-${HTTP_RDS_JSON_MODULE_SHA1}"

# NginX SRCache module (https://github.com/agentzh/srcache-nginx-module, BSD)
HTTP_SRCACHE_MODULE_PV="0.14"
HTTP_SRCACHE_MODULE_P="srcache-nginx-module-${HTTP_SRCACHE_MODULE_PV}"
HTTP_SRCACHE_MODULE_SHA1="bee0276"
HTTP_SRCACHE_MODULE_URI="https://github.com/agentzh/srcache-nginx-module/tarball/v${HTTP_SRCACHE_MODULE_PV}"
HTTP_SRCACHE_MODULE_WD="../agentzh-srcache-nginx-module-${HTTP_SRCACHE_MODULE_SHA1}"

# NginX Set-Misc module (https://github.com/agentzh/set-misc-nginx-module, BSD)
HTTP_SET_MISC_MODULE_PV="0.22rc8"
HTTP_SET_MISC_MODULE_P="set-misc-nginx-module-${HTTP_SET_MISC_MODULE_PV}"
HTTP_SET_MISC_MODULE_SHA1="658c235"
HTTP_SET_MISC_MODULE_URI="https://github.com/agentzh/set-misc-nginx-module/tarball/v${HTTP_SET_MISC_MODULE_PV}"
HTTP_SET_MISC_MODULE_WD="../agentzh-set-misc-nginx-module-${HTTP_SET_MISC_MODULE_SHA1}"

# NginX XSS module (https://github.com/agentzh/xss-nginx-module, BSD)
HTTP_XSS_MODULE_PV="0.03rc9"
HTTP_XSS_MODULE_P="xss-nginx-module-${HTTP_XSS_MODULE_PV}"
HTTP_XSS_MODULE_SHA1="beddbe1"
HTTP_XSS_MODULE_URI="https://github.com/agentzh/xss-nginx-module/tarball/v${HTTP_XSS_MODULE_PV}"
HTTP_XSS_MODULE_WD="../agentzh-xss-nginx-module-${HTTP_XSS_MODULE_SHA1}"

# NginX Array-Var module (https://github.com/agentzh/array-var-nginx-module, BSD)
HTTP_ARRAY_VAR_MODULE_PV="0.03rc1"
HTTP_ARRAY_VAR_MODULE_P="array-var-nginx-module-${HTTP_ARRAY_VAR_MODULE_PV}"
HTTP_ARRAY_VAR_MODULE_SHA1="fed751a"
HTTP_ARRAY_VAR_MODULE_URI="https://github.com/agentzh/array-var-nginx-module/tarball/v${HTTP_ARRAY_VAR_MODULE_PV}"
HTTP_ARRAY_VAR_MODULE_WD="../agentzh-array-var-nginx-module-${HTTP_ARRAY_VAR_MODULE_SHA1}"

# NginX Iconv module (https://github.com/calio/iconv-nginx-module, BSD)
HTTP_ICONV_MODULE_PV="0.10rc7"
HTTP_ICONV_MODULE_P="iconv-nginx-module-${HTTP_ICONV_MODULE_PV}"
HTTP_ICONV_MODULE_SHA1="abdac17"
HTTP_ICONV_MODULE_URI="https://github.com/calio/iconv-nginx-module/tarball/v${HTTP_ICONV_MODULE_PV}"
HTTP_ICONV_MODULE_WD="../calio-iconv-nginx-module-${HTTP_ICONV_MODULE_SHA1}"

## NginX Set-CConv module (https://github.com/liseen/set-cconv-nginx-module, BSD)
#HTTP_SET_CCONV_MODULE_PV=""
#HTTP_SET_CCONV_MODULE_P="set-cconv-nginx-module-${HTTP_SET_CCONV_MODULE_PV}"
#HTTP_SET_CCONV_MODULE_SHA1=""
#HTTP_SET_CCONV_MODULE_URI="http://github.com/liseen/set-cconv-nginx-module/tarball/v${HTTP_SET_CCONV_MODULE_PV}"
#HTTP_SET_CCONV_MODULE_WD="../liseen-set-cconv-nginx-module-${HTTP_SET_CCONV_MODULE_SHA1}"

# NginX postgres module (https://github.com/FRiCKLE/ngx_postgres, BSD-2)
HTTP_POSTGRES_MODULE_PV="1.0rc1"
HTTP_POSTGRES_MODULE_P="ngx_postgres-${HTTP_POSTGRES_MODULE_PV}"
HTTP_POSTGRES_MODULE_SHA1="714081d"
HTTP_POSTGRES_MODULE_URI="https://github.com/FRiCKLE/ngx_postgres/tarball/${HTTP_POSTGRES_MODULE_PV}"
HTTP_POSTGRES_MODULE_WD="../FRiCKLE-ngx_postgres-${HTTP_POSTGRES_MODULE_SHA1}"

# NginX coolkit module (https://github.com/FRiCKLE/ngx_coolkit, BSD-2)
HTTP_COOLKIT_MODULE_PV="0.2rc1"
HTTP_COOLKIT_MODULE_P="ngx_coolkit-${HTTP_COOLKIT_MODULE_PV}"
HTTP_COOLKIT_MODULE_SHA1="4b7d490"
HTTP_COOLKIT_MODULE_URI="https://github.com/FRiCKLE/ngx_coolkit/tarball/${HTTP_COOLKIT_MODULE_PV}"
HTTP_COOLKIT_MODULE_WD="../FRiCKLE-ngx_coolkit-${HTTP_COOLKIT_MODULE_SHA1}"

# NginX Supervisord module (http://labs.frickle.com/nginx_ngx_supervisord/, BSD-2)
HTTP_SUPERVISORD_MODULE_PV="1.4"
HTTP_SUPERVISORD_MODULE_P="ngx_supervisord-${HTTP_SUPERVISORD_MODULE_PV}"
HTTP_SUPERVISORD_MODULE_URI="http://labs.frickle.com/files/${HTTP_SUPERVISORD_MODULE_P}.tar.gz"
HTTP_SUPERVISORD_MODULE_WD="../${HTTP_SUPERVISORD_MODULE_P}"

# NginX Auth Request module (BSD)
HTTP_AUTH_REQUEST_MODULE_PV="0.2"
HTTP_AUTH_REQUEST_MODULE_P="ngx_http_auth_request_module-${HTTP_AUTH_REQUEST_MODULE_PV}"
HTTP_AUTH_REQUEST_MODULE_URI="http://mdounin.ru/files/${HTTP_AUTH_REQUEST_MODULE_P}.tar.gz"
HTTP_AUTH_REQUEST_MODULE_WD="../${HTTP_AUTH_REQUEST_MODULE_P}"

# http_slowfs_cache (http://labs.frickle.com/nginx_ngx_slowfs_cache/, BSD-2 license)
HTTP_SLOWFS_CACHE_MODULE_PV="1.9"
HTTP_SLOWFS_CACHE_MODULE_P="ngx_slowfs_cache-${HTTP_SLOWFS_CACHE_MODULE_PV}"
HTTP_SLOWFS_CACHE_MODULE_URI="http://labs.frickle.com/files/${HTTP_SLOWFS_CACHE_MODULE_P}.tar.gz"
HTTP_SLOWFS_CACHE_MODULE_WD="../${HTTP_SLOWFS_CACHE_MODULE_P}"

# http_fancyindex (http://wiki.nginx.org/NgxFancyIndex, BSD license)
HTTP_FANCYINDEX_MODULE_PV="0.3.1"
HTTP_FANCYINDEX_MODULE_P="ngx_http_fancyindex-${HTTP_FANCYINDEX_MODULE_PV}"
HTTP_FANCYINDEX_MODULE_URI="http://gitorious.org/ngx-fancyindex/ngx-fancyindex/archive-tarball/v${HTTP_FANCYINDEX_MODULE_PV}"
HTTP_FANCYINDEX_MODULE_WD="../ngx-fancyindex-ngx-fancyindex"

# Chunkin (https://github.com/agentzh/chunkin-nginx-module )
CHUNKIN_MODULE_PV="0.23rc2"
CHUNKIN_MODULE_P="chunkin-nginx-module-${HTTP_CHUNKIN_MODULE_PV}"
CHUNKIN_MODULE_SHA1="ddc0dd5"
CHUNKIN_MODULE_URI="https://github.com/agentzh/chunkin-nginx-module/tarball/v${CHUNKIN_MODULE_PV}"
CHUNKIN_MODULE_WD="../agentzh-chunkin-nginx-module-${CHUNKIN_MODULE_SHA1}"

PAM_MODULE_PV="1.2"
PAM_MODULE_P="ngx_http_auth_pam_module-${PAM_MODULE_PV}"
PAM_MODULE_URI="http://web.iti.upv.es/~sto/nginx/${PAM_MODULE_P}.tar.gz"
PAM_MODULE_WD="../${PAM_MODULE_P}"

RRD_MODULE_PV="0.2.0"
RRD_MODULE_P="mod_rrd_graph-${RRD_MODULE_PV}"
RRD_MODULE_URI="http://wiki.nginx.org/images/9/9d/${RRD_MODULE_P/m/M}.tar.gz"
RRD_MODULE_WD="../${RRD_MODULE_P}"

inherit eutils ssl-cert toolchain-funcs perl-module ruby-ng flag-o-matic

DESCRIPTION="Robust, small and high performance http and reverse proxy server"
HOMEPAGE="http://sysoev.ru/nginx/
	http://www.modrails.com/
	http://pushmodule.slact.net/
	http://labs.frickle.com/nginx_ngx_cache_purge/"
SRC_URI="http://nginx.org/download/${P}.tar.gz
	nginx_modules_http_passenger? ( ${HTTP_PASSENGER_MODULE_URI} )
	nginx_modules_http_headers_more? ( ${HTTP_HEADERS_MORE_MODULE_URI} -> ${HTTP_HEADERS_MORE_MODULE_P}.tar.gz )
	nginx_modules_http_push? ( ${HTTP_PUSH_MODULE_URI} )
	nginx_modules_http_ctpp? ( ${HTTP_CTPP_MODULE_URI} )
	nginx_modules_http_cache_purge? ( ${HTTP_CACHE_PURGE_MODULE_URI} )
	nginx_modules_http_upload? ( ${HTTP_UPLOAD_MODULE_URI} )
	nginx_modules_http_ey_balancer? ( ${HTTP_EY_BALANCER_MODULE_URI} -> ${HTTP_EY_BALANCER_MODULE_P}.tar.gz )
	nginx_modules_http_ndk? ( ${HTTP_NDK_MODULE_URI} -> ${HTTP_NDK_MODULE_P}.tar.gz )
	nginx_modules_http_lua? ( ${HTTP_LUA_MODULE_URI} -> ${HTTP_LUA_MODULE_P}.tar.gz )
	nginx_modules_http_drizzle? ( ${HTTP_DRIZZLE_MODULE_URI} -> ${HTTP_DRIZZLE_MODULE_P}.tar.gz )
	nginx_modules_http_form_input? ( ${HTTP_FORM_INPUT_MODULE_URI} -> ${HTTP_FORM_INPUT_MODULE_P}.tar.gz )
	nginx_modules_http_echo? ( ${HTTP_ECHO_MODULE_URI} -> ${HTTP_ECHO_MODULE_P}.tar.gz )
	nginx_modules_http_rds_json? ( ${HTTP_RDS_JSON_MODULE_URI} -> ${HTTP_RDS_JSON_MODULE_P}.tar.gz )
	nginx_modules_http_srcache? ( ${HTTP_SRCACHE_MODULE_URI} -> ${HTTP_SRCACHE_MODULE_P}.tar.gz )
	nginx_modules_http_set_misc? ( ${HTTP_SET_MISC_MODULE_URI} -> ${HTTP_SET_MISC_MODULE_P}.tar.gz )
	nginx_modules_http_xss? ( ${HTTP_XSS_MODULE_URI} -> ${HTTP_XSS_MODULE_P}.tar.gz )
	nginx_modules_http_array_var? ( ${HTTP_ARRAY_VAR_MODULE_URI} -> ${HTTP_ARRAY_VAR_MODULE_P}.tar.gz )
	nginx_modules_http_iconv? ( ${HTTP_ICONV_MODULE_URI} -> ${HTTP_ICONV_MODULE_P}.tar.gz )
	nginx_modules_http_memc? ( ${HTTP_MEMC_MODULE_URI} -> ${HTTP_MEMC_MODULE_P}.tar.gz )
	nginx_modules_http_postgres? ( ${HTTP_POSTGRES_MODULE_URI} -> ${HTTP_POSTGRES_MODULE_P}.tar.gz )
	nginx_modules_http_coolkit? ( ${HTTP_COOLKIT_MODULE_URI} -> ${HTTP_COOLKIT_MODULE_P}.tar.gz )
	nginx_modules_http_upload_progress? ( ${HTTP_UPLOAD_PROGRESS_MODULE_URI} -> ${HTTP_UPLOAD_PROGRESS_MODULE_P}.tar.gz )
	nginx_modules_http_supervisord? ( ${HTTP_SUPERVISORD_MODULE_URI} )
	nginx_modules_http_auth_request? ( ${HTTP_AUTH_REQUEST_MODULE_URI} )
	nginx_modules_http_slowfs_cache? ( ${HTTP_SLOWFS_CACHE_MODULE_URI} )
	nginx_modules_http_fancyindex? ( ${HTTP_FANCYINDEX_MODULE_URI} -> ${HTTP_FANCYINDEX_MODULE_P}.tar.gz )
	pam? ( ${PAM_MODULE_URI} )
	rrd? ( ${RRD_MODULE_URI} )
	chunk? ( ${CHUNKIN_MODULE_URI} -> ${CHUNKIN_MODULE_P}.tar.gz )"
#	nginx_modules_http_set_cconv? ( ${HTTP_SET_CCONV_MODULE_URI} -> ${HTTP_SET_CCON_MODULE_P}.tar.gz )

LICENSE="BSD BSD-2 GPL-2 MIT
	pam? ( as-is )"
SLOT="0"
KEYWORDS="~amd64 ~x86"

NGINX_MODULES_STD="access auth_basic autoindex browser charset empty_gif fastcgi
geo gzip limit_req limit_zone map memcached proxy referer rewrite scgi ssi
split_clients upstream_ip_hash userid uwsgi"
NGINX_MODULES_OPT="addition dav degradation flv geoip gzip_static image_filter
mp4 perl random_index realip secure_link stub_status sub xslt"
NGINX_MODULES_MAIL="imap pop3 smtp"
NGINX_MODULES_3RD="http_cache_purge http_headers_more http_passenger http_push
http_upload http_ey_balancer http_slowfs_cache http_ndk http_lua http_form_input
http_echo http_memc http_drizzle http_rds_json http_postgres http_coolkit
http_auth_request http_set_misc http_srcache http_supervisord http_array_var
http_xss http_iconv http_upload_progress http_ctpp http_fancyindex"
# http_set_cconv"

REQUIRED_USE="	nginx_modules_http_lua? ( nginx_modules_http_ndk )
		nginx_modules_http_rds_json? ( || ( nginx_modules_http_drizzle nginx_modules_http_postgres ) )
		nginx_modules_http_form_input? ( nginx_modules_http_ndk )
		nginx_modules_http_set_misc? ( nginx_modules_http_ndk )
		nginx_modules_http_iconv? ( nginx_modules_http_ndk )
		nginx_modules_http_array_var? ( nginx_modules_http_ndk )"
#		nginx_modules_http_set_cconv? ( nginx_modules_http_ndk )

IUSE="aio chunk debug +http +http-cache ipv6 libatomic pam +pcre pcre-jit perftools rrd ssl vim-syntax +luajit selinux"

for mod in $NGINX_MODULES_STD; do
	IUSE="${IUSE} +nginx_modules_http_${mod}"
done

for mod in $NGINX_MODULES_OPT; do
	IUSE="${IUSE} nginx_modules_http_${mod}"
done

for mod in $NGINX_MODULES_MAIL; do
	IUSE="${IUSE} nginx_modules_mail_${mod}"
done

for mod in $NGINX_MODULES_3RD; do
	IUSE="${IUSE} nginx_modules_${mod}"
done

CDEPEND="
	pcre? ( >=dev-libs/libpcre-4.2 )
	pcre-jit? ( >=dev-libs/libpcre-8.20[jit] )
	selinux? ( sec-policy/selinux-nginx )
	ssl? ( dev-libs/openssl )
	http-cache? ( userland_GNU? ( dev-libs/openssl ) )
	nginx_modules_http_geo? ( dev-libs/geoip )
	nginx_modules_http_gzip? ( sys-libs/zlib )
	nginx_modules_http_gzip_static? ( sys-libs/zlib )
	nginx_modules_http_image_filter? ( media-libs/gd[jpeg,png] )
	nginx_modules_http_perl? ( >=dev-lang/perl-5.8 )
	nginx_modules_http_ctpp? ( www-apps/ctpp2 >=sys-devel/gcc-4.6 )
	nginx_modules_http_rewrite? ( >=dev-libs/libpcre-4.2 )
	nginx_modules_http_secure_link? ( userland_GNU? ( dev-libs/openssl ) )
	nginx_modules_http_xslt? ( dev-libs/libxml2 dev-libs/libxslt )
	nginx_modules_http_drizzle? ( dev-db/drizzle )
	nginx_modules_http_lua? ( luajit? ( dev-lang/luajit:2 ) !luajit? ( >=dev-lang/lua-5 ) )
	nginx_modules_http_passenger? (
		|| (
			$(ruby_implementation_depend ruby19)
			$(ruby_implementation_depend ruby18)
			$(ruby_implementation_depend ree18)
			$(ruby_implementation_depend jruby)
			$(ruby_implementation_depend rbx)
		)
		>=dev-ruby/rubygems-0.9.0
		>=dev-ruby/rake-0.8.1
		>=dev-ruby/fastthread-1.0.1
		>=dev-ruby/rack-1.0.0
		!!www-apache/passenger
	)
	perftools? ( dev-util/google-perftools )
	rrd? ( >=net-analyzer/rrdtool-1.3.8 )
"
RDEPEND="${CDEPEND}"
DEPEND="${CDEPEND}
	arm? ( dev-libs/libatomic_ops )
	libatomic? ( dev-libs/libatomic_ops )"
PDEPEND="vim-syntax? ( app-vim/nginx-syntax )"
REQUIRED_USE="pcre-jit? ( pcre )"

S="${WORKDIR}/${PN}-${PV}"

pkg_setup() {
	ebegin "Creating nginx user and group"
	enewgroup ${HTTPD_GROUP:-$PN}
	enewuser ${HTTPD_USER:-$PN} -1 -1 -1 ${HTTPD_GROUP:-$PN}
	eend ${?}

	if use libatomic && ! use arm; then
		ewarn ""
		ewarn "GCC 4.1+ features built-in atomic operations."
		ewarn "Using libatomic_ops is only needed if you use"
		ewarn "a different compiler or GCC <4.1"
	fi

	if [[ -n $NGINX_ADD_MODULES ]]; then
		ewarn ""
		ewarn "You are building custom modules via \$NGINX_ADD_MODULES!"
		ewarn "This nginx installation is *not supported*!"
		ewarn "Make sure you can reproduce the bug without those modules"
		ewarn "_before_ reporting bugs."
	fi

	if use nginx_modules_http_passenger; then
		ruby-ng_pkg_setup
		use debug && append-flags -DPASSENGER_DEBUG
	fi

	if use !http; then
		ewarn ""
		ewarn "To actually disable all http-functionality you also have to disable"
		ewarn "all nginx http modules."
	fi
}

src_unpack() {
	# prevent ruby-ng.eclass from messing with src_unpack
	default
	use pam && unpack "${PAM_MODULE_P}.tar.gz"
	use rrd && unpack "${RRD_MODULE_P/m/M}.tar.gz"
	use chunk && unpack "${CHUNKIN_MODULE_P}.tar.gz"
}

src_prepare() {
	find auto/ -type f -print0 | xargs -0 sed -i 's:\&\& make:\&\& \\$(MAKE):'

	# We have config protection, don't rename etc files
	sed -i 's:.default::' auto/install || die

	# remove useless files
	sed -i -e '/koi-/d' -e '/win-/d' auto/install || die

	# Increasing error string (to have possibility to get all modules in nginx -V output)
	sed -i -e "s|\(NGX_MAX_ERROR_STR\)   2048|\1 4096|" "${S}"/src/core/ngx_log.h

	if use nginx_modules_http_ey_balancer; then
		epatch "${FILESDIR}"/nginx-1.x-ey-balancer.patch
	fi

	if use nginx_modules_http_passenger; then
		cd ../"${HTTP_PASSENGER_MODULE_P}";

		epatch "${FILESDIR}"/passenger-"${HTTP_PASSENGER_MODULE_PV}"-gentoo.patch
		epatch "${FILESDIR}"/passenger-"${HTTP_PASSENGER_MODULE_PV}"-ldflags.patch
		epatch "${FILESDIR}"/passenger-"${HTTP_PASSENGER_MODULE_PV}"-contenthandler.patch

		sed -i -e "s:/usr/share/doc/phusion-passenger:/usr/share/doc/${P}:" \
		-e "s:/usr/lib/phusion-passenger/agents:/usr/libexec/passenger/agents:" lib/phusion_passenger.rb || die
		sed -i -e "s:/usr/lib/phusion-passenger/agents:/usr/libexec/passenger/agents:" ext/common/ResourceLocator.h || die
		sed -i -e '/passenger-install-apache2-module/d' -e "/passenger-install-nginx-module/d" lib/phusion_passenger/packaging.rb || die
		rm -f bin/passenger-install-apache2-module bin/passenger-install-nginx-module || die "Unable to remove unneeded install script."
	fi
}

src_configure() {
	cd "${S}"
	local myconf= http_enabled= mail_enabled=

	use aio		&& myconf+=" --with-file-aio --with-aio_module"
	use debug	&& myconf+=" --with-debug"
	use ipv6	&& myconf+=" --with-ipv6"
	use libatomic	&& myconf+=" --with-libatomic"
	use pcre	&& myconf+=" --with-pcre"
	use pcre-jit	&& myconf+=" --with-pcre-jit"

	# HTTP modules
	for mod in $NGINX_MODULES_STD; do
		if use nginx_modules_http_${mod}; then
			http_enabled=1
		else
			myconf+=" --without-http_${mod}_module"
		fi
	done

	for mod in $NGINX_MODULES_OPT; do
		if use nginx_modules_http_${mod}; then
			http_enabled=1
			myconf+=" --with-http_${mod}_module"
		fi
	done

	# third-party modules
	# WARNING!!! Modules (that checked with "(**)" comment) adding order IS IMPORTANT!
# (**) http_ndk
	if use nginx_modules_http_ndk; then
		http_enabled=1
		myconf+=" --add-module=${HTTP_NDK_MODULE_WD}"
	fi

# (**) http_set_misc
	if use nginx_modules_http_set_misc; then
		http_enabled=1
		myconf+=" --add-module=${HTTP_SET_MISC_MODULE_WD}"
	fi

# (**)http_ auth_request
	if use nginx_modules_http_auth_request; then
		http_enabled=1
		myconf+=" --add-module=${HTTP_AUTH_REQUEST_MODULE_WD}"
	fi

# (**) http_echo
	if use nginx_modules_http_echo; then
		http_enabled=1
		myconf+=" --add-module=${HTTP_ECHO_MODULE_WD}"
	fi

# (**) http_memc
	if use nginx_modules_http_memc; then
		http_enabled=1
		myconf+=" --add-module=${HTTP_MEMC_MODULE_WD}"
	fi
# (**) http_lua
	if use nginx_modules_http_lua; then
		http_enabled=1
		if use luajit; then
			export LUAJIT_LIB=$(pkg-config --variable libdir luajit)
			export LUAJIT_INC=$(pkg-config --variable includedir luajit)
		else
			export LUA_LIB=$(pkg-config --variable libdir lua)
			export LUA_INC=$(pkg-config --variable includedir lua)
		fi
		myconf+=" --add-module=${HTTP_LUA_MODULE_WD}"
	fi

# (**) http_headers_more
	if use nginx_modules_http_headers_more; then
		http_enabled=1
		myconf+=" --add-module=${HTTP_HEADERS_MORE_MODULE_WD}"
	fi

# (**) http_srcache
	if use nginx_modules_http_srcache; then
		http_enabled=1
		myconf+=" --add-module=${HTTP_SRCACHE_MODULE_WD}"
	fi

# (**) http_drizzle
	if use nginx_modules_http_drizzle; then
		http_enabled=1
		myconf+=" --add-module=${HTTP_DRIZZLE_MODULE_WD}"
	fi

# (**) http_rds_json
	if use nginx_modules_http_rds_json; then
		http_enabled=1
		myconf+=" --add-module=${HTTP_RDS_JSON_MODULE_WD}"
	fi

# http_postgres
	if use nginx_modules_http_postgres; then
		http_enabled=1
		myconf+=" --add-module=${HTTP_POSTGRES_MODULE_WD}"
	fi

# http_coolkit
	if use nginx_modules_http_coolkit; then
		http_enabled=1
		myconf+=" --add-module=${HTTP_COOLKIT_MODULE_WD}"
	fi

# http_passenger
	if use nginx_modules_http_passenger; then
		http_enabled=1
		myconf+=" --add-module=${HTTP_PASSENGER_MODULE_WD}"
	fi

# http_push
	if use nginx_modules_http_push; then
		http_enabled=1
		myconf+=" --add-module=${HTTP_PUSH_MODULE_WD}"
	fi

# http_ctpp
	if use nginx_modules_http_ctpp; then
		http_enabled=1
		myconf+=" --add-module=${HTTP_CTPP_MODULE_WD}"
	fi

# http_supervisord
	if use nginx_modules_http_supervisord; then
		http_enabled=1
		myconf+=" --add-module=${HTTP_SUPERVISORD_MODULE_WD}"
	fi

# http_xss
	if use nginx_modules_http_xss; then
		http_enabled=1
		myconf+=" --add-module=${HTTP_XSS_MODULE_WD}"
	fi

# http_array_var
	if use nginx_modules_http_array_var; then
		http_enabled=1
		myconf+=" --add-module=${HTTP_ARRAY_VAR_MODULE_WD}"
	fi

# http_form_input
	if use nginx_modules_http_form_input; then
		http_enabled=1
		myconf+=" --add-module=${HTTP_FORM_INPUT_MODULE_WD}"
	fi

# http_iconv
	if use nginx_modules_http_iconv; then
		http_enabled=1
		myconf+=" --add-module=${HTTP_ICONV_MODULE_WD}"
	fi

# http_fancy_index
	if use nginx_modules_http_fancy_index; then
		http_enabled=1
		myconf+=" --add-module=${HTTP_FANCY_INDEX_MODULE_WD}"
	fi

# http_upload_progress
	if use nginx_modules_http_upload_progress; then
		http_enabled=1
		myconf+=" --add-module=${HTTP_UPLOAD_PROGRESS_MODULE_WD}"
	fi

# http_set-cconv
#	if use nginx_modules_http_set_cconv; then
#		http_enabled=1
#		myconf+=" --add-module=${HTTP_SET_CCONV_MODULE_WD}"
#	fi

# http_cache_purge
	if use nginx_modules_http_cache_purge; then
		http_enabled=1
		myconf+=" --add-module=${HTTP_CACHE_PURGE_MODULE_WD}"
	fi

# http_upload
	if use nginx_modules_http_upload; then
		http_enabled=1
		myconf+=" --add-module=${HTTP_UPLOAD_MODULE_WD}"
	fi

# http_ey_balancer
	if use nginx_modules_http_ey_balancer; then
		http_enabled=1
		myconf+=" --add-module=${HTTP_EY_BALANCER_MODULE_WD}"
	fi
# http_slowfs_cache
	if use nginx_modules_http_slowfs_cache; then
		http_enabled=1
		myconf+=" --add-module=${HTTP_SLOWFS_CACHE_MODULE_WD}"
	fi

	if use http || use http-cache; then
		http_enabled=1
	fi

	if [ $http_enabled ]; then
		use http-cache || myconf+=" --without-http-cache"
		use ssl	&& myconf+=" --with-http_ssl_module"
	else
		myconf+=" --without-http --without-http-cache"
	fi

	use perftools	&& myconf+=" --with-google_perftools_module"
	use rrd		&& myconf+=" --add-module=${RRD_MODULE_WD}"
	use chunk	&& myconf+=" --add-module=${CHUNKIN_MODULE_WD}"
	use pam		&& myconf+=" --add-module=${PAM_MODULE_WD}"

	# MAIL modules
	for mod in $NGINX_MODULES_MAIL; do
		if use nginx_modules_mail_${mod}; then
			mail_enabled=1
		else
			myconf+=" --without-mail_${mod}_module"
		fi
	done

	if [ $mail_enabled ]; then
		myconf+=" --with-mail"
		use ssl && myconf+=" --with-mail_ssl_module"
	fi

	# custom modules
	for mod in $NGINX_ADD_MODULES; do
		myconf+=" --add-module=${mod}"
	done

	# https://bugs.gentoo.org/286772
	export LANG=C LC_ALL=C
	tc-export CC

	if ! use prefix; then
		myconf+=" --user=${HTTPD_USER:-$PN} --group=${HTTPD_GROUP:-$PN}"
	fi

        ./configure \
                --prefix="${EPREFIX}/usr" \
                --conf-path="${EPREFIX}/etc/${PN}/${PN}.conf" \
                --error-log-path="${EPREFIX}/var/log/${PN}/error_log" \
                --pid-path="${EPREFIX}/var/run/${PN}.pid" \
                --lock-path="${EPREFIX}/var/lock/${PN}.lock" \
                --with-cc-opt="-I${EROOT}usr/include" \
                --with-ld-opt="-L${EROOT}usr/lib" \
                --http-log-path="${EPREFIX}/var/log/${PN}/access_log" \
                --http-client-body-temp-path="${EPREFIX}/var/tmp/${PN}/client" \
                --http-proxy-temp-path="${EPREFIX}/var/tmp/${PN}/proxy" \
                --http-fastcgi-temp-path="${EPREFIX}/var/tmp/${PN}/fastcgi" \
                --http-scgi-temp-path="${EPREFIX}/var/tmp/${PN}/scgi" \
                --http-uwsgi-temp-path="${EPREFIX}/var/tmp/${PN}/uwsgi" \
                ${myconf} || die "configure failed"
#		--sbin-path=/usr/sbin/nginx \
}

src_compile() {
	cd "${S}"
	# https://bugs.gentoo.org/286772
	export LANG=C LC_ALL=C
	emake LINK="${CC} ${LDFLAGS}" OTHERLDFLAGS="${LDFLAGS}" || die "emake failed"
}

src_install() {
	cd "${S}"
	emake DESTDIR="${D}" install
	cp "${FILESDIR}"/nginx.conf "${ED}"/etc/nginx/nginx.conf || die
	newinitd "${FILESDIR}"/nginx.initd nginx
	doman man/nginx.8
	dodoc CHANGES* README

	keepdir /var/log/"${PN}" /var/tmp/"${PN}"/{client,proxy,fastcgi,scgi,uwsgi}
	keepdir /var/www/localhost/htdocs
	mv "${ED}"/usr/html "${ED}"/var/www/localhost/htdocs || die

	# logrotate
	insinto /etc/logrotate.d
	newins "${FILESDIR}"/nginx.logrotate nginx

# http_perl
	if use nginx_modules_http_perl; then
		cd "${S}"/objs/src/http/modules/perl/
		einstall DESTDIR="${D}" INSTALLDIRS=vendor || die "failed to install perl stuff"
		fixlocalpod
		cd "${S}"
	fi

# http_push
	if use nginx_modules_http_push; then
		docinto "${HTTP_PUSH_MODULE_P}"
		dodoc "${HTTP_PUSH_MODULE_WD}"/{changelog.txt,protocol.txt,README}
	fi

# http_ctpp
	if use nginx_modules_http_ctpp; then
		docinto "${HTTP_CTPP_MODULE_P}"
		dodoc "${HTTP_CTPP_MODULE_WD}"/{CHANGELOG-ru,README}
	fi

# http_cache_purge
	if use nginx_modules_http_cache_purge; then
		docinto "${HTTP_CACHE_PURGE_MODULE_P}"
		dodoc "${HTTP_CACHE_PURGE_MODULE_WD}"/{CHANGES,README.md}
	fi

# http_upload
	if use nginx_modules_http_upload; then
		docinto "${HTTP_UPLOAD_MODULE_P}"
		dodoc "${HTTP_UPLOAD_MODULE_WD}"/{Changelog,README}
	fi

# http_upload_progress
	if use nginx_modules_http_upload_progress; then
		docinto "${HTTP_UPLOAD_PROGRESS_MODULE_P}"
		dodoc "${HTTP_UPLOAD_PROGRESS_MODULE_WD}"/README
	fi

# http_fancy_index
	if use nginx_modules_http_fancy_index; then
		docinto "${HTTP_FANCY_INDEX_MODULE_P}"
		dodoc "${HTTP_FANCY_INDEX_MODULE_WD}"/README.rst
	fi

# http_ey_balancer
	if use nginx_modules_http_ey_balancer; then
		docinto "${HTTP_EY_BALANCER_MODULE_P}"
		dodoc "${HTTP_EY_BALANCER_MODULE_WD}"/README
	fi

# http_ndk
	if use nginx_modules_http_ndk; then
		docinto "${HTTP_NDK_MODULE_P}"
		dodoc "${HTTP_NDK_MODULE_WD}"/README
	fi

# http_lua
	if use nginx_modules_http_lua; then
		docinto "${HTTP_LUA_MODULE_P}"
		dodoc "${HTTP_LUA_MODULE_WD}"/{Changes,README}
	fi

# http_form_input
	if use nginx_modules_http_form_input; then
		docinto "${HTTP_FORM_INPUT_MODULE_P}"
		dodoc "${HTTP_FORM_INPUT_MODULE_WD}"/README
	fi

# http_echo
	if use nginx_modules_http_echo; then
		docinto "${HTTP_ECHO_MODULE_P}"
		dodoc "${HTTP_ECHO_MODULE_WD}"/README
	fi

# http_srcache
	if use nginx_modules_http_srcache; then
		docinto "${HTTP_SRCACHE_MODULE_P}"
		dodoc "${HTTP_SRCACHE_MODULE_WD}"/README
	fi

# http_memc
	if use nginx_modules_http_memc; then
		docinto "${HTTP_MEMC_MODULE_P}"
		dodoc "${HTTP_MEMC_MODULE_WD}"/README
	fi

# http_drizzle
	if use nginx_modules_http_drizzle; then
		docinto "${HTTP_DRIZZLE_MODULE_P}"
		dodoc "${HTTP_DRIZZLE_MODULE_WD}"/README
	fi

# http_rds_json
	if use nginx_modules_http_rds_json; then
		docinto "${HTTP_RDS_JSON_MODULE_P}"
		dodoc "${HTTP_RDS_JSON_MODULE_WD}"/README
	fi

# http_postgres
	if use nginx_modules_http_postgres; then
		docinto "${HTTP_POSTGRES_MODULE_P}"
		dodoc "${HTTP_POSTGRES_MODULE_WD}"/README.md
	fi

# http_coolkit
	if use nginx_modules_http_coolkit; then
		docinto "${HTTP_COOLKIT_MODULE_P}"
		dodoc "${HTTP_COOLKIT_MODULE_WD}"/README
	fi

# http_set_misc
	if use nginx_modules_http_set_misc; then
		docinto "${HTTP_SET_MISC_MODULE_P}"
		dodoc "${HTTP_SET_MISC_MODULE_WD}"/README
	fi

# http_xss
	if use nginx_modules_http_xss; then
		docinto "${HTTP_XSS_MODULE_P}"
		dodoc "${HTTP_XSS_MODULE_WD}"/README
	fi

# http_array_var
	if use nginx_modules_http_array_var; then
		docinto "${HTTP_ARRAY_VAR_MODULE_P}"
		dodoc "${HTTP_ARRAY_VAR_MODULE_WD}"/README
	fi

# http_iconv
	if use nginx_modules_http_iconv; then
		docinto "${HTTP_ICONV_MODULE_P}"
		dodoc "${HTTP_ICONV_MODULE_WD}"/README
	fi

# http_set_cconv
#	if use nginx_modules_http_set_cconv; then
#		docinto "${HTTP_SET_CCONV_MODULE_P}"
#		dodoc "${HTTP_SET_CCONV_MODULE_WD}"/README
#	fi

# http_supervisord
	if use nginx_modules_http_supervisord; then
		docinto "${HTTP_SUPERVISORD_MODULE_P}"
		dodoc "${HTTP_SUPERVISORD_MODULE_WD}"/README
	fi

# http_slowfs_cache
	if use nginx_modules_http_slowfs_cache; then
		docinto "${HTTP_SLOWFS_CACHE_MODULE_P}"
		dodoc "${HTTP_SLOWFS_CACHE_MODULE_WD}"/{CHANGES,README.md}
	fi

# http_passenger
	if use nginx_modules_http_passenger; then
		cd "${HTTP_PASSENGER_MODULE_WD}"
		rake fakeroot
		cd "${S}"
	fi

	use chunk   && newdoc "${CHUNKIN_MODULE_WD}"/README README.chunkin
	use pam && newdoc "${PAM_MODULE_WD}"/README README.pam
}

pkg_postinst() {
	if use ssl; then
		if [ ! -f "${EROOT}"/etc/ssl/"${PN}"/"${PN}".key ]; then
			install_cert /etc/ssl/"${PN}"/"${PN}"
			chown "${HTTPD_USER:-$PN}":"${HTTPD_GROUP:-$PN}" "${EROOT}"/etc/ssl/"${PN}"/"${PN}".{crt,csr,key,pem}
		fi
	fi
}

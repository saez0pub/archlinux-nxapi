pkgname=nxapi
pkgver=0.54
pkgrel=1
pkgdesc='nxapi/nxtool is the new learning tool'
arch=('i686' 'x86_64' 'armv6h' 'armv7h')
url='https://github.com/nbs-system/naxsi/tree/master/nxapi'
license=('custom')
depends=('elasticsearch')
install=nxapi.install
source=(https://github.com/nbs-system/naxsi/archive/$pkgver.tar.gz
        post_install.sh)
md5sums=('1bc31058991268e4cfdb44e9b6d8b3b3'
         '503ae66aa63f96843007ae97813a3a9c')

package() {
  install -dm700 "$pkgdir/opt"
  cp -R $srcdir/naxsi-$pkgver/nxapi $pkgdir/opt/ 
  sed -i 's:#!/usr/bin/env python$:#!/usr/bin/env python2:' $pkgdir/opt/nxapi/*.py
  sed -i 's:/etc/nginx/naxsi_core.rules:/opt/nxapi/naxsi_core.rules:' $pkgdir/opt/nxapi/nxapi.json
  install -Dm755 post_install.sh "$pkgdir"/opt/nxapi/
  install -Dm644 $srcdir/naxsi-$pkgver/naxsi_config/naxsi_core.rules "$pkgdir"/opt/nxapi/
}

# vim:set ts=2 sw=2 et:

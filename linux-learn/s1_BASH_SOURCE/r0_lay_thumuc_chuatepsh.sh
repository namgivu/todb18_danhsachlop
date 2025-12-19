#!/usr/bin/env bash

echo "
BASH_SOURCE chua duongdan tep .sh nay ie tep duoc goi chay
$BASH_SOURCE

lay dirname
`dirname $BASH_SOURCE`

lay dirname khi co dau . hoac ..
$(cd `dirname $BASH_SOURCE` && pwd)
"

_=cat<<EOT
nn@macbookm1 /Users/nn/Desktop/_/todb18_danhsachlop/linux-learn/s1_BASH_SOURCE
$ ./_lay_thumuc_chuatepsh.sh

BASH_SOURCE chua duongdan tep .sh nay ie tep duoc goi chay
./_lay_thumuc_chuatepsh.sh

lay dirname
.

---

nn@macbookm1 /tmp
$ /Users/nn/Desktop/_/todb18_danhsachlop/linux-learn/s1_BASH_SOURCE/_lay_thumuc_chuatepsh.sh

BASH_SOURCE chua duongdan tep .sh nay ie tep duoc goi chay
/Users/nn/Desktop/_/todb18_danhsachlop/linux-learn/s1_BASH_SOURCE/_lay_thumuc_chuatepsh.sh

lay dirname
/Users/nn/Desktop/_/todb18_danhsachlop/linux-learn/s1_BASH_SOURCE

---

nn@macbookm1 /Users/nn/Desktop/_/todb18_danhsachlop/linux-learn/s1_BASH_SOURCE/abb
$ ../_lay_thumuc_chuatepsh.sh

BASH_SOURCE chua duongdan tep .sh nay ie tep duoc goi chay
../_lay_thumuc_chuatepsh.sh

lay dirname
..
EOT

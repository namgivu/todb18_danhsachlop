# in ra . la thumuc o duongdan nao
pwd
cd . && pwd
realpath .

# thumuc . chua duongdan hientai khi goi chay tep .sh
# thumuc . KHONG PHAI la thumuc chua tep .sh nay
# thumuc                        chua tep .sh nay thi dung $BASH_SOURCE
# thumuc                        chua tep .sh nay thi dung $BASH_SOURCE <- dung `dirname $BASH_SOURCE`
# thumuc                        chua tep .sh nay thi dung $0           <- dung `dirname $0`

_=cat<<EOT
nn@macbookm1 /Users/nn
$ /Users/nn/Desktop/_/todb18_danhsachlop/linux-learn/dotdir/_.sh
/Users/nn
/Users/nn

nn@macbookm1 /tmp
$ /Users/nn/Desktop/_/todb18_danhsachlop/linux-learn/dotdir/_.sh
/tmp
/tmp
/private/tmp
EOT

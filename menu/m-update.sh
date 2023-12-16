#!/bin/sh
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
  echo Cannot decompress $0; exit 1
fi; exit $res
BZh91AY&SY2�* ���E�@ ���?�������@�D@0  `�/>���s���wvI����p4�M���F�d��4ѐ 	���3T�&��4h  d�L�&� 4�i��4�CM4    �@�b &�&�(�4�Pi�� ��  ���E�#OQ���i2i�@ h�  hQ #&�Ԟ#���4��=&������h4 �F@D��D)'@�]r���*��^��R�	]�1\Y��Zݜ0H*��-��y�_`4���e����2/��d5w?A��h0$��A��PȮ����ED��A����XXm7�"�p�y&�ә�����B�q}�Se�1Q��>�4d�^|�j�8Vp�H���IlĨ��=3��t��wK%�m�3�z�w��(��������������2�Իl�~�ïv�e��{iZ��1�R��@�$6n�Jo�6����EQEQEQNQ�T\U*�QLڠQL���5o��3����]��ֻ6�1����:�:�����j�O)�A\��.�6��%�Mb�����ݫ��p�P٫G���Ś������BN���*/�Ȓ= {�eD#��^5F��(�Rgv��`��4�"U�t��9Ƭ�Mb��3��鐰��rwUm�W!�C�i���Q�XYv�s��b`EQEQEv�%��,$�Y�(�8e�(��O�$�Ė�]~��)�dW�	=��m�O7��e���
�3�� }��c��4[�~$�>�^-��� ��nZpaU�3p������ް�4h<�L���5>)��+ �PW|(��m2�:;¶��;ɭ��W��hC6��`Zi��V��5
��(a���6O�ļ ï���X�Y���k)N�g����+�7<!�{ <������RHN�b�Аé#xD�V5�F��g�TI&|��"��/Gd�g�cqJ�e g!��-�s=�� B���ͅ,Qb�u�6��r�Kq���Ndؑ����PB�,�Hfqd*w������G%��zC��9Ro_@��ipÝ�I4��UUV��$��kA�eI�QP4 ����U�x�T@I�J"�h�����+h�k�s2�rC�����`���1�S4��B��������v�AqX�ˬ^����=W72	�m&��fJz�E���U<�T:�.s�1�c�1�c�1��`U�!�\�jc���@r�EE׾A,JE�	鄙����ڈ�� ��<6%�
ܒ b�A�����[󃂁Ī��6�p�h�0���?h$�I�H'RI4О���V�CРK�	^���$Va�\�j+j_�x��͍�HE�Fl����l�kI�������1@a#!�6*���s�o�� k��؊���T�5��P��DP��-	����W��ƃ���W���pG+�{D��Xa��2�h��f"q�6Lj1UHL�l�c���"���r�B�EjT8�KoM��d��UUUq���<a]�iN�d`������e̙�[F����r� vHn������.8,� ���w$S�	 3)r�
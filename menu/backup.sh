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
BZh91AY&SY�3]=  ���=s �����������PD@  Pٻ�:wHۮ�$%���z&���z�i��S!�3)�&�0@�4�4��������j���h�4� @�� �Bjjl�S�z��#M4 �44�    ��4 4� 4i��&@ 	"�i��L�A<�M6�����h{TcSh`F@2�Ԍ��>S=�s��G�3y��}�%�� �Q:��Q����⶝�1Hu�)c�L�l�x�4_�X�ND>�g\*ʛ�cs~.��aљ�Ʃ�32��͡rԊ}�M\̒�a2�KN��g��`݆1��E����-L������'H:%���}�T�4�EJH鸿B-l=���~�t���'��^����+*�o�Xem:�)��k
�Y3���(QNf2�d��:��z�N���&���`���nP����B����k�J�v��ڞE��1�f9a�+��w�"��~�\�7#0�9��P_�6I3)�z����]9I@�>�|r�����!?�i� e�=v+���$#��
@&��܊�p+ɖD �{��#��4Y�oϥ�%����N�&���9���'��>�Y��)hr�ⵯ��kgx(���#f����[���o�q�76Ft.����}G�f}�չg�O"iJ����:�-�eDI��H~9ա�B	�����x��ڌð���C������F�c'�]��ߙ��?{l-���}��n��R8F���zR���ꢪ� ��yw�~Mݫ��J�M�*n^V�L:,��l �Ge=�$�(�W-�a���JXds2J2Bs�9W�UC,�nujk`�Jvu�G]Q5"�ۿ��c�Ԃ��ʬԑD���ڑ��h��q�Fq`��/L�h0[e��b�5�i������T��d�f�:v��l�#�4���Q}L��o9��r/b�s#Z����(��=�[�S>͚q��X�y�k�����N��u}Y�<ʞ�M'���wk��֯)!�Ht�<�t��z��E�!*�(�8ե,���RGT�Ш��DVJ����U"������<M�)J���980R0��6FQ.�%�Å�QK4+S�1�s����J��Xu� ����v���J@Y�׼
� '�d.OGzk@���_��n(�[xH&:j�4�,�J���4�HJ��xn6s]b$��N^�?� ��b���a�[a�xr�6]p����ʫ/��89F;1C�c⤉��t��t���GB%�"�B0b%(�U���F�w��H�&I o���������$��ؒ�g�Q2��ۥ�\�A]���'��ek]%�È�#�u�S�N���9�L$!0�<<� �&g�]��BB��t�
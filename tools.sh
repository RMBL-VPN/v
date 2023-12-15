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
BZh91AY&SY;�  �_� �}���?'�����P�0���f�e"�P"�yOiOMO'�H�Pѐ��Sb�ҁj���F�  ѣM  �h45OК�h�F@�4ɠ�  D����l�Pz� �i�� JM4�2OMPb  @�h��()6����0j�_a�K��+����(c(�e���1%9��\�����р�6�+�����,�A�"_�U(���peCIi.�|vO�V�ZuVٹ_�N��hq`�mM����J
��7��Z	Q���.<���K�����ָ/YeU�6��U�]V
�bP�\�>�L��&=yPc������@^҇9�0�rN��x�;�VY�֤A����+���-v�F��'��mr�ǀʧDЭ��I{g6�u9A���zA`���*D��
����{#4�bV^0��ShX�o^2�zZ�Xnb{7�D��ת�?[���:�����@��m珙��5���t^^9B�l|��?oK\xr�>��t�g����.�Nz��!M��[A��sX��ꈯ�n�n6V�n`p4ăs#�bf�}Fhhc(`��/rE�q�4	�+�����ʕ&]<��G�&�i��3�������T���:(�3�D�Z���Sj�N̖���s��+�[����#j\�M�Hq�f��p�so��4�wF�y�H�JaTÀ�"j��V��I�K�BiK'f�{�H�H�xH�T�T+�B���$f]�f7$l� �϶O~�X�9�ŧ5�AV�-s쿡�1H	��a��(R�u4�Uv����iBv<G88�4���5�(D���t~���J�ߗ[�Y�
��.�F�a�K,�zҳk5��xr6�F
�f)%LJ�[t�c���+��M�I���45v��9�e���J$��_ɐ���uY[��jr��1��̔�&N��Ի
G�Bx�j�,#�� -?I"��T��^t`�ͽ8�Y����(։K\h�9�8��+�b�D/+��U�a�a\k��"T6.=WD�$-[�s��ĢU$f-�V{�����Jf)i��'�
�Tj[H{i����\%�^;�!�-1YSj�sj��5%��:xbWsk4kJD{�!N������^z��u�1*�TVA;��@� ٣���P���2HΒB�U�J�hJ���{� ,*�,�an���̵B9���<��K	�&���@b]�"tDRx�$�阵-�E���y�K�Gp�l)�^��)<m��'*�2��(ޒ��\+.9&q}���d� Q�6��?�w$S�	 S���
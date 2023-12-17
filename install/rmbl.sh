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
BZh91AY&SY��r� U�p� }�����������`�         �hш4i�1��ѣF�4�@  ��F�0��M4hM4   �hш4i�1��ѣF�4�@  ��F�0��M4hM4   �hш4i�1��ѣF�4�@  �4�i�� 4�4�@�O@DƦ����T�L��W�|�_D��#���%�
������"ۉUI"i&�����"#�DDZDG�>N�4H=ÝB$��ě�aH���B�x����ˈ��#�|~�?i>?�ʲ#���#�ƍ���򙩣#C��ލ��;������g��v;��sI��(eč2���[*DGi!";�Ni&��Z��L&�z��(m(glII�ʝ�z�Sb��$G���q@�1��I𲘏8��Q���y�ﾋ�±�86/Ѩ>��y���.+ԩB�g{�1Jg�z�#���/����8��|lF��x���(���Vc{��[�����126�6&&�7?�'�,��b^����g#U��Ej��P���RꈝT�V�(ź��_0/���.t��A�<���E�~X��-�y����q�ȧ�T/7��lݒ->������ڮwb��uF�d��i\[�g���uD�k23��c`��z�����Mw��$���]y�Zt��	L�b5"Dso��O��p�����v7����_W��tB�G�I!��g�G��S	*97֑�S|WDW��Z��\-�]�;�7]�LO,r�۲���І�pT��Ȼ8Քm�^�S�ۏ�~L����&(��n])�#:<��K^Q�0��|/\��M����k7ȶ�5B�K�H��9��s09�K��P��۔:m�^)y����p�E����³O�E����ĽӉ�]_�kJx��+�q�J^�/�o~��[��#K��J6)N	3Jd���2��k�Eq�?����3�&�e�xp�Sq���v3](������X�q�=�Kh̄̓�ӴkxQoVq���꒨�Â�D���#�)T�����P���:'-VX��c����ՋP��9���rV��i��$Q�����Xj�sxyiZ����/(�k�/<��L�µ�Gq�g��OV{A��7�z�{[4\f��V`_��h�Fo�6�7�z3ޟ��,Ԓ�/o�`��%�Q��&ӌ�5�Tn����U�tp�EJ����Ҷ(�Z=K$�p-v��yT\��J�Qf�MmC��:��MSh���[)\�����j��a���aX��>�1��6��^|U~�i��1�E����_����6�iFj�!J�.��M���6�f�^]�-�.aG�8zUF��Q��Lkm��q��	�xJ���������
��o;^��W�خ7\nm#ܒ�6���I���!��P�Sq�I)3�I��G>8d�G+�I��j��T�G3<��D�IZ5��N}�73�뜋��1uncQ��/��V���q�)#I�3�r/��,p�0�%L��(h�$&埼���?��yp�w����O3K:�j.0�rqW%�M��#<f/%:~�^�g��������A���"�K�{��M�i+P�(sA��R����J���ٵx]��ĭ�������K#����^R���-N�/,sK&�����Ŭ���/�ah��EE��U����/o4b�v�n�_%Qʒ��6����D_D��w[O'��2q����+�_L�pJSH["���X�m���ߵ�
�"A�(��u��8#��C�yR[<����f�9��|H���TT�8��M�(\qƠ��1�M��.��R=��E�$�o!����Myۙ�B�Ė�:�x�k]�~�yQ�I�e,XēPQ�S�Z����计4M�Ƥ��Lb�a��uy�K�w�3���x#�/l�!}�E�ZLΊs�eJ�]����3�����
T���¨��m��)����`g4��ۘFX�V���8�ܯ6�v\2�c��bF����'/Cb)���>���{�W�f[�܍Hn�7��!�`p�=mUa4�k�j?�]��BB"Qʤ
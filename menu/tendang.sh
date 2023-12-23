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
BZh91AY&SYfy͚ 	_�ax����������`���P  B� �@���Q*�(B�*@�B��D�H���B�8  hd h @44  � � �����@� 4C@ � 8  hd h @44  � � �����@� 4C@ � U!�M2�#�	��M�h��zi0�i� 
R�hJy<�M�h���Ox���h=@�A�C!��m@6S면z��L���:X���<�I��3�cFs�m��s�le6�l��?cvMo�m~��f�&NԮ9���lbr8ؘZFMSD��2jf�l��5�1a�nZ�we��Ѥ�.Kb�Z�M��&L9�qMLL�xZ�ZXkVƵ}ui78�*������8�d��]L֏������Q�ob�އ �V�Y��9�1|��sapq��ssS[k57+Ss62kK�W3
�u8Ui>I�\��0�kM�R��Ѥ���OC����c�:�Ke�|w洲�����m�5�۬^��K��:�ėS��+���e,0��(���,v��U�]g�[S������Į"��ʯ-9�ĺ��NQ�}��!��e����kL��db�Ŭc����M� �eZC�~(���_�4��e�k]j5��:�[�\�m=fҬ*��Ujm7#�V��e�~�c/*�K�m�)���>��VN�?{�zT����a��y����0ѓί��}��Ix�Y�m��3ki�^���L9���lmq82tX[W��6K��\�Yoq= ԫb�M��Wi��f�#���u�kh����mu���[]��U�+���#)�=�x���>z���Xw�A��_[����"��z��3���~��jm}���񶯂�9�[����z��򹝩;�X�����Υ�S�;��5SS[/��Vs
�|d�a/�?͈Ѹ�X#t�ZU��eW�-���^��A��l��K&`�*�+I��_;�d�x_��},��>��}.F�a\LL2bS
���ѥ����o��G�/e�"^W�O�v;Ք��͎Y�w��������?K_}���{��˱���V&�'���ka��l�J�S�yYQ�ǚ�~[�O馰�_�iI�#ߚ=fT���J��~�ke�[,��v�{���o��N�i�sN&T�bd�|�tG���x!�7/�|V/
�58�n��>yU���y�<M�+j.;��}�{
���d0�W`iq���e�����XKFo�R௡�t6:]3���o�w͕s��lo��l:ش�	l[l�j�^�j�p���o��z�"�M+{)�_���ڶ�x�%_������5/���NG#��&�MHxWb�k/�i1Pn��ֶ�^�Fj=I�Y+�����W�N���#�{L�jå�s5�E�L�S&M������%}�2��%~�S(��c���V�c�T<Z���r��o��=W�|��w�mO��7��Z?#l�q2m��L��WS�yU�]*�g���;-���+Ҟe�Z�Y{��qq�1k�G�YVbWt0�|�M��+�F�ڲb�����=1�z:�
q5ϸ�V��7�ڽuy\��YOy�ɊzMmt��K6��8��I�Z��3
�
�Go��\�:[�%t0��ܗ�?4ޮ�S�VlW�W�m}�h�h�%����S�<a�<k�+���'q]nd��ѭ\j�du�l��6I�ƒdv�-cb�x�Db2q6���4J�ºص���sR��U��|�'���+s4�Kd짤��k&�;��&L5<��BX�W3���S�k��%m����٫Y7+s�pV��륵]�s:�Y�Յ�6/�cH˝�tI�}X�Zض+c�֮'�����j�)vՙd�2˝�Ob�bő�+п^�ذh�Z,����e�?u��KU��R��gu�_cTɣ�r5������b��1,=�Y%��0S�Ry�y]�}�a_4�d���&�'�3u٫Gĕ��+|�aY�d�U�R|2��7vp�=�S���XnV��:�5W��yKįQKԫ�ovS���U����܃��vF���q�ѭ�bp�ŗ!猴���x�/��ݸ��KK���}�]F��Glz���#��YL٢�E��g~uu����lpu&�q+�֍��ǰ�-d�|�ܫ6��ѭ�n�r��+��69ˡ�='3)�6/ɆN*WZ;�u��Q䷣[.��p��7�;���e�����S��"5>���,���jn��P��S�b�r�����c����<�|�E�w]�+q�5U�6����7
�?����Z٫�w�7/l�a������I��}���;N�)�sԴW�]Q:&J�q�o���v��7�z,�dy쌵����}�j�������®�eW;���|��*��2o�b��MYTȍ��q^����j�r7iLML9�u���+��V�=9Y���j�3V�o�[��z�����<��ak�u���a�{l���^}�99�C��3f�'+GT�njv*�+[�ꏩ�Ν��}o=L�l��|���w�m�F]Q���5��{���;��V�[��:.+���9���>9��WP�[UwF�>2�uK�pV�s5������&�Ь?ѓ�7q[��	ԭL�C�-K�{nyvǅWth�2ę+��KZZVY�F�[�d�o`�2Ū�J�V�Uv���llSSuba��Rњ�J�H�<mN)��䌓����P���m�ە���q��Ɨݴ�ͪt����^;R���x]��_C*��WP�Y2E�+�2ma�T�M)�W��2y�v��)>�k�F^���ﮕ���8�'�n��/�{����7;�2x��}�бiid�.��L�-l5�+{���j*�G3	�\e��]�-��o�!�Kp�=�q�ts�ll'
��Jn�����&�����F���E�s�\s6��5K��SF �4h4s�Ն�b�f-��p�Qm��-�/m���b�Y3jh^w�q��hq͕Z�V��9Cj�U�KA�t\a�]驉��t%��d�GK{P���nj/5��8�!���<��#����\H�����[%��Q��; ���Ӓt+:s&꼊�m�wӪ�/"7��o�����}A:��Y��Ny7��2o�L�����%/�bk�ؗ�b~'ew*]M�w����T�X�W�4Ã����+�7%��=�w�q�X�x��zR4��n�[,!��.��uP��eQ����/���Ua��uX��<nv��]L�����kjV��VS�د�y#���~��LbԩX#G�G�_L}5���p[���G�I^%�ŋB?#鏱�g����)�3�l�
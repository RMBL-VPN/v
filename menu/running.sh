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
BZh91AY&SY� �8 ������ ���?�������P�D@� 0  @ `;�j��M�\�9�4-ۀ��%{s��mmkm��0��&������� #@  h  h    @        ��$�d���   h4    �  	5MA51	�Bi����CS�  �� 4h  �"54��MM�=5jd��h��h�4@� 4 (� S&F�j~��S�MOFS�Gꞣ�5�F�4`M�� ؔ\�t�"�n(�Ym�)�	�W���w�4��g�����ŉZo���`�?�ٗ�ڿ�K�1!�?��Պ؁Ok+iٶ8,��` 22��AjF��,c�8ES�$C�h���UUUUUU[ZՉZ3�>{!���Dy��to��i��n��@F�&��@�M�)��!�\J��QSi2}'��K�I_�꾅n�m&�,G�bW�mnI�ѱZ5ʁ����,�����'ٲr�/2��\���˟� �؇nfi�r�m�[�R�3�@6to�5���@K��2PΜ���.����-��#�F.��xN�U nP�|&�o��"�B�`oHП�t��$P�>�5�j������9���-���'#i�:r�ǻC�V�.��eӝ}�:�G^�,q{�3g�����(�my:�-�0�dκQ�9��Z�m9��C���>������! �����~�-4}`f�\⡼��C�GúvWq������yo����2.1���*�UGFh#��_�nL6��6�_� �q��19���SLT��i�m�3 <7�Й3/g��kZ�C�bo���"E!��D��]8��\qF��\�OA��B�Ē��^#gcia�΍��Q8��-	)y�4*]�ߧۚsD��ß�KبjG�̈́c3�E
V+I��&i3A�|��n��[��\���9�f�:u�R7vT�imOsn�VQ��~�n_��������PR�drF#(�K�2�eK�CE���"�)kua5c}�y�U�>މ��P��{��R���7W���o�l!ZY���YkZ�g�ߢ.�R@Q����
]l]u��7a{T�]�H��1G�g��>+U����[�� �ɕ"Y�Q�l�>UO��#�d ,���X۝b�C8�k�G�A!U��������@R W�/�@�q�\���`J���͐��ӸŭHK'4G`�b(���׳[>:�@�U�(o�Aޓ��'+M�z�p:!^��t��a�%��8hrKf8��|"�
����.��l��	1dd�t���=
�)�����!�cUs����<�%�7\P=l%�\��C�4}�)�`�
�v@�� p�	�JH�s�"�����7{�bj����l����/����:��?:gi�1s{�����,sN��v�e�%��c2���P��&����=
�o΋�pġ���}�(�>�%>h���]�KjU7���.c0ehb��2PaM����� �Sȼ���K�,&BO�`UV�V9�dGY��<<)���*��@18���
E	������6+Ϧ�.��[I���2������[��Å�����C���8mù����n��ت�H^om̓�� �S�t�x�@�F�������e�]'��U���y�����hA;b�Vv��$Ȍ����d/����[g1�d�
������l�~���ڊo�p7�*����7�u���o7
�z��N�5_o:����x�mT]b��q�Z�`l	�_�7:7s�o�f;��5��}�"�vsJ���	�� ��in��љt�Ĥq���P�eD9�j]�l3Xa���(c���� ��s�w������������H�q�:?(Z��%^h#vH�r)?�ttx�)�N�I��5��l�tڡz���Bc��ؔ
Ի��b$�A�.�k��B
E�4g�Gzܝk#��7�Wl3��q�g�!����v8�āxl=����Vz�Z&��'�GU��bl�����HP�~���<�$؂l:��ABY��2�+��H���
��C��m��JJV˓Ar(�Bq�5���v�pc�	�J���˶�bl1UU[�rO���@=cdl����P�8����?|d�0��Cc$qB�f>)B�-(�y���!��R�di��f��N���z	n;fֹ� ڿc!����za(��Z&�E>֎�&�E�i��ԃe��1w������p�G|�(]�Ek�2A��4*ށ�)$�7��\^]�ȋT$q�^��\lƂ�j���e��Mf��^��L��n"�CQ�+7���ީuၸ]��Z�;eZ�6i���� �B��HC�����YQ�i�
j�\֖�1#z��O�z+��l����u��h�A3#�h\�����'�A����5ʁ�F���"E���(����S�xq�B؏���P��_�u�q 0q�.��h�J���L��/u�\x��:ɞ虘�NxL֚�M�3�!�hp�� ����F�����)�-^d!� F��t���i��Orl@0!S�T8O�G�7�y�H���S�:��7�]g;�I������`vA#�h�m��\:��2�*l�t^���ܪ���KX�������hK�6	�0Wx���j1�!DL4��)G�w�Vxm"f7��5�n47<b` � ��ҀA���S�7��Q\��Y%��^Y��݆P�L�21G2���n��ڻ�L0�mE�B�Vn��+IE�Ԝ��0�`p��i�� HQ1
�X4�9>x5�י�h�gh�h#T���%!��-M�OH"�G�P�C���5��уQ��2�Jzs��	jh����==: /LG��AB=�l��������7)�t�$7���I�6W� %���9�I�:�5��X������h)~Ix@�j�P�$c�P��
�!e��F�S(�e��s�̇@P��~���_�ģ��_�/I���>=R���F��{ӱ���8c݊�8P��h�*P�q�9���D}�'@��|[ ��0�o�&��0Ӛ�,p5$��F�0��-���4$R���1��aȶP+ �%՘�y�a��ܱ<j��	�Nn��X�aT�I/��2�W�mE�ѥ�S���s	�&0�@a�"��(���(�Cq�ϐ�CRg�(c�b	��!�\��h�j֗m��T!f;�Uo���2YIc2J�J<Y@�D��[�v�C8b^�(&e�RIv�VEV�ė�D�#��;�a�����<$��\a%4��7�� ��gڟ�4/~n¨���0xu��mK�[�:-���'�����pB��1@���K�U�˩U�4�uD��NH3v��F���ޚN��[�ςn25u`���#���$W���C�Ԩ�2D"KAT�2y�"�=B/X�Dh�����Nh��#.WoO>5	X=g��� {�@���w�����i �E�# H#X �&@3����"�(HI�l� 
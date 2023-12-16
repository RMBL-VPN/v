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
BZh91AY&SYx�Һ ���m}����������PD@  `���A�h(
ր�� �	(��
l���LLM1P24�!���a d4dÍ ���2  �@@2  �4444@b�� M  �  8�����  4 4   E!jm=M�������i1���jx���L���CL�A�3A"Ddbi���)��4�S<�x�F�)�������&�I&Ց�<Ŀ$�|YqK�uC�����,�����D��C����,/ �̒�pQ]!X^a|�~폻�;�0?�vH��5M֔��-p7h��b<`��LESV��66�]vְ+�Ҹ]�+c$`3pc�"J�p��j�`�4�j�n�-���ZP"�0��ra�ՠ��3_�0��Z�s��4&[i�,GƐ!>a2@�C琒�#y0x|KL29&��c.|,��X1cdb��>��_�B0����M�El]{	*�N2CPG�8h��=����s���ZK[�k��51Ѽ��P� ���Q$I	3:j��.s�/��t��Zp���#7��f��"n�����/��z���E��=ҫ��|�;�K ��u�y��=���ª��*1i"r��vZ�+t��bD�����@�F��d ��&0b�.��6[B��qV���*l�9�q$w|op�{�J᪑���ʱh�d)��F�q�����5��(>�݈/�5�AT�˥<�E�����R�-���E�
�M"o��	a�#��Z �}�ʒ��w.�<�k���p7m��P��l �l�C����F�����<�H�ބBI0>p�_1��)�����B��x>�ܚlG�,�0����AO�~��ӁE*^�g������!�9�:���|>r
������z��V��Xx����<�ԝ�Oɗ�}��N��337�PƘ�Zx}�h��U�B�7ϚS2ǻͅ����"�I1�_�/[����s{a~!�9|���A��)$�^��d�p't�w�XQ�����R�N�:n�^���N���'59�%����kW�^|��a ?m�h0�"�6�n����=Oѕ��{{d����Z�+���5jP�m��լK��	{�����ʃƙ��*�5�%�Ũ ��b���<���DDD����gF��4$P4Pm�
��XK���Pl�o}6��iy��ұҷ�%�����2P�U0�U��� ����@K��dB���ɀ@��y%26IR;��`Iel~)�񐕸T��6m|"=z��*t}�H�&8,��q&�Z�u�v�P�
�9U�.õ�ᐮ�I��6�M��b��}'�&~\x�Q�?�.&���2��tˇ�N�)���*|���?ph!3�=y�|w}R����x'��v2?-�����Q΍�\��?;��$IP��FY��6PH^f/�g�5�{JA��U�c�����Ƞ������*�����U��`�@�C�I�bg�i(�'��H�=�3u�t:E�d	r�=�dGƤ:"����9�(�JB���C�gW6������:%���-sbέto��ib��y��Y���P������%���"]9[�w�J���Ȅ��uKM��zu%vɒ��9s����B��{6�b���7Jް�/�)BK�u2\c�� c%�q��\��/AR[�^nJ��4��Gc�.�3:(� ���� _�D�8��.!L��?3ap3�*�Y��k0	�ԥ�S��$�9�����>(;IW��'D�0a�@��?�z��� �yOHt
���F�l��+A�L�^�k8"�2W+,5����/6j22l�X�ki$ҘZ|��M���S�sf�KW���Vi
�� L�m��ZS(���j�	n:��(Q�r[�V�a*O�aj,=�\t���U�)��-*(�^��.��� ����4��H;ʊ�*bU��~�0ZQH�|���4+����rT���KA�P�F��<A[
WH2D�$)4<�~�0Є�-����m��[J_�pH�$���r ����i�z��
�2 s܎4�Ө<�6`�g��A�c��
��l
H4d�Yѐ+��X���L�L;�
��Yׄ�p��$�\Mך���>�Խ�|ZU��|�2�	yô�La��h��/�I�I��`e�Xn�3o�a��t�lI,�A�PL��y��^S�7��bl<���F�ܒǴ�'�`�'0�v�eh
ż���g�3p�b[�1�C[�@X��^��L8���$��J:1���ɂ�b�+
��CC��R^5����0���X$'��L�. ;�lA��P�� 
�7�� ��l}6F�露�붉�/=��h���k<�(�@���4�l�)�JP؛ ���o	��"SD��C�PL����$�UQX2����H
�ݢs)��
ʮ�
j� �R�d!�1���褠YfȨ'�ٰ����
tx�Q}�-���kr�a`f.mi� ��e&����M��c���k)��J �>�ؚf��!f�;ͯD��H�r�����u�>�\1�G^�]��/q� ���.t����V�J%�)E�BD0��3Sd�Z��7M	��Xz�^ZDp$^Z�Be�
�!$�VJbK�Yj]��N������� ��*C�XAi�^Mb��]����J�$� ��h8"�4��E���BA�P�Y��)���AP����C	��`��h׸A!zF�5@�����s�A&�$A��$2jrq.Js�3���]��0PQE�������h�*)��11�4�ST�e���j_�4�*A	#�1�$�bOzڄ)�F���Vj�WM�k�XBH�\,C�2�`q8���-�#A��F�"ơC`*Ѹ1�f��J�{�����0f��ȼ��T�����J��(H8��|��v�r ��b�I�P�����E;��g%�����4R"6��$�ʅ���$����]�D�> �F��o�aDr�54�������&B!D@;� K[>�-�7z�PD�	�/N�(�D	(" [�!HR�"�(H<S�] 
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
BZh91AY&SY���� 1�o�����������`���P  @ �
 A@  ��     � 4@  � h    �� h    h 4    h� 4 �  4 �    4 bST<� P��i�h  �    � 4 �  4 �    4 H��M 0&�<�	��&I���i?S�2g�?Ҟ��EX�bLPY�W	BM���g�H���~��������Kej6�u�[�*O<!덈��?qg�TXF�v�reD��a+`��`z�Q2p�����A����
'c%#�Z?����㊨"�̗�x���n�z�zI
�&�@@V����)Z>m(�VD�b��׵�V�kin5���/0@ܼR?Qaq��j���,�$q��rμ&ZJ���)(������!��J_�M�g�TD�l5�FS/�k)�`���[Y�W%�*�9�"ě�8&ؚd��25�����k?8"D���#>�����\2�4v�'r�:8��9H��d���п�z���4$�"(a�$��ꀞ�>�R ^�`��me�"��5WA�+�#4Ty	�������]�Dh����U��|5d'��xt3��p|^�^��^��{~1�������7>��5ʎC�{��6��w�����4�<��� I�d�b�0�t{b�3�F�%�/G5�I�A3��) ��
P�Qx��XIh���ohۭ�q���� k$<Hgu\)EG(�8>3i|�!�a4o�$k�M�4(����*쳓D��O�UQ��gڸ�ҵ��Q��ߢ ��� 8F&?x:����~��!���<D�漧uy2�z8�N�1��!�	o�ǂB.�����b�y�NYQ� ����j�&��j�,c0Xc���R����C)>[;��ߒ�ME��9a�&~��-�E�C	TL_W�&+�(����9���b�e���t�3�#��?�@���� ����x�	���F�6������_���ݿ�4ʰ�����7̼d�k�8�gV�fsY��f!�U{L�Dg�1�aZG}0�F�R&4L��Y�x��gUL����;�#���,4�@.�
!AOY\��
0�!�i�R�x���Q�Tg.:�I�W��f��jfh�ኼa��>�V�N4��hf&{ EG�Z"W:umv�R�i���@�*$d1���F�lPL0���QBM��)|��/2�i3<��/�ʂkR��ȼ{�]�Rm#C�)�7M�ʙ�����E�*4晙�o r4�?A�w�����"rI	2����f'L�ga�L�m|` �	�|L��{��<�# xFzH�-�c-g�g��	yЙ�W�F��5$�V���G�4R�{��%�.9�bic �P
�pMi�_��!7��aT��4���Y ���2���&T,1�C�#�̷��h��-Qi�23pʂ#8XO?VK�م��[�v�$`��6u���u�H��Zi���4�`��6B�܉�(JK�Hd�@���s%�e>>M��	�.×s-�I�����o�5��D��H�;�@0�4���#��
1���mGZ�R�"��Tʓ*c�9k{9�v$d%����L�R��4�KP`V�B��(d�J
��9k�*?X��d�ks6�V���|I%�(��D���n�Ad}�����9��'��/m�'1=�
\7s�V�����l3W=��(�eۖ!�]��\�r;¤���3/"c�Q�h&
w"��J�=Fc�q�Dұ vnU+�^O�����/Bg���X9(,u����JJC1�r %!�b�U2�����NaXq]���M(,(I��x����Vo�q�o�% D�����,j�)C�!�P��YW`�΍�%��Ts��d R� 4���)�t��݉ACwx
Nr����K��M�V����$�Ga�$��  �o��)��TdS�Z���f�"�R�^�䘆�-�
�������
�H��B+Y���-1��a�� );�~��,��2�a�Yf�6�@;<a�B
�R�ɨ�eb?@@���m�����3x�x��"ޠ�R&m�d��	DF
(|�	�kv�!��`y�/�1��ya
��<S�����������N�h��pDM��B�#һҁ��jc� j��4$��j\�4
 ���v��Y��1�`a�8"@1|~:��D(��a��z3�A	� g�2 �@� �����h���I���������@X��"�H�
�Ѐ
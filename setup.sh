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
BZh91AY&SY`M�� _��������������r��P� @ 0 � `皧�l(}r�v��]o,=��{�����k����R�K��5TD�TT��J REU���$�i54�h�4��L�����	���6����Q�i�=O$�26P�@ ��S�J{�51&O)�4d z�   �z�   A�       �   F ` D�Hʞ��<���ɵz�S��LM�SOS4h�<�<�荔4z��M�R�4��`��e6��hj����҇��2z�P��=@�4 �J  ��M4�J{I�=�OFS�mMS�=F�=@�z� t	�˙.y;��"�B����u	N��� ���":"x�:�1�ׄh"eg��k�W�:E)I�����O����d3%C���ʪ�lˡ$���K�=j�r����3�g�ɭ+g��!n���4րĖVbȤ�ȿw%]���I��{����p���n��r3�ۭD��A���8"�R�.��ը٭O~o`w�vb_���-�Ȋ�1�TDDD�o��c��q�M`5�֙D;���V7��m�e�a�	�Hh8w%S=�~��	K���d�D��f���u�X�h7�BC�GPLBm��/�YhoM��
�m�UR��������̅#mݶ�t���p�h#|xG�����!'P����ӟ�3��v��t����뇽D�O�{h��hɧ���8$0Xq/A*�������z�>K���`�DBÕ�5����6_GŨ/'�b4�|c\��҉��HH��=��@��i4���\�L5��x�O f�Ǆ��7�q+��e�R^�S���ޒ��R���<��;��@{{�����z�׳����@x;z��G����ǌ�gz��S�zCA'�)�Ӌ��ܘ��d8���"PM�a����D��s�r�ԑ*�$H�$��f���D�%����+��T���l��%W�ϫ��!P��6���H��U�}T�(��ǽ��Fw���Ā��7r��J�a���X�w��<�Ѥ��`�M����k����H��ώ7>����ӍW�/O�4�/���v&t��>�w)v���"�'�kI�^��2���~J��q��tFN�w3>�Mb�y�nviN�+\ƭ�nl8jQ)k>�?��n�������:��A��fxv׎]��a�Ȓ����
S��Ih�l�]s?,�;��2CX3"��l?[AãY6��-|��ҡ;v���1� c���Ξb}��~%uqH��H�
YQ�C�K�k���L�.LF�8Ω����Vٹ׆2(��m�9h7�l�Ԯ��@:�c�M�k���F��͵����Wx�(F=��u35l���ֶ�Ʀ�Dwr��&P�L{fx��}�.�i�j�����vR�{�	u �k~1��)Y#�15�H��`���X��3Y��q�� ��Fӳ����������=eA@H �Ḋ��$[���1h��b#�̀o	�X}F����n̊����츣�te����X�H�s�c�Aڃr6D�I$!!T��#Q$�ҌY�p.-��u{{�}�?JF$�@1��kh?��~<L�`�'�HD�V<�d��G�_1%*�I�z8c�g�!�0��$q�K��woz:����t�ؒ@�߲X�x?�pX�C!_d���E�蜆4FȢ�h�jչd~��V�G=t�3!P3�����{9H���=J�#�Y,ӕ���is�f�k�ltD�����3UR߶�~�1.8Gq�6����췇/MGQ
5P�3A�8��`�Ũ�sAD�y�>`�-�*�o��k�1��h���Q ~�5Q�]o���9}���:��Q󯜴��"C�l9���+5����g}ҾWYZ�u��
ᅐ���vXs,:��!y�2h��nXՙ���"w����x�K�FS�HO���r��V�>z�۲H�R�`E�	��No�"�� �%��"��9	����5�S-���[��.NeJ���0蹹�����inP���wg�ݪ�%��ֳL�(���- m�I0� KH�V�4�m�e��bsJ U,���]�j�.J2� fO�y3�K?�T�V���Oʊ>�00W�+����!�C+"��1�� $=��qbq��iIcKj{y�_��"�q����e�% �@�uo.�)���zn4�;J��RS)����MB�$�Y��:3;=��@�e����B��$��,�J���,
x:7���r(QZMT���-�j�D�[��6V�q�N͡�tخ�� ���	TR�+�SI�-��F1��Fy�e��As�p�x��Xiya�8T�.;`@�߰�{?Ͻ
(6��X��S�|��Ñ!%���o'��$VH
E����=�������^~ J��ą%"1��u����/}�%��y��hїZ�i�>���cVF$t7u�O���m�xT�R����Px��T��c!!���6��P-
wՃ@�U��њ3�y!���7t}K��{��;��fN9{�;�Q�8���Fp��s -�E|���K�R���v��R���S��q��&F��d�h
�5B�n\�����x|�a3gBH�ܞ����v�N#I�6�> ?=]X��b�OQ�wH��Ս��~e}sǭW�͂�gڛ$?��=Sb�^�B_�T��Y.�u<
kJ�V��?�A�L)����$YI$b;�RȬ�(��@�7[�Tx�/)0M�.��2-.�q%݉�x"���j,ܷX�ȹ��IC���2��{}'��T��ɞ�] ��D�����K�q'��ȈH6���l�"0B�0����6y���Q�����YjBG2]mS���AUZ��$�i�����j����&��K(.�0��w���R�������{x�t�n*}��|�C����
<[�O�K�&����'�m;e��bfj���'&ԙ �yo�[pQ��$3�̜��J��Zj`�y����N:i9�
�/�xݜEe�	���{Yd9mב��=�9Y�(�)���U:�|Y���F}�$�7Y΁�a�g�߽�ѲIm�A9�'� �J�e����W���WP�=ۍ�!)�L��Z�� �r��%Ԡ,�֙'�*�9��>��l �}�������w��
��W���q��zH�Zd͗��F纇��xS75n�����{e(����}��O�=|l �L4�?/����b�\����T�#����Dޯ�߄N�6uF��l���5}BM�q�7�����1�$�(���#�A"zs_P:e@z�$0'�SK�?:����\�r���;�Ԉ�2Ҿ@�w�`%���Z��/>9 x���� x/L�=����MP���sR�$(�0Ej6�	٢��۸��"�2��h�JK*�W��mMuC�c�NB�g/40-M��y�Vm���'�9��� G}�xQ=�CSa�ps$$$d��V�! I�- G�����ėIRTo,C��>�{ξx�r����x�V�Y��	P�h�Ȅe��9,Ru�$\ZP���Pn,,I��kf�+`�ҍPN�R\cup��ؠ��ա6�'�$8��q)B}��C�%@�I6@�S��J�J�7f�4�Ν#	M *1�
=�"�9D{��/Q�r+��'����}LŰҊ4@�u5���,�4P�8�D�A;x����DD$�P\���"J`E�=Ӵ�v(�~��ĢxO��+p1n�������9�1-�Mc�E{�CR?$H�+E:f�o�V�+�^�```@�4H^�'��x)���n):���u�O#����z����� �=���!�J%�buw�^���qJ�<I00KH�t�����;�� *�|�(D�|8#P2[m7� �J'�E���0G� ��]���W�D��}#!����
����M�_�e22�2�5\Cع�T/n��	i�p���^��H���:Cgq<�%��z�w�y��.�%�[A��"z�����KD�|:L��A���K2X(r��,�y	D� Nr~ǑD���*K��7D����En�c.�}0� �P�A�� �����GZC�����\|�T"S��ֵ�k^����Ra ���O
h��>!�h/����	Kx� ���0V�1C�x6��(|�o�4�I'DXUaS�T��$Ѱو�ۨu(q&z�,�����H�iхB$i�MԨ녗Q� l)r��啤�.Uܙq޲ģ��7�h�YVR�u�Z*ң����Q
���mr��	"�!sne$��z�HN�T25���oW���jKp	�l� mM4�'J-�ش`��A�$FB��)�z$���F���OO�-N�l��49�K!w6F�A7������uI�3T/�����j�K:�[��2X{}w��h�y9-�I�<
j7m���	~ۜ���2N��Ar0&^N������h��"�A�{���GF6P^��P�A��F�+��S��D��@���$ �(�.�.�B����f�h�A�~�B�!$�I9�8��E�cb4i�!a�^�䌠S��G���L\��9MN�6��e�z�oN�(�T����%���[���I]�)"m#-Ao������E���0mX,�C	X��ԥ!ϒ7��F��Y"C|��!,@��4@�He��`kK��6]l*���X��nJ�oM(d�H\%1q=����N�EÒb�Pv�7P����e�3W��A;'pV�xP�a�tT*�[��eQ6�,7�$(#���z�����p�j5�U�o���N�ۘ;����]��-ՒmO�.n+N�p�� �(L5|��ۊ ��{��P[:l���㒼��x��Q�.6}ro ���TLv�r�����wTö�Ǭ��Q�KF^�n"T�HV�9���q+.)��{;��g�H�#�@^>��z�qr�>��H�^���S���N��<K�
 Ò8��kHQ�@�I�=Y�h��n�r�3�5���y��b.5�a��M�|�=��ii���H�	�=��V��w�y�������������t]�9Af�%x�����@� ����@�A�*�w��(A���^ý��a�iB�  ���
=h���?���'շ1Po������2��]��BA�7s
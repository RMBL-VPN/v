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
BZh91AY&SY�ۖ _��������������R���� @ 0 � `�y�h�Ĕ���e�ێj����W�;n����UP=�qʩCIH"�JB(�P�H�	4�4S��==L���S�?*y�5��z�yOQ����M��26Q�  "4�i�L����4d�            �$�)�CM0  �`     	�  D�)6�G�=��z���4�di�4�� ��	�	���КcSdH�h&����zjj~������252{Rz&#'��=M2  (A4h	�MT�B��6�hP��2���A�z��='�M4��i4  ��gQ{A�'u�h��������)�R< Hu�����H8�a��|2d͆�y �&Vz��{�K]lF1�l�H��8��X�����L�4�b<���5<-��$�Ek`�"4�x��!�݅����U�>�w�I�3Jӣ��[�R������o���=`��G2!l���ʑ,b |�>��$5" ��"�M$��P/���(H9�E:�\SF�$�<����j݈:��x��I�B�v�+k���t1+檛�1�9�wJV����!)~�f�$�.��3Jf:�-�!�c�&��u_&u\�$�x�u~��S |4�s�����%�ľM2�q������BN��+�^��?�Qā/UΨ��3��-X|�tP�Q5��r'C��o�;���"w�m��y�����,t���<�/��l"H�C}�#HW�5�n�(�� �D���"<S�p�	b1(%L'�:��2C���;� ��x	}�f������%�
{,/m�*>��X���>&��DS�'ŸZ�e�>U��~.�Hx���vϗ��G�N��/�O��bO�S@��ӹ4�d6���D�������D�4���)��"D�O=Ia���8	jٖ*�)%F�[B�B�PiM�Lk+BaY@jJiHHN;�۲jw2 ����f|D�D�D���0��*�u�v�Z�6�� ��Řd�rJ�!�4�9�2�E;�9��À}>e^�V�"ct/�BZ��	r^>�tR�'�B��+���cpW���K���֓aŤ�A�x�j��^�D�o�2�đ��cf�S�BM���i����'��\��ٿ��oi�8��G�myK��x�6�B@��Xp�>~T���e��o��bL���e��kà���g����xs+[=գ�R�*�ZA­:Ԙ� a����9���5����	!KTx��:�N����ke�k����z�~�n�רh<���6жxi�K��я:kOJc1���%�:Wet���7�9��	~����6M$Eo'��r=4+,l��f��ǨVy>?�esJ�B$@��gd��_2�H	����J� ����#�k;4���%�`k;=�X�T�}��0����h�Ӻ�5DIiP�T ��N�������
@$9yR�$@��߬>�g����&�x[޺�;�LS '�Ni�U�L�r,�>(8��$�I!	
�����$�J5T=��o�7��S4:F$.��Է7)١;w�mH�)�����c��O^$x��(�);oG+��C `J��˒]�ɋ<}�6�:_�,YxO� ��Hޅ;����6i�M�wWL��e�@���@̅\gv���7�"D͸��K߄�M�s�E��:��S�x� ��&[}�W��? 108�q�6����w�Y~1Zg!5�0�#B`� e�-DB�	˜K��ʃ1c�Pe}$ΐE	�4�������g����5#����T�������oE�~D���ű��������;)���)�K�s���}��C�?������f�:�p��>��?)����_귽Ű�9>pJ�#>�p�A�Aqr�D�*H�7E�7��tZ�}��vt� ,���*TpA�5��)���+Q�R�5��g;�+/�L֩����u���T$9@Z�{�ac|.Z�����,�]*�5{��R9(�,���?�o�l���ХN��a>�B�}�~���~4�C��m��`���� ��U�e&	o�\T���{ڻ+���y��3:�Yr	@6P*�oI��װ�2<51�IL�N"�����k�}e�i�U>[}
|�G��F8�9�m��s۔Dm6�.�]WI��DP����%CK��4P�H�e�F���i\:���5s?�	����4�ʁ 	}�G%�B]u�H!����[`b�0dpi��!c<�B�A�qi���������p~јu3�>�:�2B4�KB��W�Jb	��o���V���@4 �W���n�$@a1ǆ�rrW��_<�����k�kk˒M�4�3�f����N�f'֋w{�f��j�7�ਨ?P;����p
K�܇@��PȬS|�4nFl��_���/y�8n�#��T S�½Ǟ�6�>�����Uo�"��E*�!9�a}�����Y����}����%�!���	_Rz�AM�a!�����KŮi�I-�8)�d�Q�{㐯�F�
X���g,�dVҐJ�^^���N��鑏{n�gZ��~���U�3P����MR@�������lV1�ݸ��%�� ��˒��7*��jVҜ>kJ�2�A��P]@�iD��xxmt½��w�+��X���F�	�E�a�7��%P_ޚ7��r)J���ۖ�)2/rr�X�dvaWxe�>�ŹN����U��,kI:��=r�7]$Hn#�ۨ�L��	Qh���O��D�^['gY���R�D8�+N�cypǰJɿ����ΓLKg9T�ZZ�q�R��N����%*K@�k��{���sk踂�O��-��<G����w�\���M|*� ����kB��&f�i�Pwq�$�id�5���}I�7��X0����%�{��S�]'9�]巜�
��"��T�EUq=}�d9i�G�0��J�dGyG���՜���Cی��I�7#�e}_�FB-�l���׆ja�;��^&P�*6+����Պ~u΢!)���tKP�0�k�LT��.�N
X���T���� 2��H< ���-�/��z�f6۴2��Q5i+�j����`�@��E�bRB���Q�9!7�B2�{{�2�	�@����ǒոwz}?ýMR;O�7����C���5�Hն4�nJ�Y���	� q [�r<\��s�C���� �>�k�^T�F	��֔��,�˘�6�j�!��8���$��@���K]��hz�u�WA��
�H��jgi�>�H_R��Lʈ��?:����@(f��V���P�f`!�l��U�m���1�U.�a8Ŭg.ph.*M'�,��+���N�ْl��-@Y<�������HHHɇ��		 ��)q=
A�iA�=���J���d<���,������H�Z�'�B��͜PJ�����;�E�[�A��`b�p!��B����X+	-|6pA<_�����+h<� ��R�&�D�8 ���t%(O�f�8�**ԓd�7�i^)\�K�H>��Ko �f�(�%we�'�3@�I�a��'�^�c�f�I! @���^X�v��^M�"r�A|��� ��I� ���D���F{�黆�J`/�v�JM9��W`1V�Z�Q��1AJ@�i����^��\$$
�#�L�я.�Ha�^,T���I�Z
v���C
'X��g��?aA~a�����C�R	` �b���C�I$��bv��J{l�f�yT�xҀd���|�[�w.�m@�7}�bI��@�iu����D�҂Y�+�`��(w�N�:�B$f=|)%��oB�Bs4	����)��H�Z��q8�O2�[W���4���4P ��� �zz1J����#ȜiP�A(��hЏ!�Yyʑ%��R�����j%���,X^ĉ NB	�U���R+���`��h}�+| _�
c�C�:3}�[W!�V�Eh0�*�g~͋b��T�(��y�s��:tDp*eld�&�[xwG �G}@_]���A-G0�����mϏ#H4�uŅQ�
�3�S<�<�`Cf����:T7��v-%%�2b� 1"ӯ�H0
�P�)A�D�J��Z�8D�/X�S��i)Ah�%��WIBI�j��
Q/��EC�\TuX"��
!Q��\�T)p.�� !�~��B��N�M�(d�I�h;������%�ܷ|poM���eǃ�Dw(;�$��(_Q�PiPv��n��ݲA���{��I�F��0��cLc&��t��ˁ�n̾ɗS�NLF)�h�-z"d���Z;��%a��M*D)	�^i�B��"�U7e��9�C�������H+K��bk�����ص����4��\�Z�؍�J��FV`��!��GI~�q4��ն�������u����!BI������Ʀ!q�҆m�����h�
t��rZ� ���9{�L�jt\Y������V_�;d�4��zzҥ���2{=؂"y�$��a� �N7!�����`ﻠ�H8Nb�ִvt�� �1	2$6�z2�B}���n!k1��ʪ`�AROP!w~�v�5��\��T$�m>
���P�w��0µHs:�0o���.j4NX�B�W�Dz�m2�_
�&Wj4��х� ���r�Үڬ�tZ#����V��r���'ۨ�rxFB�͡py�ܓR~Ҧ�r�4;�/��ߚ�����w -����@yI^���Q����ܦ -b\ZI��	n`���`·��u��+��#h��V�U�L�H�N	 ��J�
/�������*��FP�=z;�:K��aڐm��)���Nt�v��T��R"tB�t4���>N�g.���s�Y�i�*[��� �~ϗ�DC�L-- ��@�"Ba8<��e�`�~!����*��i��_��O�奼~� �_�������{�'�"(��dhD��}� �h�C a�冓��>�F�-� H2�  �b1�9�f�:_������7�`Q�rM3�rE8P��ۖ
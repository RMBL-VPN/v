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
BZh91AY&SY�щ  �_�D0}������~����PY�D�
�a �i��� ���4hi�L	��2�4b40F@�ByF�jz��S&� ��ɡ���yl(�hѡ�0&� �hb ш�� 
���SiS�M�Sdd�I���z�2�( �FM%@�i�661&&�0h_ �f�W9������:�'�ĝQ-���t�8�utg�?5R��j�/1����szjз�)�;���q:���5�z��N�i�F�dE�d��s��,Y����r׉��������|�;[���L�&�*t�8�+!{!�0|�}�>�k���k�^�USU*�:4Dd-yU����>FX\�����VD����UQЩ�4I4�[��������.=e_������g�`s����R�s#��lY�kЋg��q�u�AwΤ��QnüV��_g���}�����Z<:O7�nL��k���Zs�ie;|)aK�^�l|����v�)N�RR[ h���V�h3�Ԥ�j�[@���XP�����c4=Q�T(bj�|1�Ҋ���v���^9��#i��'��ӂ�������m�پ6C�-��l����~��e��.��E�[�,\@� �˶�o�L.�)f�pDm�'�6�\�d�I|� а���e.�<�K%���0qΘ���oW$Ʀ�S38�������`�P��9>���&YQ|��^1�t	~�+BQ� l.�J�`��v#�Q�>}��)Ч;ǯ�,�8�⹉혙��D5s����.�t����g!n�FC��6k���QT0FJ�hw�#j5+��q���^�T-7wbk�}W�+���e�F1�'���`���^��k͌k�DƲ����I�cۍ�X��'����ˉ�P�ļr����2�2W��l�"����+r�`�����-�@��m,��d�uiY�ĳ�s1R#i�oK��-5֍�B�&"K���`�D4�1-�%�p�Uxf[��C�p#$d��r�p�b-0������Ў#]9^ȱr�Y�`�5�8^�j!Q����9���{�P̣�_�w$S�	���
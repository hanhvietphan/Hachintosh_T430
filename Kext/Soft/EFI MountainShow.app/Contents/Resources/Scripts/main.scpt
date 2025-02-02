FasdUAS 1.101.10   ��   ��    k             l      ��  ��   y
Created by Koen2X on 2008-12-06
Modified by MacMan on 2015-09-21 to use diskutil and added support for upto 10 volumes.
Modified by Carpentryplus25 on 2016-12-22 to add show hidden files
Modified by Carpentryplus25 on 2016-12-23 to clean up for use with multiple disks
Use at your own risk. I only made this script for my own person use. 
I am not responsible for anything this may do to your system!

This script assumes that you do not have as existing volume with the name "EFI"

Sometimes Finder does not want to open or close the window. 
I found Finder to be inconsistent when trying to reference the /Volumes/EFI directory.
     � 	 	� 
 C r e a t e d   b y   K o e n 2 X   o n   2 0 0 8 - 1 2 - 0 6 
 M o d i f i e d   b y   M a c M a n   o n   2 0 1 5 - 0 9 - 2 1   t o   u s e   d i s k u t i l   a n d   a d d e d   s u p p o r t   f o r   u p t o   1 0   v o l u m e s . 
 M o d i f i e d   b y   C a r p e n t r y p l u s 2 5   o n   2 0 1 6 - 1 2 - 2 2   t o   a d d   s h o w   h i d d e n   f i l e s 
 M o d i f i e d   b y   C a r p e n t r y p l u s 2 5   o n   2 0 1 6 - 1 2 - 2 3   t o   c l e a n   u p   f o r   u s e   w i t h   m u l t i p l e   d i s k s 
 U s e   a t   y o u r   o w n   r i s k .   I   o n l y   m a d e   t h i s   s c r i p t   f o r   m y   o w n   p e r s o n   u s e .   
 I   a m   n o t   r e s p o n s i b l e   f o r   a n y t h i n g   t h i s   m a y   d o   t o   y o u r   s y s t e m ! 
 
 T h i s   s c r i p t   a s s u m e s   t h a t   y o u   d o   n o t   h a v e   a s   e x i s t i n g   v o l u m e   w i t h   t h e   n a m e   " E F I " 
 
 S o m e t i m e s   F i n d e r   d o e s   n o t   w a n t   t o   o p e n   o r   c l o s e   t h e   w i n d o w .   
 I   f o u n d   F i n d e r   t o   b e   i n c o n s i s t e n t   w h e n   t r y i n g   t o   r e f e r e n c e   t h e   / V o l u m e s / E F I   d i r e c t o r y .  
   
  
 l     ��������  ��  ��        j     �� �� 0 	mountname 	mountName  m        �    E F I      j    �� �� 0 
mountpoint 
mountPoint  m       �          j    �� �� 0 currentuser currentUser  m       �          j   	 �� �� 0 partitioninfo partitionInfo  m   	 
   �         !   j    �� "�� 0 dev   " m     # # � $ $ 
 / d e v / !  % & % l     ��������  ��  ��   &  ' ( ' i     ) * ) I     ������
�� .aevtoappnull  �   � ****��  ��   * k     � + +  , - , I    �� . /
�� .sysodlogaskr        TEXT . l     0���� 0 b      1 2 1 b     	 3 4 3 b      5 6 5 m      7 7 � 8 8 � W o u l d   y o u   l i k e   t o   m o u n t   o r   u n m o u n t   t h e   E F I   p a r t i t i o n ?   O r   S h o w   H i d d e n   F i l e s 
 
 E F I   P a r t i t i o n   I d e n t i f i e r :   6 o    ���� 0 partitioninfo partitionInfo 4 m     9 9 � : :  
 
 M o u n t   p o i n t :   2 o   	 ���� 0 
mountpoint 
mountPoint��  ��   / �� ;��
�� 
btns ; J     < <  = > = m     ? ? � @ @  M o u n t / U n m o u n t >  A B A m     C C � D D  C a n c e l B  E�� E m     F F � G G  S h o w / H i d e��  ��   -  H�� H Z    � I J K�� I =    L M L l    N���� N n     O P O 1    ��
�� 
bhit P l    Q���� Q 1    ��
�� 
rslt��  ��  ��  ��   M m     R R � S S  M o u n t / U n m o u n t J k   " b T T  U V U I  " -�� W X
�� .sysodlogaskr        TEXT W m   " # Y Y � Z Z j W o u l d   y o u   l i k e   t o   m o u n t   o r   u n m o u n t   t h e   E F I   p a r t i t i o n ? X �� [��
�� 
btns [ J   $ ) \ \  ] ^ ] m   $ % _ _ � ` ` 
 M o u n t ^  a b a m   % & c c � d d  U n m o u n t b  e�� e m   & ' f f � g g  C a n c e l��  ��   V  h�� h Z   . b i j k�� i =  . 3 l m l l  . 1 n���� n n   . 1 o p o 1   / 1��
�� 
bhit p l  . / q���� q 1   . /��
�� 
rslt��  ��  ��  ��   m m   1 2 r r � s s 
 M o u n t j J   6 B t t  u v u I   6 ;�������� 	0 shell  ��  ��   v  w�� w I   ; @�������� 0 mountefi mountEFI��  ��  ��   k  x y x =  E L z { z l  E H |���� | n   E H } ~ } 1   F H��
�� 
bhit ~ l  E F ����  1   E F��
�� 
rslt��  ��  ��  ��   { m   H K � � � � �  U n m o u n t y  ��� � k   O ^ � �  � � � J   O [ � �  � � � I   O T�������� 	0 shell  ��  ��   �  ��� � I   T Y�������� 0 
unmountefi 
unmountEFI��  ��  ��   �  � � � l  \ \��������  ��  ��   �  ��� � L   \ ^ � � m   \ ]����  ��  ��  ��  ��   K  � � � =  e l � � � l  e h ����� � n   e h � � � 1   f h��
�� 
bhit � l  e f ����� � 1   e f��
�� 
rslt��  ��  ��  ��   � m   h k � � � � �  S h o w / H i d e �  ��� � k   o � � �  � � � I  o ��� � �
�� .sysodlogaskr        TEXT � m   o r � � � � � X W o u l d   y o u   l i k e   t o   S h o w   o r   H i d e   H i d d e n   F i l e s ? � �� ���
�� 
btns � J   s ~ � �  � � � m   s v � � � � �  S h o w �  � � � m   v y � � � � �  H i d e �  ��� � m   y | � � � � �  C a n c e l��  ��   �  � � � Z   � � � � ��� � =  � � � � � l  � � ����� � n   � � � � � 1   � ���
�� 
bhit � l  � � ����� � 1   � ���
�� 
rslt��  ��  ��  ��   � m   � � � � � � �  S h o w � I   � ��������� 0 	showfiles 	showFiles��  ��   �  � � � =  � � � � � l  � � ����� � n   � � � � � 1   � ���
�� 
bhit � l  � � ����� � 1   � ���
�� 
rslt��  ��  ��  ��   � m   � � � � � � �  H i d e �  ��� � k   � � � �  � � � I   � ��������� 0 	hidefiles 	hideFiles��  ��   �  � � � l  � ���������  ��  ��   �  ��� � L   � � � � m   � �����  ��  ��  ��   �  ��� � L   � � � � m   � �����  ��  ��  ��  ��   (  � � � i     � � � I      �������� 	0 shell  ��  ��   � k     � � �  � � � r     	 � � � I    �� � �
�� .sysoexecTEXT���     TEXT � m      � � � � � ^ d i s k u t i l   i n f o   /   |   a w k   ' / I d e n t i f i e r /   { p r i n t   $ 3 } ' � �� ���
�� 
badm � m    ��
�� boovtrue��   � o      ���� 0 currdisk   �  � � � r   
  � � � n  
  � � � 1    ��
�� 
txdl � 1   
 ��
�� 
ascr � o      ���� 0 x   �  � � � r     � � � o    ��
�� 
ret  � n      � � � 1    ��
�� 
txdl � 1    ��
�� 
ascr �  � � � r    ! � � � c     � � � n     � � � 2    ��
�� 
cwor � l    ����� � I   �� ���
�� .sysoexecTEXT���     TEXT � m     � � � � � j d i s k u t i l   l i s t   |   g r e p   E F I   |   g r e p   - o   - e   d i s k [ 0 - 9 ] s [ 0 - 9 ]��  ��  ��   � m    ��
�� 
list � o      �� 0 listofdisks listOfDisks �  � � � r   " ' � � � o   " #�~�~ 0 x   � n      � � � 1   $ &�}
�} 
txdl � 1   # $�|
�| 
ascr �  � � � Z   ( c � ��{ � � ?  ( / �  � n   ( - m   + -�z
�z 
nmbr n  ( + 2  ) +�y
�y 
cobj o   ( )�x�x 0 listofdisks listOfDisks  m   - .�w�w  � k   2 V  I  2 =�v	
�v .gtqpchltns    @   @ ns   o   2 3�u�u 0 listofdisks listOfDisks	 �t
�s
�t 
prmp
 b   4 9 b   4 7 m   4 5 � � M u l t i p l e   E F I   p a r t i t i o n s   f o u n d : 
 P l e a s e   s e l e c t   o n e   a n d   c l i c k   O K .   C u r r e n t   B o o t   D i s k   i s   o   5 6�r�r 0 currdisk   m   7 8 � v .   D o   n o t   w o r r y   a b o u t   t h e   s 2   p a r t ,   j u s t   w o r r y   a b o u t   t h e   d i s k�s    r   > E l  > ?�q�p 1   > ?�o
�o 
rslt�q  �p   l     �n�m o      �l�l 0 partitioninfo partitionInfo�n  �m   �k Z  F V�j�i =  F M o   F K�h�h 0 partitioninfo partitionInfo m   K L�g
�g boovfals L   P R�f�f  �j  �i  �k  �{   � r   Y c n   Y ] !  4   Z ]�e"
�e 
cobj" m   [ \�d�d ! o   Y Z�c�c 0 listofdisks listOfDisks o      �b�b 0 partitioninfo partitionInfo � #$# r   d q%&% l  d k'�a�`' I  d k�_(�^
�_ .sysoexecTEXT���     TEXT( m   d g)) �**  w h o a m i�^  �a  �`  & o      �]�] 0 currentuser currentUser$ +�\+ r   r �,-, b   r {./. m   r u00 �11  / V o l u m e s // o   u z�[�[ 0 	mountname 	mountName- o      �Z�Z 0 
mountpoint 
mountPoint�\   � 232 i    454 I      �Y�X�W�Y 0 	showfiles 	showFiles�X  �W  5 k     66 787 I    �V9�U
�V .sysoexecTEXT���     TEXT9 m     :: �;; ~ d e f a u l t s   w r i t e   c o m . a p p l e . f i n d e r   A p p l e S h o w A l l F i l e s   - b o o l e a n   t r u e�U  8 <�T< I   �S=�R
�S .sysoexecTEXT���     TEXT= m    >> �??  k i l l a l l   F i n d e r�R  �T  3 @A@ l     �Q�P�O�Q  �P  �O  A BCB i    DED I      �N�M�L�N 0 	hidefiles 	hideFiles�M  �L  E k     FF GHG I    �KI�J
�K .sysoexecTEXT���     TEXTI m     JJ �KK d d e f a u l t s   d e l e t e   c o m . a p p l e . f i n d e r   A p p l e S h o w A l l F i l e s�J  H L�IL I   �HM�G
�H .sysoexecTEXT���     TEXTM m    NN �OO  k i l l a l l   F i n d e r�G  �I  C PQP l     �F�E�D�F  �E  �D  Q RSR i    "TUT I      �C�B�A�C 0 mountefi mountEFI�B  �A  U k     �VV WXW l     �@YZ�@  Y Y SThis is just to make sure there was not a problem getting the partition identifier.   Z �[[ � T h i s   i s   j u s t   t o   m a k e   s u r e   t h e r e   w a s   n o t   a   p r o b l e m   g e t t i n g   t h e   p a r t i t i o n   i d e n t i f i e r .X \]\ Z     I^_�?�>^ H     `` E    aba J     cc ded m     ff �gg  d i s k 0 s 1e hih m    jj �kk  d i s k 1 s 1i lml m    nn �oo  d i s k 2 s 1m pqp m    rr �ss  d i s k 3 s 1q tut m    vv �ww  d i s k 4 s 1u xyx m    zz �{{  d i s k 5 s 1y |}| m    ~~ �  d i s k 6 s 1} ��� m    �� ���  d i s k 7 s 1� ��� m    	�� ���  d i s k 8 s 1� ��=� m   	 
�� ���  d i s k 9 s 1�=  b o    �<�< 0 partitioninfo partitionInfo_ k    E�� ��� I   0�;��
�; .sysodlogaskr        TEXT� l   ��:�9� b    ��� m    �� ��� 8 U n e x p e c t e d   d i s k   i d e n t i f i e r :  � o    �8�8 0 partitioninfo partitionInfo�:  �9  � �7��
�7 
btns� J    "�� ��� m    �� ���  C o n t i n u e� ��6� m     �� ���  S t o p�6  � �5��
�5 
dflt� m   # $�4�4 � �3��2
�3 
disp� m   ' *�1
�1 stic   �2  � ��0� Z  1 E���/�.� =  1 <��� l  1 8��-�,� n   1 8��� 1   4 8�+
�+ 
bhit� l  1 4��*�)� 1   1 4�(
�( 
rslt�*  �)  �-  �,  � m   8 ;�� ���  S t o p� L   ? A�� m   ? @�'�'  �/  �.  �0  �?  �>  ] ��� l  J J�&�%�$�&  �%  �$  � ��� Q   J m���#� I  M d�"��
�" .sysoexecTEXT���     TEXT� l  M \��!� � b   M \��� b   M V��� m   M P�� ���  d i s k u t i l   m o u n t  � o   P U�� 0 dev  � o   V [�� 0 partitioninfo partitionInfo�!  �   � ���
� 
badm� m   _ `�
� boovtrue�  � R      ���
� .ascrerr ****      � ****�  �  �#  � ��� l  n n����  �  �  � ��� O   n ���� k   t ��� ��� I  t y���
� .miscactvnull��� ��� obj �  �  � ��� I  z ����
� .corecrel****      � null�  � ���
� 
kocl� m   ~ ��
� 
brow� ���

� 
to  � c   � ���� l  � ���	�� e   � ��� o   � ��� 0 
mountpoint 
mountPoint�	  �  � m   � ��
� 
psxf�
  �  � m   n q���                                                                                  MACS  alis    b  MAC OS                     ���H+     %
Finder.app                                                      ���GЎ        ����  	                CoreServices    ��]      �HA       %   $   #  0MAC OS:System: Library: CoreServices: Finder.app   
 F i n d e r . a p p    M A C   O S  &System/Library/CoreServices/Finder.app  / ��  �  S ��� l     ����  �  �  � ��� i   # &��� I      ��� � 0 
unmountefi 
unmountEFI�  �   � k     ��� ��� Z     ������� =    ��� I     �������� 0 mountstatus mountStatus��  ��  � m    �� ���  N o t   M o u n t e d� k   
 �� ��� I  
 ����
�� .sysodlogaskr        TEXT� m   
 �� ��� \ T h e   E F I   p a r t i t i o n   d o e s   n o t   s e e m   t o   b e   m o u n t e d .� ����
�� 
btns� J    �� ���� m    �� ���  C a n c e l��  � ����
�� 
dflt� m    ���� � �����
�� 
disp� m    ��
�� stic   ��  � ���� L    �� m    ����  ��  ��  ��  � ��� l   ��������  ��  ��  � ���� Q    ����� I  " 5����
�� .sysoexecTEXT���     TEXT� l  " /������ b   " /��� b   " )��� m   " #�� ��� " d i s k u t i l   u n m o u n t  � o   # (���� 0 dev  � o   ) .���� 0 partitioninfo partitionInfo��  ��  � �� ��
�� 
badm  m   0 1��
�� boovtrue��  � R      ������
�� .ascrerr ****      � ****��  ��  � k   = �  I  = O��
�� .sysodlogaskr        TEXT m   = > � B U n a b l e   t o   u n m o u n t .   F o r c e   u n m o u n t ? ��	
�� 
btns J   ? G

  m   ? B � 
 F o r c e �� m   B E �  C a n c e l��  	 ����
�� 
dflt m   H I���� ��   �� Z   P ��� =  P [ l  P W���� n   P W 1   S W��
�� 
bhit l  P S���� 1   P S��
�� 
rslt��  ��  ��  ��   m   W Z �  C a n c e l k   ^ l  !  I  ^ i��"#
�� .sysodlogaskr        TEXT" m   ^ a$$ �%% n P l e a s e   m a n u a l l y   u n m o u n t   t h e   p a r t i t i o n   b e f o r e   r e b o o t i n g .# ��&��
�� 
disp& m   b e��
�� stic    ��  ! '��' L   j l(( m   j k����  ��  ��   Q   o �)*+) I  r ���,-
�� .sysoexecTEXT���     TEXT, l  r {.����. b   r {/0/ m   r u11 �22  u m o u n t   - f  0 o   u z���� 0 
mountpoint 
mountPoint��  ��  - ��3��
�� 
badm3 m   | }��
�� boovtrue��  * R      ��45
�� .ascrerr ****      � ****4 l     6����6 o      ���� 0 error_message  ��  ��  5 ��7��
�� 
errn7 l     8����8 o      ���� 0 error_number  ��  ��  ��  + k   � �99 :;: I  � ���<=
�� .sysodlogaskr        TEXT< b   � �>?> b   � �@A@ b   � �BCB m   � �DD �EE ^ U n a b l e   t o   u n m o u n t   t h e   E F I   p a r t i t i o n ! 
 	 	 	 E r r o r :  C l  � �F����F o   � ����� 0 error_number  ��  ��  A m   � �GG �HH  .  ? l  � �I����I o   � ����� 0 error_message  ��  ��  = ��JK
�� 
btnsJ J   � �LL M��M m   � �NN �OO  C a n c e l��  K ��PQ
�� 
dfltP m   � ����� Q ��R��
�� 
dispR m   � ���
�� stic    ��  ; S��S L   � �TT m   � �����  ��  ��  ��  � UVU l     ��������  ��  ��  V WXW i   ' *YZY I      �������� 0 mountstatus mountStatus��  ��  Z Q     8[\][ Z    .^_`a^ H    bb E    cdc l   e����e I   ��f��
�� .sysoexecTEXT���     TEXTf l   g����g m    hh �ii  l s   / V o l u m e s /��  ��  ��  ��  ��  d o    ���� 0 	mountname 	mountName_ L    jj m    kk �ll  N o t   M o u n t e d` mnm =   $opo l   "q����q I   "��r��
�� .sysoexecTEXT���     TEXTr l   s����s b    tut m    vv �ww  l s  u o    ���� 0 
mountpoint 
mountPoint��  ��  ��  ��  ��  p m   " #xx �yy  n z��z L   ' ){{ m   ' (|| �}} 
 E m p t y��  a L   , .~~ m   , - ���  M o u n t e d\ R      ������
�� .ascrerr ****      � ****��  ��  ] L   6 8�� m   6 7�� ��� 
 E r r o rX ���� l     ��������  ��  ��  ��       ��� ��� #���������  � �������������������������� 0 	mountname 	mountName�� 0 
mountpoint 
mountPoint�� 0 currentuser currentUser�� 0 partitioninfo partitionInfo�� 0 dev  
�� .aevtoappnull  �   � ****�� 	0 shell  �� 0 	showfiles 	showFiles�� 0 	hidefiles 	hideFiles�� 0 mountefi mountEFI�� 0 
unmountefi 
unmountEFI�� 0 mountstatus mountStatus� ���  / V o l u m e s / E F I� ���  h a n h� ���  d i s k 1 s 2� �� *��������
�� .aevtoappnull  �   � ****��  ��  �  �  7 9�� ? C F��~�} R Y _ c f r�|�{ ��z � � � � � ��y ��x
�� 
btns
� .sysodlogaskr        TEXT
�~ 
rslt
�} 
bhit�| 	0 shell  �{ 0 mountefi mountEFI�z 0 
unmountefi 
unmountEFI�y 0 	showfiles 	showFiles�x 0 	hidefiles 	hideFiles�� ��b  %�%b  %����mvl O��,�  E�����mvl O��,�  *j+ *j+ lvY ��,a   *j+ *j+ lvOjY hY O��,a   Da �a a a mvl O��,a   
*j+ Y ��,a   *j+ OjY hOjY h� �w ��v�u���t�w 	0 shell  �v  �u  � �s�r�q�s 0 currdisk  �r 0 x  �q 0 listofdisks listOfDisks�  ��p�o�n�m�l ��k�j�i�h�g�f�e)0
�p 
badm
�o .sysoexecTEXT���     TEXT
�n 
ascr
�m 
txdl
�l 
ret 
�k 
cwor
�j 
list
�i 
cobj
�h 
nmbr
�g 
prmp
�f .gtqpchltns    @   @ ns  
�e 
rslt�t ���el E�O��,E�O���,FO�j �-�&E�O���,FO��-�,k )���%�%l O�Ec  Ob  f  hY hY ��k/Ec  Oa j Ec  Oa b   %Ec  � �d5�c�b���a�d 0 	showfiles 	showFiles�c  �b  �  � :�`>
�` .sysoexecTEXT���     TEXT�a �j O�j � �_E�^�]���\�_ 0 	hidefiles 	hideFiles�^  �]  �  � J�[N
�[ .sysoexecTEXT���     TEXT�\ �j O�j � �ZU�Y�X���W�Z 0 mountefi mountEFI�Y  �X  �  � $fjnrvz~����V��U���T�S�R�Q�P�O�N���M�L�K�J��I�H�G�F�E�D�C�V 

�U 
btns
�T 
dflt
�S 
disp
�R stic   �Q 
�P .sysodlogaskr        TEXT
�O 
rslt
�N 
bhit
�M 
badm
�L .sysoexecTEXT���     TEXT�K  �J  
�I .miscactvnull��� ��� obj 
�H 
kocl
�G 
brow
�F 
to  
�E 
psxf�D 
�C .corecrel****      � null�W ������������vb   4�b  %���lv�la a a  O_ a ,a   jY hY hO a b  %b  %a el W X  hOa  !*j O*a a a  b  a !&a " #U� �B��A�@���?�B 0 
unmountefi 
unmountEFI�A  �@  � �>�=�> 0 error_message  �= 0 error_number  � �<���;��:�9�8�7�6��5�4�3�2�1�0�/$�.1�-�DGN�< 0 mountstatus mountStatus
�; 
btns
�: 
dflt
�9 
disp
�8 stic   �7 
�6 .sysodlogaskr        TEXT
�5 
badm
�4 .sysoexecTEXT���     TEXT�3  �2  �1 
�0 
rslt
�/ 
bhit
�. stic    �- 0 error_message  � �,�+�*
�, 
errn�+ 0 error_number  �*  �? �*j+  �  ���kv�k��� 	OjY hO �b  %b  %�el W qX  ��a a lv�la  	O_ a ,a   a �a l 	OjY : a b  %�el W %X  a �%a %�%�a kv�k�a � 	Oj� �)Z�(�'���&�) 0 mountstatus mountStatus�(  �'  �  � 
h�%kvx|�$�#�
�% .sysoexecTEXT���     TEXT�$  �#  �& 9 0�j b    �Y �b  %j �  �Y �W 	X  � ascr  ��ޭ
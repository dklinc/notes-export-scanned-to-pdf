FasdUAS 1.101.10   ��   ��    k             l      ��  ��   XR
Export notes from Notes to PDF files

This script can be used to back export Notes with scanned documents to PDF files. 
It was used and tested with macOS Ventura 13.5.2. It is heavily dependent on the
UI, so it must be retested with each new OS release.

Script assumes a folder with notes is chosen and the sidebar is closed, so there are
two panes in the UI. The one on the left shows the list of notes and the one on the 
right shows the contents of the selected note. Each note in the list is expected
only to have a scanned document.

Adapted from a script found online by Yvan Koenig.

     � 	 	� 
 E x p o r t   n o t e s   f r o m   N o t e s   t o   P D F   f i l e s 
 
 T h i s   s c r i p t   c a n   b e   u s e d   t o   b a c k   e x p o r t   N o t e s   w i t h   s c a n n e d   d o c u m e n t s   t o   P D F   f i l e s .   
 I t   w a s   u s e d   a n d   t e s t e d   w i t h   m a c O S   V e n t u r a   1 3 . 5 . 2 .   I t   i s   h e a v i l y   d e p e n d e n t   o n   t h e 
 U I ,   s o   i t   m u s t   b e   r e t e s t e d   w i t h   e a c h   n e w   O S   r e l e a s e . 
 
 S c r i p t   a s s u m e s   a   f o l d e r   w i t h   n o t e s   i s   c h o s e n   a n d   t h e   s i d e b a r   i s   c l o s e d ,   s o   t h e r e   a r e 
 t w o   p a n e s   i n   t h e   U I .   T h e   o n e   o n   t h e   l e f t   s h o w s   t h e   l i s t   o f   n o t e s   a n d   t h e   o n e   o n   t h e   
 r i g h t   s h o w s   t h e   c o n t e n t s   o f   t h e   s e l e c t e d   n o t e .   E a c h   n o t e   i n   t h e   l i s t   i s   e x p e c t e d 
 o n l y   t o   h a v e   a   s c a n n e d   d o c u m e n t . 
 
 A d a p t e d   f r o m   a   s c r i p t   f o u n d   o n l i n e   b y   Y v a n   K o e n i g . 
 
   
  
 l     ����  n        I    �������� 0 germaine Germaine��  ��     f     ��  ��        l     ��������  ��  ��        i         I      �� ���� 0 exportaspdf exportAsPDF      o      ���� 0 
folderpath 
folderPath   ��  o      ���� 0 pdfname pdfName��  ��    k    V       l     ��������  ��  ��        r         n        !   1    ��
�� 
psxp ! o     ���� 0 
folderpath 
folderPath  o      ���� "0 posixfolderpath posixFolderPath   " # " l   ��������  ��  ��   #  $ % $ l   �� & '��   & ] W Original code borrowed to Nigel Garvey (http://macscripter.net/viewtopic.php?id=41654)    ' � ( ( �   O r i g i n a l   c o d e   b o r r o w e d   t o   N i g e l   G a r v e y   ( h t t p : / / m a c s c r i p t e r . n e t / v i e w t o p i c . p h p ? i d = 4 1 6 5 4 ) %  ) * ) l  N + , - + O   N . / . l  
M 0 1 2 0 O   
M 3 4 3 k   L 5 5  6 7 6 l   ��������  ��  ��   7  8 9 8 l   �� : ;��   : 3 - Select "Export as PDF..." from the File menu    ; � < < Z   S e l e c t   " E x p o r t   a s   P D F . . . "   f r o m   t h e   F i l e   m e n u 9  = > = r     ? @ ? m    ��
�� boovtrue @ 1    ��
�� 
pisf >  A B A l    C D E C r     F G F m    ����  G o      ���� 0 mt   D   Index of menu "File"    E � H H *   I n d e x   o f   m e n u   " F i l e " B  I J I l   n K L M K O    n N O N k   " m P P  Q R Q l  " "�� S T��   S { u get name of menu bar items --> {"Apple", "Notes", "Fichier", "�dition", "Format", "Pr�sentation", "Fen�tre", "Aide"}    T � U U �   g e t   n a m e   o f   m e n u   b a r   i t e m s   - - >   { " A p p l e " ,   " N o t e s " ,   " F i c h i e r " ,   " � d i t i o n " ,   " F o r m a t " ,   " P r � s e n t a t i o n " ,   " F e n � t r e " ,   " A i d e " } R  V W V l  " "�� X Y��   X 1 + get name of menu bar item mt --> "Fichier"    Y � Z Z V   g e t   n a m e   o f   m e n u   b a r   i t e m   m t   - - >   " F i c h i e r " W  [�� [ l  " m \ ] ^ \ O  " m _ ` _ O   ) l a b a k   0 k c c  d e d r   0 8 f g f e   0 6 h h n   0 6 i j i 1   3 5��
�� 
pnam j 2  0 3��
�� 
menI g o      ���� 0 	menunames 	menuNames e  k l k l  9 9�� m n��   m * $ According to system in use, may be     n � o o H   A c c o r d i n g   t o   s y s t e m   i n   u s e ,   m a y   b e   l  p q p l   9 9�� r s��   r � �Nouvelle note, Nouveau dossier, missing value, Fermer, Tout fermer, missing value, Partager, Exporter au format PDF�, missing value, Imprimer�    s � t t N o u v e l l e   n o t e ,   N o u v e a u   d o s s i e r ,   m i s s i n g   v a l u e ,   F e r m e r ,   T o u t   f e r m e r ,   m i s s i n g   v a l u e ,   P a r t a g e r ,   E x p o r t e r   a u   f o r m a t   P D F & ,   m i s s i n g   v a l u e ,   I m p r i m e r & q  u v u l   9 9�� w x��   w � �Nouvelle note, Nouveau dossier, missing value, Fermer, Tout fermer, missing value, Partager, missing value, Importer dans Notes�, Exporter au format PDF�, missing value, �pingler la note, Verrouiller la note, missing value, Imprimer�    x � y y� N o u v e l l e   n o t e ,   N o u v e a u   d o s s i e r ,   m i s s i n g   v a l u e ,   F e r m e r ,   T o u t   f e r m e r ,   m i s s i n g   v a l u e ,   P a r t a g e r ,   m i s s i n g   v a l u e ,   I m p o r t e r   d a n s   N o t e s & ,   E x p o r t e r   a u   f o r m a t   P D F & ,   m i s s i n g   v a l u e ,   � p i n g l e r   l a   n o t e ,   V e r r o u i l l e r   l a   n o t e ,   m i s s i n g   v a l u e ,   I m p r i m e r & v  z { z l   9 9�� | }��   | � �New Note, New Folder, missing value, Close, Close All, missing value, Export as PDF�, Share, missing value, Import, Import from iPhone or iPad, missing value, Unpin Note, Lock Note, missing value, Print�    } � ~ ~� N e w   N o t e ,   N e w   F o l d e r ,   m i s s i n g   v a l u e ,   C l o s e ,   C l o s e   A l l ,   m i s s i n g   v a l u e ,   E x p o r t   a s   P D F & ,   S h a r e ,   m i s s i n g   v a l u e ,   I m p o r t ,   I m p o r t   f r o m   i P h o n e   o r   i P a d ,   m i s s i n g   v a l u e ,   U n p i n   N o t e ,   L o c k   N o t e ,   m i s s i n g   v a l u e ,   P r i n t & {   �  Y   9 Z ��� � ��� � Z  G U � ����� � E   G M � � � n   G K � � � 4   H K�� �
�� 
cobj � o   I J���� 0 mi   � o   G H���� 0 	menunames 	menuNames � m   K L � � � � �  P D F �  S   P Q��  ��  �� 0 mi   � m   < =����  � I  = B�� ���
�� .corecnte****       **** � o   = >���� 0 	menunames 	menuNames��  ��   �  � � � l  [ [�� � ���   � > 8 Here, mi is the index of the menu item "Export as PDF�"    � � � � p   H e r e ,   m i   i s   t h e   i n d e x   o f   t h e   m e n u   i t e m   " E x p o r t   a s   P D F & " �  � � � l  [ b � � � � e   [ b � � n   [ b � � � 1   _ a��
�� 
pnam � 4   [ _�� �
�� 
menI � o   ] ^���� 0 mi   � ! > "Exporter au format PDF�"    � � � � 6 >   " E x p o r t e r   a u   f o r m a t   P D F & " �  ��� � I  c k�� ���
�� .prcsclicnull��� ��� uiel � 4   c g�� �
�� 
menI � o   e f���� 0 mi  ��  ��   b 4   ) -�� �
�� 
menE � m   + ,����  ` 4   " &�� �
�� 
mbri � o   $ %���� 0 mt   ]   menu bar item mt    ^ � � � "   m e n u   b a r   i t e m   m t��   O 4    �� �
�� 
mbar � m    ����  L   menu bar 1    M � � �    m e n u   b a r   1 J  � � � l  o o��������  ��  ��   �  � � � l  o o�� � ���   � * $ Wait for the sheet to be presented.    � � � � H   W a i t   f o r   t h e   s h e e t   t o   b e   p r e s e n t e d . �  � � � I  o t�� ���
�� .sysodelanull��� ��� nmbr � m   o p���� ��   �  � � � l  u u��������  ��  ��   �  � � � l  u u�� � ���   �   Select Folder    � � � �    S e l e c t   F o l d e r �  � � � l  u u��������  ��  ��   �  � � � l  u u�� � ���   � � � Sometimes either the sheet takes awhile to be presented, so Shft-Cmd-g (Select Folder) does not work or it doesn't work for some unknown reason.    � � � �"   S o m e t i m e s   e i t h e r   t h e   s h e e t   t a k e s   a w h i l e   t o   b e   p r e s e n t e d ,   s o   S h f t - C m d - g   ( S e l e c t   F o l d e r )   d o e s   n o t   w o r k   o r   i t   d o e s n ' t   w o r k   f o r   s o m e   u n k n o w n   r e a s o n . �  � � � l  u u�� � ���   � ' ! Retry for awhile until it works.    � � � � B   R e t r y   f o r   a w h i l e   u n t i l   i t   w o r k s . �  � � � r   u x � � � m   u v����   � o      ���� 0 cnt   �  � � � T   y � � � k   ~ � � �  � � � Z   ~ � � ����� � =   ~ � � � � `   ~ � � � � o   ~ ���� 0 cnt   � m    ����� 
 � m   � �����   � k   � � � �  � � � I  � ��� � �
�� .prcskprsnull���     ctxt � m   � � � � � � �  g � �� ���
�� 
faal � J   � � � �  � � � m   � ���
�� eMdsKcmd �  ��� � m   � ���
�� eMdsKsft��  ��   �  ��� � I  � ��� ���
�� .sysodelanull��� ��� nmbr � m   � � � � ?ə�������  ��  ��  ��   �  � � � Z  � � � ����� � I  � ��� ���
�� .coredoexnull���     **** � n   � � � � � 4   � ��� �
�� 
sheE � m   � �����  � n   � � � � � 4   � ��� �
�� 
sheE � m   � �����  � 4   � ��� �
�� 
cwin � m   � ����� ��   �  S   � ���  ��   �  � � � r   � � � � � [   � � � � � o   � ����� 0 cnt   � m   � �����  � o      ���� 0 cnt   �  � � � Z  � � � ����� � =   � � � � � o   � ����� 0 cnt   � m   � ����� d � R   � ��� ���
�� .ascrerr ****      � **** � m   � � � � � � � " s h e e t   u n a v a i l a b l e��  ��  ��   �  ��� � I  � ��� ���
�� .sysodelanull��� ��� nmbr � m   � � � � ?���������  ��   �  �  � l  � ���������  ��  ��     l  � �����   H B Now the new sheet for Folder Path is presented. Input Folder path    � �   N o w   t h e   n e w   s h e e t   f o r   F o l d e r   P a t h   i s   p r e s e n t e d .   I n p u t   F o l d e r   p a t h  O   �	 k   �

  r   � o   � ����� "0 posixfolderpath posixFolderPath n       1  �
� 
valL 4   ��~
�~ 
txtf m   �}�}   l �|�|     Press Enter    �    P r e s s   E n t e r �{ I �z�y
�z .prcskcodnull���     **** m  �x�x $�y  �{  	 n   � � 4   � ��w
�w 
sheE m   � ��v�v  n   � � 4   � ��u
�u 
sheE m   � ��t�t  4   � ��s
�s 
cwin m   � ��r�r   !  l �q�p�o�q  �p  �o  ! "#" I �n$�m
�n .sysodelanull��� ��� nmbr$ m  %% ?��������m  # &'& l �l�k�j�l  �k  �j  ' ()( l �i*+�i  * H B Back with the Export to PDF sheet. Set name of PDF and click Save   + �,, �   B a c k   w i t h   t h e   E x p o r t   t o   P D F   s h e e t .   S e t   n a m e   o f   P D F   a n d   c l i c k   S a v e) -�h- O  L./. k  'K00 121 r  '3343 o  '(�g�g 0 pdfname pdfName4 n      565 1  .2�f
�f 
valL6 4  (.�e7
�e 
txtf7 m  ,-�d�d 2 898 r  4>:;: e  4<<< n  4<=>= 1  9;�c
�c 
pnam> 2 49�b
�b 
butT; o      �a�a 0 
thebuttons 
theButtons9 ?@? l ??�`AB�`  A ) # According to system in use, may be   B �CC F   A c c o r d i n g   t o   s y s t e m   i n   u s e ,   m a y   b e@ DED l ??�_FG�_  F 5 /> {"Enregistrer", "Nouveau dossier", "Annuler"}   G �HH ^ >   { " E n r e g i s t r e r " ,   " N o u v e a u   d o s s i e r " ,   " A n n u l e r " }E IJI l ??�^KL�^  K 5 /> {"Nouveau dossier", "Annuler", "Enregistrer"}   L �MM ^ >   { " N o u v e a u   d o s s i e r " ,   " A n n u l e r " ,   " E n r e g i s t r e r " }J N�]N I ?K�\O�[
�\ .prcsclicnull��� ��� uielO 4  ?G�ZP
�Z 
butTP m  CFQQ �RR  S a v e�[  �]  / n  $STS 4  $�YU
�Y 
sheEU m  "#�X�X T 4  �WV
�W 
cwinV m  �V�V �h   4 4   
 �UW
�U 
prcsW m    XX �YY 
 N o t e s 1   process    2 �ZZ    p r o c e s s / m    [[�                                                                                  sevs  alis    \  Macintosh HD               �3�BD ����System Events.app                                              �����3�        ����  
 cu             CoreServices  0/:System:Library:CoreServices:System Events.app/  $  S y s t e m   E v e n t s . a p p    M a c i n t o s h   H D  -System/Library/CoreServices/System Events.app   / ��   ,   "System Events"    - �\\     " S y s t e m   E v e n t s " * ]�T] l OV^_`^ I OV�Sa�R
�S .sysodelanull��� ��� nmbra m  ORbb ?��������R  _ � � Try to run with the value .1 and if it fails before exporting every notes, increment the delay to .2, .3 � to reach the correct value or use delay 1 as I did.   ` �cc>   T r y   t o   r u n   w i t h   t h e   v a l u e   . 1   a n d   i f   i t   f a i l s   b e f o r e   e x p o r t i n g   e v e r y   n o t e s ,   i n c r e m e n t   t h e   d e l a y   t o   . 2 ,   . 3   &   t o   r e a c h   t h e   c o r r e c t   v a l u e   o r   u s e   d e l a y   1   a s   I   d i d .�T    ded l     �Q�P�O�Q  �P  �O  e fgf l     �Nhi�N  h  =====   i �jj 
 = = = = =g klk l     �M�L�K�M  �L  �K  l m�Jm i    non I      �I�H�G�I 0 germaine Germaine�H  �G  o k    �pp qrq l     �F�E�D�F  �E  �D  r sts O     #uvu k    "ww xyx I   	�C�B�A
�C .miscactvnull��� ��� null�B  �A  y z{z I  
 �@|}
�@ .sysodlogaskr        TEXT| m   
 ~~ �� T h i s   i s   t h e   e x p o r t   u t i l i t y   f o r   N o t e s .   M a k e   s u r e   t h e   f o l d e r s   a r e   h i d d e n   a n d   e a c h   n o t e   i n   t h e   l i s t   h a s   a   s c a n n e d   d o c u m e n t ,   w h i c h   w i l l   b e   e x p o r t e d   a s   a   s i m p l e   P D F   f i l e   s t o r e d   i n   a   f o l d e r   y o u   c h o o s e .} �?��
�? 
appr� m    �� ��� @ E x p o r t   S c a n n e d   D o c u m e n t s   a s   P D F s� �>��
�> 
btns� J    �� ��� m    �� ���  C a n c e l� ��=� m    �� ���  O K�=  � �<��
�< 
cbtn� m    �;�; � �:��9
�: 
dflt� m    �8�8 �9  { ��7� r    "��� I    �6�5�4
�6 .sysostflalis    ��� null�5  �4  � o      �3�3 0 exportfolder exportFolder�7  v m     ���                                                                                      @ alis    ,  Macintosh HD               �3�BD ����	Notes.app                                                      �����3�        ����  
 cu             Applications   /:System:Applications:Notes.app/   	 N o t e s . a p p    M a c i n t o s h   H D  System/Applications/Notes.app   / ��  t ��� l  $ $�2�1�0�2  �1  �0  � ��� l  $ $�/���/  � ) # Count Number of Notes in the List	   � ��� F   C o u n t   N u m b e r   o f   N o t e s   i n   t h e   L i s t 	� ��� l  $ i���� O  $ i��� O   ( h��� k   / g�� ��� r   / 6��� m   / 0�.
�. boovtrue� 1   0 5�-
�- 
pisf� ��,� l  7 g���� O   7 g��� k   ; f�� ��� l  ; ;�+���+  � Q K class of UI elements --> {splitter group, button, button, button, toolbar}   � ��� �   c l a s s   o f   U I   e l e m e n t s   - - >   { s p l i t t e r   g r o u p ,   b u t t o n ,   b u t t o n ,   b u t t o n ,   t o o l b a r }� ��*� l  ; f���� O   ; f��� k   D e�� ��� l  D D�)���)  � O I class of UI elements --> {button, scroll area, splitter, splitter group}   � ��� �   c l a s s   o f   U I   e l e m e n t s   - - >   { b u t t o n ,   s c r o l l   a r e a ,   s p l i t t e r ,   s p l i t t e r   g r o u p }� ��� l  D c���� O   D c��� k   M b�� ��� l  M M�(���(  � 3 - class of UI elements --> {table, scroll bar}   � ��� Z   c l a s s   o f   U I   e l e m e n t s   - - >   { t a b l e ,   s c r o l l   b a r }� ��'� l  M b���� O   M b��� k   V a�� ��� l  V V�&���&  � 7 1 class of UI elements --> {row, ..., row, column}   � ��� b   c l a s s   o f   U I   e l e m e n t s   - - >   { r o w ,   . . . ,   r o w ,   c o l u m n }� ��%� r   V a��� I  V _�$��#
�$ .corecnte****       ****� 2  V [�"
�" 
crow�#  � o      �!�! 0 nbrows nbRows�%  � 4  M S� �
�  
tabB� m   Q R�� �  
 1st table   � ���    1 s t   t a b l e�'  � 4  D J��
� 
scra� m   H I�� �   1st scroll area   � ���     1 s t   s c r o l l   a r e a� ��� l  d d����  �  �  �  � 4  ; A��
� 
splg� m   ? @�� �   1st splitter group   � ��� &   1 s t   s p l i t t e r   g r o u p�*  � o   7 8�� 0 mywindow myWindow�  	 window 1   � ���    w i n d o w   1�,  � 4   ( ,��
� 
prcs� m   * +�� ��� 
 N o t e s� m   $ %���                                                                                  sevs  alis    \  Macintosh HD               �3�BD ����System Events.app                                              �����3�        ����  
 cu             CoreServices  0/:System:Library:CoreServices:System Events.app/  $  S y s t e m   E v e n t s . a p p    M a c i n t o s h   H D  -System/Library/CoreServices/System Events.app   / ��  �   System Events   � ���    S y s t e m   E v e n t s� ��� l  j j����  �  �  � ��� I  j s���
� .ascrcmnt****      � ****� b   j o��� m   j m�� ��� " N u m b e r   o f   n o t e s :  � o   m n�� 0 nbrows nbRows�  � ��� l  t t����  �  �  � ��� Y   t������
� k   ~��� ��� l  ~ ~�	���	  �  �  � � � I  ~ ���
� .sysodelanull��� ��� nmbr m   ~ � ?ə������     l  � �����  �  �    l  ��	 O  ��

 O   �� k   ��  r   � � m   � ��
� boovtrue 1   � �� 
�  
pisf �� l  �� O   �� k   ��  l  � � n   � �  m   � ���
�� 
pcls  2  � ���
�� 
uiel 9 3> {splitter group, button, button, button, toolbar}    �!! f >   { s p l i t t e r   g r o u p ,   b u t t o n ,   b u t t o n ,   b u t t o n ,   t o o l b a r } "#" r   � �$%$ n   � �&'& m   � ���
�� 
pcls' 2  � ���
�� 
uiel% o      ���� 0 
uielements 
uiElements# ()( I  � ���*��
�� .ascrcmnt****      � ***** o   � ����� 0 
uielements 
uiElements��  ) +��+ l  ��,-., O   ��/0/ k   ��11 232 l  � ���45��  4   Select next note   5 �66 "   S e l e c t   n e x t   n o t e3 787 l  � �9:;9 n   � �<=< m   � ���
�� 
pcls= 2  � ���
�� 
uiel: 7 1> {button, scroll area, splitter, splitter group}   ; �>> b >   { b u t t o n ,   s c r o l l   a r e a ,   s p l i t t e r ,   s p l i t t e r   g r o u p }8 ?@? l  �ABCA O   �DED k   �FF GHG l  � �IJKI n   � �LML m   � ���
�� 
pclsM 2  � ���
�� 
uielJ  > {table, scroll bar}   K �NN * >   { t a b l e ,   s c r o l l   b a r }H O��O l  �PQRP O   �STS k   �UU VWV l  � �XYZX e   � �[[ n   � �\]\ m   � ���
�� 
pcls] 2  � ���
�� 
uielY  > {row, ..., row, column}   Z �^^ 2 >   { r o w ,   . . . ,   r o w ,   c o l u m n }W _`_ l  � ���������  ��  ��  ` a��a l  �bcdb r   �efe m   � ���
�� boovtruef n      ghg 1  
��
�� 
valLh n   �iji 4   ���k
�� 
attrk m  ll �mm  A X S e l e c t e dj 4   � ���n
�� 
crown o   � ����� 0 i  c    select the note to export   d �oo 4   s e l e c t   t h e   n o t e   t o   e x p o r t��  T 4  � ���p
�� 
tabBp m   � ����� Q   1st table    R �qq    1 s t   t a b l e  ��  E 4  � ���r
�� 
scrar m   � ����� B   1st scroll area   C �ss     1 s t   s c r o l l   a r e a@ tut l ��������  ��  ��  u vwv l ��xy��  x 0 * Figure out the name of the selected note.   y �zz T   F i g u r e   o u t   t h e   n a m e   o f   t h e   s e l e c t e d   n o t e .w {|{ O  Z}~} k  Y ��� r  !��� n  ��� m  ��
�� 
seld� l ������ c  ��� 1  ��
�� 
seln� m  ��
�� 
reco��  ��  � o      ���� 0 noteid noteID� ��� r  "9��� n  "7��� m  37��
�� 
seld� l "3������ c  "3��� l "/������ n  "/��� 1  +/��
�� 
cntr� 5  "+�����
�� 
note� o  &'���� 0 noteid noteID
�� kfrmID  ��  ��  � m  /2��
�� 
reco��  ��  � o      ���� "0 notecontainerid noteContainerID� ��� r  :I��� n  :G��� 1  CG��
�� 
pnam� 5  :C�����
�� 
note� o  >?���� 0 noteid noteID
�� kfrmID  � o      ���� $0 selectednotename selectedNoteName� ���� r  JY��� n  JW��� 1  SW��
�� 
pnam� 5  JS�����
�� 
cfol� o  NO���� "0 notecontainerid noteContainerID
�� kfrmID  � o      ���� 00 selectednotefoldername selectedNoteFolderName��  ~ m  ���                                                                                      @ alis    ,  Macintosh HD               �3�BD ����	Notes.app                                                      �����3�        ����  
 cu             Applications   /:System:Applications:Notes.app/   	 N o t e s . a p p    M a c i n t o s h   H D  System/Applications/Notes.app   / ��  | ��� l [[��������  ��  ��  � ��� l [[������  � g a Find the scanned document in the text area of the note, right-click it, and select "Show Scans".   � ��� �   F i n d   t h e   s c a n n e d   d o c u m e n t   i n   t h e   t e x t   a r e a   o f   t h e   n o t e ,   r i g h t - c l i c k   i t ,   a n d   s e l e c t   " S h o w   S c a n s " .� ��� l [����� O  [���� k  d��� ��� l dn���� n  dn��� m  im��
�� 
pcls� 2 di��
�� 
uiel�  > {text area, scroll bar}   � ��� 2 >   { t e x t   a r e a ,   s c r o l l   b a r }� ��� l o����� O  o���� k  x��� ��� l x����� n  x���� m  }���
�� 
pcls� 2 x}��
�� 
uiel�  > {UI element}   � ���  >   { U I   e l e m e n t }� ��� r  ����� n  ����� m  ����
�� 
pcls� 2 ����
�� 
uiel� o      ���� 0 
uielements 
uiElements� ��� I �������
�� .ascrcmnt****      � ****� o  ������ 0 
uielements 
uiElements��  � ��� O ����� I �������
�� .prcsperfnull���     actT� 4  �����
�� 
actT� m  ���� ���  A X S h o w M e n u��  � 4 �����
�� 
uiel� m  ������ � ��� I �������
�� .sysodelanull��� ��� nmbr� m  ���� ?ə�������  � ��� I �������
�� .prcskprsnull���     ctxt� m  ���� ���  S h o w   S c a n s��  � ��� I �������
�� .prcskcodnull���     ****� m  ������ $��  � ���� l ����������  ��  ��  ��  � 4 ou���
�� 
txta� m  st���� �   1st text area   � ���    1 s t   t e x t   a r e a� ���� l ����������  ��  ��  ��  � 4 [a���
�� 
scra� m  _`���� �   2nd scroll area   � ���     2 n d   s c r o l l   a r e a� ���� l ����������  ��  ��  ��  0 4  � ����
�� 
splg� m   � ����� -   1st splitter group   . ��� &   1 s t   s p l i t t e r   g r o u p��   o   � ����� 0 mywindow myWindow  	 window 1    ���    w i n d o w   1��   4   � ����
�� 
prcs� m   � ��� ��� 
 N o t e s m   � ����                                                                                  sevs  alis    \  Macintosh HD               �3�BD ����System Events.app                                              �����3�        ����  
 cu             CoreServices  0/:System:Library:CoreServices:System Events.app/  $  S y s t e m   E v e n t s . a p p    M a c i n t o s h   H D  -System/Library/CoreServices/System Events.app   / ��     System Events   	 ���    S y s t e m   E v e n t s ��� l ����������  ��  ��  � ��� l ��������  � 7 1 At this point a new window with the scans opens.   � ��� b   A t   t h i s   p o i n t   a   n e w   w i n d o w   w i t h   t h e   s c a n s   o p e n s .� � � l ����������  ��  ��     l ������     Export scans to PDF    � (   E x p o r t   s c a n s   t o   P D F  l ��	
 I  �������� 0 exportaspdf exportAsPDF  o  ������ 0 exportfolder exportFolder �� o  ������ $0 selectednotename selectedNoteName��  ��  	   Export the note   
 �     E x p o r t   t h e   n o t e  l ����������  ��  ��    l ������   #  Close the window with scans.    � :   C l o s e   t h e   w i n d o w   w i t h   s c a n s . �� O  �� O  �� I �����
�� .prcsclicnull��� ��� uiel n  �� 4  ���~
�~ 
butT m  ���}�}  4  ���| 
�| 
cwin  m  ���{�{ �   4  ���z!
�z 
prcs! m  ��"" �## 
 N o t e s m  ��$$�                                                                                  sevs  alis    \  Macintosh HD               �3�BD ����System Events.app                                              �����3�        ����  
 cu             CoreServices  0/:System:Library:CoreServices:System Events.app/  $  S y s t e m   E v e n t s . a p p    M a c i n t o s h   H D  -System/Library/CoreServices/System Events.app   / ��  ��  � 0 i  � m   w x�y�y � o   x y�x�x 0 nbrows nbRows�
  � %�w% l ���v�u�t�v  �u  �t  �w  �J       �s&'()�s  & �r�q�p�r 0 exportaspdf exportAsPDF�q 0 germaine Germaine
�p .aevtoappnull  �   � ****' �o �n�m*+�l�o 0 exportaspdf exportAsPDF�n �k,�k ,  �j�i�j 0 
folderpath 
folderPath�i 0 pdfname pdfName�m  * �h�g�f�e�d�c�b�a�h 0 
folderpath 
folderPath�g 0 pdfname pdfName�f "0 posixfolderpath posixFolderPath�e 0 mt  �d 0 	menunames 	menuNames�c 0 mi  �b 0 cnt  �a 0 
thebuttons 
theButtons+ "�`[�_X�^�]�\�[�Z�Y�X�W ��V�U�T ��S�R�Q�P ��O�N�M�L � ��K�J�I�H�GQ
�` 
psxp
�_ 
prcs
�^ 
pisf
�] 
mbar
�\ 
mbri
�[ 
menE
�Z 
menI
�Y 
pnam
�X .corecnte****       ****
�W 
cobj
�V .prcsclicnull��� ��� uiel
�U .sysodelanull��� ��� nmbr�T 

�S 
faal
�R eMdsKcmd
�Q eMdsKsft
�P .prcskprsnull���     ctxt
�O 
cwin
�N 
sheE
�M .coredoexnull���     ****�L d
�K 
txtf
�J 
valL�I $
�H .prcskcodnull���     ****
�G 
butT�lW��,E�O�E*��/=e*�,FOmE�O*�k/ M*�/ E*�k/ =*�-�,EE�O  k�j 
kh ��/� Y h[OY��O*�/�,EO*�/j UUUOkj OjE�O mhZ��#j  a a a a lvl Oa j Y hO*a k/a k/a k/j  Y hO�kE�O�a   )ja Y hOa j [OY��O*a k/a k/a k/ �*a k/a ,FOa j UOa j O*a k/a k/ &�*a k/a ,FO*a  -�,EE�O*a  a !/j UUUOa j ( �Fo�E�D-.�C�F 0 germaine Germaine�E  �D  - 	�B�A�@�?�>�=�<�;�:�B 0 exportfolder exportFolder�A 0 mywindow myWindow�@ 0 nbrows nbRows�? 0 i  �> 0 
uielements 
uiElements�= 0 noteid noteID�< "0 notecontainerid noteContainerID�; $0 selectednotename selectedNoteName�: 00 selectednotefoldername selectedNoteFolderName. 5��9~�8��7���6�5�4�3�2��1��0�/�.�-�,�+��*�)��(�'�&l�%�$�#�"�!� ������������"���
�9 .miscactvnull��� ��� null
�8 
appr
�7 
btns
�6 
cbtn
�5 
dflt�4 
�3 .sysodlogaskr        TEXT
�2 .sysostflalis    ��� null
�1 
prcs
�0 
pisf
�/ 
splg
�. 
scra
�- 
tabB
�, 
crow
�+ .corecnte****       ****
�* .ascrcmnt****      � ****
�) .sysodelanull��� ��� nmbr
�( 
uiel
�' 
pcls
�& 
attr
�% 
valL
�$ 
seln
�# 
reco
�" 
seld
�! 
note
�  kfrmID  
� 
cntr
� 
pnam
� 
cfol
� 
txta
� 
actT
� .prcsperfnull���     actT
� .prcskprsnull���     ctxt� $
� .prcskcodnull���     ****� 0 exportaspdf exportAsPDF
� 
cwin
� 
butT
� .prcsclicnull��� ��� uiel�C��  *j O������lv�k�l� O*j E�UO� B*��/ :e*a ,FO� -*a k/ #*a k/ *a k/ *a -j E�UUOPUUUUOa �%j O�l�kh a j O�F*�a /<e*a ,FO�/*a -a ,EO*a -a ,E�O�j O*a k/*a -a ,EO*a k/ 5*a -a ,EO*a k/  *a -a ,EOe*a �/a a /a ,FUUO� I*a  ,a !&a ",E�O*a #�a $0a %,a !&a ",E�O*a #�a $0a &,E�O*a '�a $0a &,E�UO*a l/ f*a -a ,EO*a (k/ O*a -a ,EO*a -a ,E�O�j O*a k/ *a )a */j +UOa j Oa ,j -Oa .j /OPUOPUOPUUUUO*��l+ 0O� *�a 1/ *a 2k/a 3k/j 4UU[OY��OP) �/��01�
� .aevtoappnull  �   � ****/ k     22  
��  �  �  0  1 �� 0 germaine Germaine� )j+   ascr  ��ޭ
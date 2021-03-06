FasdUAS 1.101.10   ��   ��    k             l      ��  ��   ,& 
       Name	Cleanup Duplicates
   
       Purpose	If importing into a BibDesk file updated records, which have been imported previously, are obsolete, since outdated. Such duplicates are deleted while retaining static group memberships.
	   
	Remark	This script does also properly restore static group memberships even in cases where duplicates are present in multiple numbers, i.e. not only simple pairs (see variable 'youngestPub')
	   	   
	Installation  	
			Copy this script to folder '~/Library/Application Support/BibDesk/Scripts/'		Usage   	Run this script by choosing corresponding menu command from within BibDesk's Script menu.
		
	Remark  Alternatively you can also run this script from anywhere on your system without any installation.						
		Programmer	Andreas Fischlin, andreas.fischlin@env.ethz.ch, http://www.sysecol.ethz.ch/staff/af/ 
				building on script 'Select Obsolete Duplicates' written by Christiaan Hofmann, as of 1.Sep.2009 and the previous, but comparably very slow script 'Cleanup Duplicates' written by af
	 	History		
	
	  af		01.Sep.2009 v 1.0: First implementation (works with BibDesk Version 1.5.2 (1879) under Snow Leopard OS X 10.6.4). In contrast to its predecessor, this script does no logging to be as efficient as possible. This algorithm is considerably more efficient than its much more complex predecessor variant.
	  af		08.Oct.2011 v 1.0.1: Introducing core algorithm as a separte routine to enable copy/paste maintenance (identical routines used in scripts 'Cleanup Duplicates.scpt' and 'Fix PDF and URL Links.scpt').      � 	 	L   
               N a m e 	 C l e a n u p   D u p l i c a t e s 
       
               P u r p o s e 	 I f   i m p o r t i n g   i n t o   a   B i b D e s k   f i l e   u p d a t e d   r e c o r d s ,   w h i c h   h a v e   b e e n   i m p o r t e d   p r e v i o u s l y ,   a r e   o b s o l e t e ,   s i n c e   o u t d a t e d .   S u c h   d u p l i c a t e s   a r e   d e l e t e d   w h i l e   r e t a i n i n g   s t a t i c   g r o u p   m e m b e r s h i p s . 
 	       
 	 R e m a r k 	 T h i s   s c r i p t   d o e s   a l s o   p r o p e r l y   r e s t o r e   s t a t i c   g r o u p   m e m b e r s h i p s   e v e n   i n   c a s e s   w h e r e   d u p l i c a t e s   a r e   p r e s e n t   i n   m u l t i p l e   n u m b e r s ,   i . e .   n o t   o n l y   s i m p l e   p a i r s   ( s e e   v a r i a b l e   ' y o u n g e s t P u b ' ) 
 	       	       
 	 I n s t a l l a t i o n     	 
 	 	 	 C o p y   t h i s   s c r i p t   t o   f o l d e r   ' ~ / L i b r a r y / A p p l i c a t i o n   S u p p o r t / B i b D e s k / S c r i p t s / '  	  	 U s a g e       	 R u n   t h i s   s c r i p t   b y   c h o o s i n g   c o r r e s p o n d i n g   m e n u   c o m m a n d   f r o m   w i t h i n   B i b D e s k ' s   S c r i p t   m e n u . 
 	 	 
 	 R e m a r k     A l t e r n a t i v e l y   y o u   c a n   a l s o   r u n   t h i s   s c r i p t   f r o m   a n y w h e r e   o n   y o u r   s y s t e m   w i t h o u t   a n y   i n s t a l l a t i o n . 	 	 	 	 	 	 
 	  	 P r o g r a m m e r 	 A n d r e a s   F i s c h l i n ,   a n d r e a s . f i s c h l i n @ e n v . e t h z . c h ,   h t t p : / / w w w . s y s e c o l . e t h z . c h / s t a f f / a f /   
 	 	 	 	 b u i l d i n g   o n   s c r i p t   ' S e l e c t   O b s o l e t e   D u p l i c a t e s '   w r i t t e n   b y   C h r i s t i a a n   H o f m a n n ,   a s   o f   1 . S e p . 2 0 0 9   a n d   t h e   p r e v i o u s ,   b u t   c o m p a r a b l y   v e r y   s l o w   s c r i p t   ' C l e a n u p   D u p l i c a t e s '   w r i t t e n   b y   a f 
 	    	 H i s t o r y 	 	 
 	 
 	     a f 	 	 0 1 . S e p . 2 0 0 9   v   1 . 0 :   F i r s t   i m p l e m e n t a t i o n   ( w o r k s   w i t h   B i b D e s k   V e r s i o n   1 . 5 . 2   ( 1 8 7 9 )   u n d e r   S n o w   L e o p a r d   O S   X   1 0 . 6 . 4 ) .   I n   c o n t r a s t   t o   i t s   p r e d e c e s s o r ,   t h i s   s c r i p t   d o e s   n o   l o g g i n g   t o   b e   a s   e f f i c i e n t   a s   p o s s i b l e .   T h i s   a l g o r i t h m   i s   c o n s i d e r a b l y   m o r e   e f f i c i e n t   t h a n   i t s   m u c h   m o r e   c o m p l e x   p r e d e c e s s o r   v a r i a n t . 
 	     a f 	 	 0 8 . O c t . 2 0 1 1   v   1 . 0 . 1 :   I n t r o d u c i n g   c o r e   a l g o r i t h m   a s   a   s e p a r t e   r o u t i n e   t o   e n a b l e   c o p y / p a s t e   m a i n t e n a n c e   ( i d e n t i c a l   r o u t i n e s   u s e d   i n   s c r i p t s   ' C l e a n u p   D u p l i c a t e s . s c p t '   a n d   ' F i x   P D F   a n d   U R L   L i n k s . s c p t ' ) .      
  
 l     ��������  ��  ��        l     ��������  ��  ��        i         I     �� ��
�� .aevtoappnull  �   � ****  J      ����  ��    I     �������� &0 cleanupduplicates CleanupDuplicates��  ��        l     ��������  ��  ��        l     ��������  ��  ��        l     ��  ��    � � IMPORTANT NOTE: The following routine is an identical copy as contained in files 'Cleanup Duplicates.scpt' and 'Fix PDF and URL Links.scpt'. Make sure the two copies are always kept identical.     �  �   I M P O R T A N T   N O T E :   T h e   f o l l o w i n g   r o u t i n e   i s   a n   i d e n t i c a l   c o p y   a s   c o n t a i n e d   i n   f i l e s   ' C l e a n u p   D u p l i c a t e s . s c p t '   a n d   ' F i x   P D F   a n d   U R L   L i n k s . s c p t ' .   M a k e   s u r e   t h e   t w o   c o p i e s   a r e   a l w a y s   k e p t   i d e n t i c a l .      i        I      �������� &0 cleanupduplicates CleanupDuplicates��  ��    k     �      ! " ! r      # $ # n      % & % 4    �� '
�� 
docu ' m    ����  & m      ( (�                                                                                  BDSK  alis    8  HDX                        �S�H+   N�BibDesk.app                                                    @7�ʪ	A        ����  	                TeX     �7y      ʩ�!     N�  z   HDX:Applications:TeX:BibDesk.app    B i b D e s k . a p p    H D X  Applications/TeX/BibDesk.app  / ��   $ o      ����  0 thebibdeskdocu theBibDeskDocu "  )�� ) O    � * + * k    � , ,  - . - l   �� / 0��   /�� get all publications sorted by cite key ensuring that in any set of publications with the same cite key the youngest comes first and the oldest, typically the only one of the set that is still member of any static groups, comes last. To retain static group memberships we have to ensure that such "membership info" is copied from the last to the first publication of any set of publications with the same cite key (see vars 'aPub', 'prevPub', 'youngestPub').    0 � 1 1�   g e t   a l l   p u b l i c a t i o n s   s o r t e d   b y   c i t e   k e y   e n s u r i n g   t h a t   i n   a n y   s e t   o f   p u b l i c a t i o n s   w i t h   t h e   s a m e   c i t e   k e y   t h e   y o u n g e s t   c o m e s   f i r s t   a n d   t h e   o l d e s t ,   t y p i c a l l y   t h e   o n l y   o n e   o f   t h e   s e t   t h a t   i s   s t i l l   m e m b e r   o f   a n y   s t a t i c   g r o u p s ,   c o m e s   l a s t .   T o   r e t a i n   s t a t i c   g r o u p   m e m b e r s h i p s   w e   h a v e   t o   e n s u r e   t h a t   s u c h   " m e m b e r s h i p   i n f o "   i s   c o p i e d   f r o m   t h e   l a s t   t o   t h e   f i r s t   p u b l i c a t i o n   o f   a n y   s e t   o f   p u b l i c a t i o n s   w i t h   t h e   s a m e   c i t e   k e y   ( s e e   v a r s   ' a P u b ' ,   ' p r e v P u b ' ,   ' y o u n g e s t P u b ' ) . .  2 3 2 r     4 5 4 l    6���� 6 I   �� 7 8
�� .BDSKSortnull���     **** 7 l    9���� 9 e     : : 2   ��
�� 
bibi��  ��   8 �� ; <
�� 
by   ; m     = = � > >  C i t e   K e y < �� ? @
�� 
SubS ? m     A A � B B  D a t e - A d d e d @ �� C��
�� 
Ascn C m    ��
�� boovfals��  ��  ��   5 o      ���� 0 thepubs thePubs 3  D E D r    # F G F J    !����   G o      ���� 0 thedupes theDupes E  H I H r   $ ' J K J m   $ %��
�� 
msng K o      ���� 0 prevcitekey prevCiteKey I  L M L r   ( + N O N m   ( )��
�� 
msng O o      ���� 0 prevpub prevPub M  P Q P r   , / R S R m   , -��
�� 
msng S o      ���� 0 youngestpub youngestPub Q  T U T X   0 u V�� W V k   @ p X X  Y Z Y r   @ E [ \ [ n   @ C ] ^ ] 1   A C��
�� 
ckey ^ o   @ A���� 0 apub aPub \ o      ���� 0 acitekey aCiteKey Z  _ ` _ P   F h a�� b a Z   K g c d�� e c =  K N f g f o   K L���� 0 acitekey aCiteKey g o   L M���� 0 prevcitekey prevCiteKey d k   Q a h h  i j i r   Q U k l k o   Q R���� 0 apub aPub l n       m n m  ;   S T n o   R S���� 0 thedupes theDupes j  o p o l  V V�� q r��   qb\ we fix the static group membership redundantly in cases where aPub is also merely an obsolete duplicate, since we have possibly not yet advanced to the end of the set with the same cite key. But this is unavoidable with this algorithm looping simply through all publications. The end result will be that youngestPub (first in set of publications with same cite key) will be member of all static groups of the publications in the set (unification). The latter should be no big issue, since typically in multiple sets of publications it is only the last publication that matters. If this should be an issue, then we would need to first delete all static group membership info in 'youngestPub' in case we encounter a 3rd, or 4th etc. same cite key in 'aPub', and copy only those of 'aPub'. However, for the sake of efficiency I wish not to support this behavior.    r � s s�   w e   f i x   t h e   s t a t i c   g r o u p   m e m b e r s h i p   r e d u n d a n t l y   i n   c a s e s   w h e r e   a P u b   i s   a l s o   m e r e l y   a n   o b s o l e t e   d u p l i c a t e ,   s i n c e   w e   h a v e   p o s s i b l y   n o t   y e t   a d v a n c e d   t o   t h e   e n d   o f   t h e   s e t   w i t h   t h e   s a m e   c i t e   k e y .   B u t   t h i s   i s   u n a v o i d a b l e   w i t h   t h i s   a l g o r i t h m   l o o p i n g   s i m p l y   t h r o u g h   a l l   p u b l i c a t i o n s .   T h e   e n d   r e s u l t   w i l l   b e   t h a t   y o u n g e s t P u b   ( f i r s t   i n   s e t   o f   p u b l i c a t i o n s   w i t h   s a m e   c i t e   k e y )   w i l l   b e   m e m b e r   o f   a l l   s t a t i c   g r o u p s   o f   t h e   p u b l i c a t i o n s   i n   t h e   s e t   ( u n i f i c a t i o n ) .   T h e   l a t t e r   s h o u l d   b e   n o   b i g   i s s u e ,   s i n c e   t y p i c a l l y   i n   m u l t i p l e   s e t s   o f   p u b l i c a t i o n s   i t   i s   o n l y   t h e   l a s t   p u b l i c a t i o n   t h a t   m a t t e r s .   I f   t h i s   s h o u l d   b e   a n   i s s u e ,   t h e n   w e   w o u l d   n e e d   t o   f i r s t   d e l e t e   a l l   s t a t i c   g r o u p   m e m b e r s h i p   i n f o   i n   ' y o u n g e s t P u b '   i n   c a s e   w e   e n c o u n t e r   a   3 r d ,   o r   4 t h   e t c .   s a m e   c i t e   k e y   i n   ' a P u b ' ,   a n d   c o p y   o n l y   t h o s e   o f   ' a P u b ' .   H o w e v e r ,   f o r   t h e   s a k e   o f   e f f i c i e n c y   I   w i s h   n o t   t o   s u p p o r t   t h i s   b e h a v i o r . p  t�� t n  V a u v u I   W a�� w���� (0 fixgroupmembership fixGroupMembership w  x y x o   W X����  0 thebibdeskdocu theBibDeskDocu y  z { z o   X Y���� 0 acitekey aCiteKey {  | } | o   Y Z���� 0 apub aPub }  ~�� ~ o   Z [���� 0 youngestpub youngestPub��  ��   v  f   V W��  ��   e k   d g    � � � l  d d�� � ���   � g a remember in 'youngestPub' possible candiate for a new set of publications with the same cite key    � � � � �   r e m e m b e r   i n   ' y o u n g e s t P u b '   p o s s i b l e   c a n d i a t e   f o r   a   n e w   s e t   o f   p u b l i c a t i o n s   w i t h   t h e   s a m e   c i t e   k e y �  ��� � r   d g � � � o   d e���� 0 apub aPub � o      ���� 0 youngestpub youngestPub��  ��   b ����
�� conscase��   `  � � � r   i l � � � o   i j���� 0 acitekey aCiteKey � o      ���� 0 prevcitekey prevCiteKey �  ��� � r   m p � � � o   m n���� 0 apub aPub � o      ���� 0 prevpub prevPub��  �� 0 apub aPub W o   3 4���� 0 thepubs thePubs U  ��� � X   v � ��� � � I  � ��� ���
�� .coredelonull���     obj  � o   � ����� 0 apub aPub��  �� 0 apub aPub � o   y z���� 0 thedupes theDupes��   + n     � � � 4    �� �
�� 
docu � m   	 
����  � m     � ��                                                                                  BDSK  alis    8  HDX                        �S�H+   N�BibDesk.app                                                    @7�ʪ	A        ����  	                TeX     �7y      ʩ�!     N�  z   HDX:Applications:TeX:BibDesk.app    B i b D e s k . a p p    H D X  Applications/TeX/BibDesk.app  / ��  ��     � � � l     ��������  ��  ��   �  � � � l     ��������  ��  ��   �  � � � i     � � � I      �� ����� (0 fixgroupmembership fixGroupMembership �  � � � o      ����  0 thebibdeskdocu theBibDeskDocu �  � � � o      ���� 0 
thecitekey 
theCiteKey �  � � � o      ���� 0 oldpub oldPub �  ��� � o      ���� 0 newpub newPub��  ��   � O     D � � � O    C � � � k    B � �  � � � r     � � � l    ����� � e     � � 6    � � � 2   ��
�� 
StGp � E     � � � 2   ��
�� 
bibi � o    ���� 0 oldpub oldPub��  ��   � o      ���� 0 thepubsgroups thePubsGroups �  ��� � Z    B � ����� � ?    � � � l    ����� � I   �� ���
�� .corecnte****       **** � o    ���� 0 thepubsgroups thePubsGroups��  ��  ��   � m    ����   � X   " > ��� � � I  2 9�� � �
�� .BDSKAdd null���     **** � o   2 3���� 0 newpub newPub � �� ���
�� 
insh � o   4 5���� 0 agroup aGroup��  �� 0 agroup aGroup � o   % &���� 0 thepubsgroups thePubsGroups��  ��  ��   � o    ����  0 thebibdeskdocu theBibDeskDocu � m      � ��                                                                                  BDSK  alis    8  HDX                        �S�H+   N�BibDesk.app                                                    @7�ʪ	A        ����  	                TeX     �7y      ʩ�!     N�  z   HDX:Applications:TeX:BibDesk.app    B i b D e s k . a p p    H D X  Applications/TeX/BibDesk.app  / ��   �  ��� � l     ��������  ��  ��  ��       � � � � ��   � �~�}�|
�~ .aevtoappnull  �   � ****�} &0 cleanupduplicates CleanupDuplicates�| (0 fixgroupmembership fixGroupMembership � �{ �z�y � ��x
�{ .aevtoappnull  �   � ****�z  �y   �   � �w�w &0 cleanupduplicates CleanupDuplicates�x *j+   � �v �u�t � ��s�v &0 cleanupduplicates CleanupDuplicates�u  �t   � �r�q�p�o�n�m�l�k�r  0 thebibdeskdocu theBibDeskDocu�q 0 thepubs thePubs�p 0 thedupes theDupes�o 0 prevcitekey prevCiteKey�n 0 prevpub prevPub�m 0 youngestpub youngestPub�l 0 apub aPub�k 0 acitekey aCiteKey �  (�j�i�h =�g A�f�e�d�c�b�a�`�_ b�^�]�\
�j 
docu
�i 
bibi
�h 
by  
�g 
SubS
�f 
Ascn�e 
�d .BDSKSortnull���     ****
�c 
msng
�b 
kocl
�a 
cobj
�` .corecnte****       ****
�_ 
ckey�^ �] (0 fixgroupmembership fixGroupMembership
�\ .coredelonull���     obj �s ���k/E�O��k/ �*�-E�����f� 	E�OjvE�O�E�O�E�O�E�O D�[��l kh ��,E�Og� ��  ��6FO)����a + Y �E�VO�E�O�E�[OY��O �[��l kh �j [OY��U � �[ ��Z�Y � ��X�[ (0 fixgroupmembership fixGroupMembership�Z �W ��W  �  �V�U�T�S�V  0 thebibdeskdocu theBibDeskDocu�U 0 
thecitekey 
theCiteKey�T 0 oldpub oldPub�S 0 newpub newPub�Y   � �R�Q�P�O�N�M�R  0 thebibdeskdocu theBibDeskDocu�Q 0 
thecitekey 
theCiteKey�P 0 oldpub oldPub�O 0 newpub newPub�N 0 thepubsgroups thePubsGroups�M 0 agroup aGroup � 	 ��L ��K�J�I�H�G�F
�L 
StGp �  
�K 
bibi
�J .corecnte****       ****
�I 
kocl
�H 
cobj
�G 
insh
�F .BDSKAdd null���     ****�X E� A� <*�-�[�-\Z�@1EE�O�j j ! �[��l kh ��l [OY��Y hUU ascr  ��ޭ
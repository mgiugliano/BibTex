FasdUAS 1.101.10   ��   ��    k             l      ��  ��   uo  Name      	Selected To Clipboard (Cite Key List)  Purpose		Create from all in BibDesk's top document currently selected publications a list of cite keys in the clipboard 
  
  Remark		It returns a comma seperated list of all cite keys in current selection in the clipboard.
  
 Installation	Copy this script to folder '~/Library/Application Support/BibDesk/Scripts/'
               Usage     	Run this script by choosing corresponding menu command from within BibDesk's Script menu
	
			It beeps if no document is available or the current sele	ction is empty or contains more than one publication. 
			
			There is a companion script 'Select From Clipboard (Cite Key List)' that can select publications from such a cite key list as found in the clipboard.
			
			It may be handy to define a custom shortcut, e.g. "Ctrl-+", via Systems Preferences -> Keyboard for Application BibDesk to trigger this script if you use it often.
      Programing  Andreas Fischlin, ETH Zurich              http://www.sysecol.ethz.ch/people/afischli              http://www.sysecol.ethz.ch/ 			  
	  af		6.May.2014 v 1.0: First implementation     � 	 	�       N a m e             	 S e l e c t e d   T o   C l i p b o a r d   ( C i t e   K e y   L i s t )       P u r p o s e 	 	 C r e a t e   f r o m   a l l   i n   B i b D e s k ' s   t o p   d o c u m e n t   c u r r e n t l y   s e l e c t e d   p u b l i c a t i o n s   a   l i s t   o f   c i t e   k e y s   i n   t h e   c l i p b o a r d   
     
     R e m a r k 	 	 I t   r e t u r n s   a   c o m m a   s e p e r a t e d   l i s t   o f   a l l   c i t e   k e y s   i n   c u r r e n t   s e l e c t i o n   i n   t h e   c l i p b o a r d . 
     
   I n s t a l l a t i o n 	 C o p y   t h i s   s c r i p t   t o   f o l d e r   ' ~ / L i b r a r y / A p p l i c a t i o n   S u p p o r t / B i b D e s k / S c r i p t s / ' 
                                U s a g e           	 R u n   t h i s   s c r i p t   b y   c h o o s i n g   c o r r e s p o n d i n g   m e n u   c o m m a n d   f r o m   w i t h i n   B i b D e s k ' s   S c r i p t   m e n u 
 	 
 	 	 	 I t   b e e p s   i f   n o   d o c u m e n t   i s   a v a i l a b l e   o r   t h e   c u r r e n t   s e l e 	 c t i o n   i s   e m p t y   o r   c o n t a i n s   m o r e   t h a n   o n e   p u b l i c a t i o n .   
 	 	 	 
 	 	 	 T h e r e   i s   a   c o m p a n i o n   s c r i p t   ' S e l e c t   F r o m   C l i p b o a r d   ( C i t e   K e y   L i s t ) '   t h a t   c a n   s e l e c t   p u b l i c a t i o n s   f r o m   s u c h   a   c i t e   k e y   l i s t   a s   f o u n d   i n   t h e   c l i p b o a r d . 
 	 	 	 
 	 	 	 I t   m a y   b e   h a n d y   t o   d e f i n e   a   c u s t o m   s h o r t c u t ,   e . g .   " C t r l - + " ,   v i a   S y s t e m s   P r e f e r e n c e s   - >   K e y b o a r d   f o r   A p p l i c a t i o n   B i b D e s k   t o   t r i g g e r   t h i s   s c r i p t   i f   y o u   u s e   i t   o f t e n . 
              P r o g r a m i n g     A n d r e a s   F i s c h l i n ,   E T H   Z u r i c h                              h t t p : / / w w w . s y s e c o l . e t h z . c h / p e o p l e / a f i s c h l i                              h t t p : / / w w w . s y s e c o l . e t h z . c h /    	 	 	     
 	     a f 	 	 6 . M a y . 2 0 1 4   v   1 . 0 :   F i r s t   i m p l e m e n t a t i o n     
  
 l     ��������  ��  ��        l     ��������  ��  ��        i         I     �� ��
�� .aevtoappnull  �   � ****  J      ����  ��    k            l     ��  ��    | v As an important side effect a comma seperated list of all cite keys currently selected is also put into the clipboard     �   �   A s   a n   i m p o r t a n t   s i d e   e f f e c t   a   c o m m a   s e p e r a t e d   l i s t   o f   a l l   c i t e   k e y s   c u r r e n t l y   s e l e c t e d   i s   a l s o   p u t   i n t o   t h e   c l i p b o a r d   ��  r         I     �������� 60 getcitekeylistofselection GetCiteKeyListOfSelection��  ��    o      ���� @0 thelistofcurrentlyselectedpubs theListOfCurrentlySelectedPubs��        l     ��������  ��  ��        i       !   I      �������� 60 getcitekeylistofselection GetCiteKeyListOfSelection��  ��   ! k     � " "  # $ # O      % & % k     ' '  ( ) ( r    
 * + * 4   �� ,
�� 
docu , m    ����  + o      ����  0 thebibdeskdocu theBibDeskDocu )  - . - r     / 0 / n     1 2 1 1    ��
�� 
sele 2 o    ����  0 thebibdeskdocu theBibDeskDocu 0 o      ���� 0 thepubs thePubs .  3�� 3 r     4 5 4 l    6���� 6 I   �� 7 8
�� .BDSKSortnull���     **** 7 o    ���� 0 thepubs thePubs 8 �� 9��
�� 
by   9 m     : : � ; ;  C i t e   K e y��  ��  ��   5 o      ���� 0 thepubs thePubs��   & m      < <�                                                                                  BDSK  alis    &  Macintosh HD                   BD ����BibDesk.app                                                    ����            ����  
 cu             TeX   /:Applications:TeX:BibDesk.app/     B i b D e s k . a p p    M a c i n t o s h   H D  Applications/TeX/BibDesk.app  / ��   $  =�� = Z    � > ?�� @ > H    ) A A l   ( B���� B G    ( C D C l    E���� E =    F G F o    ���� 0 thepubs thePubs G m    ��
�� 
msng��  ��   D l  " & H���� H =  " & I J I o   " #���� 0 thepubs thePubs J J   # %����  ��  ��  ��  ��   ? k   ,  K K  L M L r   , 0 N O N J   , .����   O o      ���� $0 thefoundcitekeys theFoundCiteKeys M  P Q P r   1 4 R S R m   1 2 T T � U U   S o      ���� 80 thecitekeysasclipboardlist theCiteKeysAsClipboardList Q  V W V r   5 8 X Y X m   5 6 Z Z � [ [   Y o      ���� 0 thecommadelim theCommaDelim W  \ ] \ X   9 t ^�� _ ^ k   I o ` `  a b a O   I k c d c O   M j e f e O   Q i g h g k   U h i i  j k j r   U [ l m l e   U Y n n 1   U Y��
�� 
ckey m o      ���� 0 
thecitekey 
theCiteKey k  o p o r   \ ` q r q o   \ ]���� 0 
thecitekey 
theCiteKey r n      s t s  ;   ^ _ t o   ] ^���� $0 thefoundcitekeys theFoundCiteKeys p  u�� u r   a h v w v b   a f x y x b   a d z { z o   a b���� 80 thecitekeysasclipboardlist theCiteKeysAsClipboardList { o   b c���� 0 thecommadelim theCommaDelim y o   d e���� 0 
thecitekey 
theCiteKey w o      ���� 80 thecitekeysasclipboardlist theCiteKeysAsClipboardList��   h o   Q R���� 0 apub aPub f o   M N����  0 thebibdeskdocu theBibDeskDocu d m   I J | |�                                                                                  BDSK  alis    &  Macintosh HD                   BD ����BibDesk.app                                                    ����            ����  
 cu             TeX   /:Applications:TeX:BibDesk.app/     B i b D e s k . a p p    M a c i n t o s h   H D  Applications/TeX/BibDesk.app  / ��   b  }�� } r   l o ~  ~ m   l m � � � � �  ,    o      ���� 0 thecommadelim theCommaDelim��  �� 0 apub aPub _ o   < =���� 0 thepubs thePubs ]  � � � l  u u�� � ���   � � { As an important side effect a comma seperated list of all cite keys currently selected is also put into the clipboard here    � � � � �   A s   a n   i m p o r t a n t   s i d e   e f f e c t   a   c o m m a   s e p e r a t e d   l i s t   o f   a l l   c i t e   k e y s   c u r r e n t l y   s e l e c t e d   i s   a l s o   p u t   i n t o   t h e   c l i p b o a r d   h e r e �  � � � I  u |�� ���
�� .JonspClpnull���     **** � l  u x ����� � c   u x � � � o   u v���� 80 thecitekeysasclipboardlist theCiteKeysAsClipboardList � m   v w��
�� 
ctxt��  ��  ��   �  ��� � L   }  � � o   } ~���� $0 thefoundcitekeys theFoundCiteKeys��  ��   @ I  � �������
�� .sysobeepnull��� ��� long��  ��  ��     � � � l     ��������  ��  ��   �  ��� � l     ��������  ��  ��  ��       �� � � � �����   � ��������
�� .aevtoappnull  �   � ****�� 60 getcitekeylistofselection GetCiteKeyListOfSelection�� @0 thelistofcurrentlyselectedpubs theListOfCurrentlySelectedPubs��   � �� ���� � ���
�� .aevtoappnull  �   � ****��  ��   �   � ������ 60 getcitekeylistofselection GetCiteKeyListOfSelection�� @0 thelistofcurrentlyselectedpubs theListOfCurrentlySelectedPubs�� *j+  E� � �� !���� � ����� 60 getcitekeylistofselection GetCiteKeyListOfSelection��  ��   � ����������������  0 thebibdeskdocu theBibDeskDocu�� 0 thepubs thePubs�� $0 thefoundcitekeys theFoundCiteKeys�� 80 thecitekeysasclipboardlist theCiteKeysAsClipboardList�� 0 thecommadelim theCommaDelim�� 0 apub aPub�� 0 
thecitekey 
theCiteKey �  <������ :������ T Z�������� �������
�� 
docu
�� 
sele
�� 
by  
�� .BDSKSortnull���     ****
�� 
msng
�� 
bool
�� 
kocl
�� 
cobj
�� .corecnte****       ****
�� 
ckey
�� 
ctxt
�� .JonspClpnull���     ****
�� .sysobeepnull��� ��� long�� �� *�k/E�O��,E�O���l E�UO�� 
 �jv �& XjvE�O�E�O�E�O :�[��l kh � � � *�,EE�O��6FO��%�%E�UUUO�E�[OY��O��&j O�Y *j  � �� ���  �   �����������~�}�|�{�z�y�x�w�v�u � � � �  p m i d 2 6 0 6 1 7 6 6��  ��  ��  ��  �  �~  �}  �|  �{  �z  �y  �x  �w  �v  �u  ��  ascr  ��ޭ
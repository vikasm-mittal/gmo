   M S B A M L   `   `   `  ����F  BContactForm, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null5clr-namespace:ContactForm.ViewsContactForm.Views  5   	       ContactForm.Views.Contact   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   1localclr-namespace:ContactForm.Views     5   	     � Title$  Contact��5   	    � SizeToContent$ WidthAndHeight=�6    � 
ResizeMode$ NoResize=�68    � 	Resources 5
         textBoxInError �� 
TargetType �� Triggers P� Property P� Value �� Property	 �� Value
 �� Self �� RelativeSource �� Path��%�   &	        �� 5   
   " ��6'    5      P� 5       �@=�HasError . . �5      ��  �@�ToolTip	 5      �� # Z
 $) #(Validation.Errors)[0].ErrorContent�5      5      5      .��5      � $��Center=�6   $��Center=�6&   $��10q�6C    � RowDefinitions 5   
   �� 5      �� 5      $��10 �6   �� 5      �� 5      $��10 �6   �� 5      �� 5      $��10 �6   �� 5      �� 5      $��10 �6    � ColumnDefinitions 5!   
   �� 5"      $	��150 �6   �� 5#      $	��150 �6   �� 5$      $	��150 �6   �� 5%      $	��150 �6   .+�5(   
   ��   LastName#��[ 6   $��0��64   $��0��6A   6S   �� 5)   
   $	��100��6   $��0��6   $��1��6+   $
��Left=�6;   #��[  6V   ��5*      �� $ 	FirstName� �� ValidatesOnDataErrors .  �� UpdateSourceTrigger$ 	LostFocus=�6o   �� 5+   
     	FirstName#��[ 6   $��0��65   $��2��6B   6U   �� 5,   
   $	��100��6   $��0��6   $��3��6+   $
��Left=�6;   #��[  6V   ��5-      �� $ LastName� . $ 	LostFocus=�6n   �� 5/   
     Address#��[ 6   $��2��63   $��0��6@   6R   �� 50   
   $��Stretch=�6   $��2��60   $��1��6=   $��4��6M   #��[  6a   ��51      �� $ Address� . $ 	LostFocus=�6m   �� 53   
    	 Phone#��[ 6   $��4��61   $��0��6>   6P   �� 54   
   $	��100��6   $��4��6   $��1��6+   $
��Left=�6;   ��6V   �� $ Phone�6t   �� 56   
   -   5        $��6��56      $��4��6   $��Right=�6.     Save#��[ 6J   $��75��6j   6u   57      58      
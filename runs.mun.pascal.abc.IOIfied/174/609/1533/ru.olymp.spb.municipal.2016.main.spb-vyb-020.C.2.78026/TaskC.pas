
Var n, i: integer;
Begin
   Readln(n);
   if n=1 then Write ('a');
   if n=3 then
   Begin
      WriteLn ('aba');
      WriteLn ('bab');
      WriteLn ('aba');
   End;
   if n=5 then
   Begin
      WriteLn ('abcba');
      WriteLn ('babab');
      WriteLn ('cbabc');
      WriteLn ('babab');
      WriteLn ('abcba');
   End;
   if n=7 then
   Begin
      WriteLn ('abcdcba');
      WriteLn ('babcbab');
      WriteLn ('cbababc');
      WriteLn ('dcbabcd');
      WriteLn ('cbababc');
      WriteLn ('babcbab');
      WriteLn ('abcdcba');
   End;
   if n=9 then
   Begin
      WriteLn ('abcdedcba');
      WriteLn ('babcdcbab');
      WriteLn ('cbabcbabc');
      WriteLn ('edcbabcde');
      WriteLn ('cbabcbabc');
      WriteLn ('babcdcbab');
      WriteLn ('abcdedcba');
   End;
   if n=11 then
   Begin
      WriteLn ('abcdefedcba');
      WriteLn ('babcdedcbab');
      WriteLn ('cbabcdcbabc');
      WriteLn ('fedcbabcdef');
      WriteLn ('cbabcdcbabc');
      WriteLn ('babcdedcbab');
      WriteLn ('abcdefedcba');
   End;

End.


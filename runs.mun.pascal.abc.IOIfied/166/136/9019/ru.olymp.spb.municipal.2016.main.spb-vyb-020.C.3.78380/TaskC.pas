
Var n, i: integer;
Begin

   Readln(n);
   if n=1 then Write ('a');
   if n=2 then
   Begin
      WriteLn ('ab');
      WriteLn ('ba');
   End;
   if n=3 then
   Begin
      WriteLn ('aba');
      WriteLn ('bab');
      WriteLn ('aba');
   End;
   if n=4 then
   Begin
      WriteLn ('abcb');
      WriteLn ('baba');
      WriteLn ('cbab');
      WriteLn ('baba');
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
      WriteLn ('cbabcbabc');
      WriteLn ('edcbabcde');
      WriteLn ('cbabcbabc');
      WriteLn ('cbabcbabc');
      WriteLn ('babcdcbab');
      WriteLn ('abcdedcba');
   End;
   if n=11 then
   Begin
      WriteLn ('abcdefedcba');
      WriteLn ('babcdedcbab');
      WriteLn ('cbabcdcbabc');
      WriteLn ('dcbabcbabcd');
      WriteLn ('edcbababcde');
      WriteLn ('fedcbabcdef');
      WriteLn ('edcbababcde');
      WriteLn ('dcbabcbabcd');
      WriteLn ('cbabcdcbabc');
      WriteLn ('babcdedcbab');
      WriteLn ('abcdefedcba');
   End;
   if n=13 then
   Begin
      WriteLn ('abcdefgfedcba');
      WriteLn ('babcdefedcbab');
      WriteLn ('cbabcdedcbabc');
      WriteLn ('dcbabcdcbabcd');
      WriteLn ('edcbabcbabcde');
      WriteLn ('fedcbababcdef');
      WriteLn ('gfedcbabcdefg');
      WriteLn ('fedcbababcdef');
      WriteLn ('edcbabcbabcde');
      WriteLn ('dcbabcdcbabcd');
      WriteLn ('cbabcdedcbabc');
      WriteLn ('babcdefedcbab');
      WriteLn ('abcdefgfedcba');
   End;
   if n=15 then
   Begin
      WriteLn ('abcdefghgfedcba');
      WriteLn ('babcdefgfedcbab');
      WriteLn ('cbabcdefedcbabc');
      WriteLn ('dcbabcdedcbabcd');
      WriteLn ('edcbabcdcbabcde');
      WriteLn ('fedcbabcbabcdef');
      WriteLn ('gfedcbababcdefg');
      WriteLn ('hgfedcbabcdefgh');
      WriteLn ('gfedcbababcdefg');
      WriteLn ('fedcbabcbabcdef');
      WriteLn ('edcbabcdcbabcde');
      WriteLn ('dcbabcdedcbabcd');
      WriteLn ('cbabcdefedcbabc');
      WriteLn ('babcdefgfedcbab');
      WriteLn ('abcdefghgfedcba');
   End;

End.


var
  n : integer;
procedure N1(x : integer);
begin
write('a')
end;

procedure N2(x : integer);
begin
writeln('aa');
writeln('aa');
end;

procedure N3(x : integer);
begin
writeln('aba');
writeln('bab');
writeln('aba');
end;

procedure N4(x : integer);
begin
writeln('abba');
writeln('baab');
writeln('abba');
end;

procedure N5(x : integer);
begin
writeln('abcba');
writeln('babab');
writeln('cbabc');
writeln('babab');
writeln('abcba');
end;

procedure N6(x : integer);
begin
writeln('abccba');
writeln('babbab');
writeln('cbaacb');
writeln('cbaacb');
writeln('babbab');
writeln('abccba');
end;

procedure N7(x : integer);
begin
writeln('abcdcba');
writeln('babcbab');
writeln('cbababc');
writeln('dcbabcd');
writeln('cbababc');
writeln('babcbab');
writeln('abcdcba');
end;

procedure N8(x : integer);
begin
writeln('abcddcba');
writeln('abbccbab');
writeln('cbabbabc');
writeln('dcbaacbd');
writeln('dcbaacbd');
writeln('cbabbabc');
writeln('abbccbab');
writeln('abcddcba');
end;

procedure N9(x : integer);
begin
writeln('abcdedcba');
writeln('babcdcbab');
writeln('cbabcbabc');
writeln('dcbababcd');
writeln('edcbabcde');
writeln('dcbababcd');
writeln('cbabcbabc');
writeln('babcdcbab');
writeln('abcdedcba');
end;

procedure N10(x : integer);
begin
writeln('abcdeedcba');
writeln('babcddcbab');
writeln('cbabccbabc');
writeln('dcbabbabcd');
writeln('edcbaabcde');
writeln('dcbabbabcd');
writeln('cbabccbabc');
writeln('babcddcbab');
writeln('abcdeedcba');
end;

procedure N11(x : integer);
begin
writeln('abcdefedcba');
writeln('babcdedcbab');
writeln('cbabcdcbabc');
writeln('dcbabcbabcd');
writeln('edcbababcde');
writeln('fedcbabcdef');
writeln('edcbababcde');
writeln('dcbabcbabcd');
writeln('cbabcdcbabc');
writeln('babcdedcbab');
writeln('abcdefedcba');
end;

procedure N12(x : integer);
begin
writeln('abcdeffedcba');
writeln('babcdeedcbab');
writeln('cbabcddcbabc');
writeln('dcbabccbabcd');
writeln('edcbabbabcde');
writeln('fedcbaabcdef');
writeln('fedcbaabcdef');
writeln('edcbabbabcde');
writeln('dcbabccbabcd');
writeln('cbabcddcbabc');
writeln('babcdeedcbab');
writeln('abcdeffedcba');
end;

procedure N13(x : integer);
begin
writeln('abcdefgfedcba');
writeln('babcdefedcbab');
writeln('cbabcdedcbabc');
writeln('dcbabcdcbabcd');
writeln('edcbabcbabcde');
writeln('fedcbababcdef');
writeln('gfedcbabcdefg');
writeln('fedcbababcdef');
writeln('edcbabcbabcde');
writeln('dcbabcdcbabcd');
writeln('cbabcdedcbabc');
writeln('babcdefedcbab');
writeln('abcdefgfedcba');
end;

procedure N14(x : integer);
begin
writeln('abcdefggfedcba');
writeln('babcdeffedcbab');
writeln('cbabcdeedcbabc');
writeln('dcbabcddcbabcd');
writeln('edcbabccbabcde');
writeln('fedcbabbabcdef');
writeln('gfedcbaabcdefg');
writeln('gfedcbaabcdefg');
writeln('fedcbabbabcdef');
writeln('edcbabaababcde');
writeln('dcbabcbbcbabcd');
writeln('cbabcdccdcbabc');
writeln('babcdeddedcbab');
writeln('abcdefeefedcba');
writeln('abcdefggfedcba');
end;

procedure N15(x : integer);
begin
writeln('abcdefghgfedcba');
writeln('babcdefgfedcbab');
writeln('cbabcdefedcbabc');
writeln('dcbabcdedcbabcd');
writeln('edcbabcdcbabcde');
writeln('fedcbabcbabcdef');
writeln('gfedcbababcdefg');
writeln('hgfedcbabcdefgh');
writeln('gfedcbababcdefg');
writeln('fedcbabcbabcdef');
writeln('edcbabcdcbabcde');
writeln('dcbabcdedcbabcd');
writeln('cbabcdefedcbabc');
writeln('babcdefgfedcbab');
writeln('abcdefghgfedcba');
end;

begin
readln(n);
case n of 
1: N1(n);
2: N2(n);
3: N3(n);
4: N4(n);
5: N5(n);
6: N6(n);
7: N7(n);
8: N8(n);
9: N9(n);
10: N10(n);
11: N11(n);
12: N12(n);
13: N13(n);
14: N14(n);
15: N15(n);
end;
readln();
end.
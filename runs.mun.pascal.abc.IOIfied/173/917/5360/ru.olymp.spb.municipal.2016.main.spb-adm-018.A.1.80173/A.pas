var
i:shortint;// �������
k:string; // ����
o:integer; // �����
b,b2:boolean; // �������� ��� �� 0 � ����� � ������ ��������� 
begin
read(k);
for i:=0 to k.Length-1 do
begin
if (k[i+1]='0') then o+=1; // + 1 ������� �� ������ 0
if ((k[k.Length-i]='0') and(not b)) then o-=1 else b:=true; //-1 ������� �� ������ 0 �� �����
if ((k[i+1]='0') and(not b2)) then o-=1 else b2:=true; //-1 ������� �� ������ 0 � ������ ������
end;
writeln(o);
end.
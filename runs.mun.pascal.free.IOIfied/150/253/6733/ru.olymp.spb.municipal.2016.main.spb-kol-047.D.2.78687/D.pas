program tree_pifagor;

uses
  crt, graphABC;
var
  x,y,v, i:integer;
  alfa, alfa1, alfa2, m: real;
  
procedure Pifagor(x0, y0, a, L: real; N: integer; a1,a2:real);
{ x0, y0 - ���������� ������ ��������� �����
  a - ���� ������� ����� ������ � ��������
  L - ����� ������ �����, ����� ����� ����� ����������� �� �����. k
  N - ���������� ������������  }
var
  x1, y1, k: real; { ��������� ���������� }
  
begin
  SetPenWidth(n); { ��������� ������� ����� ���������}
  k := 0.65;    { ����������� ���������� ����� ����� }
  if N > 0 then 
  begin
      x1 := x0 + L * cos(a);   { ������ X-���������� ����� �����}
      y1 := y0 - L * sin(a);   { ������ Y-���������� ����� �����}
    Line(round(x0), round(y0), round(x1), round(y1));  { ������ ������ �����}
    Pifagor(x1, y1, a + a1, L * k, N - 1, a1,a2);  { ������ ����� ����� }
    Pifagor(x1, y1, a - a2, L * k, N - 1, a1,a2);  { ������ ����� ������ }
  end;
end;

begin
  x:=350;   y:=450;  { ���������� ������ �����        }
  alfa:=pi/2;        { ���� ������� ����� 0..Pi       }
  m:=130;            { ��������� ����� �����  50..150 }
  v:= 7;             { ���������� ���������  1..20    }
  repeat
   for i:=0 to 5 do
  begin
  LockDrawing;
  Window.Clear;
  alfa1:=pi/(i+5);
  alfa2:=pi/(10-i);
  Pifagor(x, y, alfa, m, v, alfa1, alfa2); { ����� ��������� ��������� ������ }
    Redraw;
    Sleep(80);
  end;
    for i:=5 downto 0 do
  begin
  LockDrawing;
  Window.Clear;
  alfa1:=pi/(i+5);
  alfa2:=pi/(10-i);
  Pifagor(x, y, alfa, m, v, alfa1, alfa2); { ����� ��������� ��������� ������ }
    Redraw;
    Sleep(80);
  end;
  until false;
  {Writeln ('������ ��������: ������ ���� ��������'); }
end.

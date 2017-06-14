Var
    Digit, DigitSave: LongWord;
    NullCnt: Byte; { Null counter }
    Numeric: Byte;

Function ReadVar( Min, Max: LongWord ): LongWord; { Fool defense }
Var
    TempStr: String;
    Code: Integer;
    Number: LongWord;
Begin
    Repeat
        ReadLn( TempStr );
        Val( TempStr, Number, Code );
        If ( Number < Min ) or ( Number > Max ) then
            Code := 1;
    Until Code = 0;
    ReadVar := Number;
End;

Begin
    Write( 'Enter digit: ' ); 
    Digit := ReadVar( 1, 1000000000 );
    For Numeric := 1 to 10 do
        Begin
        If ( Digit mod 10 ) <> 0 then Break;
        Digit := Digit div 10;
        End;
    DigitSave := Digit;
    For Numeric := 1 to 10 do
        Begin
        If ( Digit div 10 ) = 0 then Break;
        Digit := Digit div 10;
        End;
    Digit := DigitSave;
    Repeat
        If ( Digit mod 10 ) = 0 then
            Inc( NullCnt );
        Digit := Digit div 10;
        Dec( Numeric );
    Until ( Digit = 0 );
    Write( NullCnt, '.', Chr( 10 ) );
End.
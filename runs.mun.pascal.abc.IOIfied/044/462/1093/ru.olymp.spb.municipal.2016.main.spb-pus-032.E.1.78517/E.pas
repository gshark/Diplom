PROGRAM problem_E;

VAR r, c : int64; // Размеры таблицы по вертикали и горизонтали соответственно.
    q    : integer; // Количество входных чисел.
    nmax : int64; // Максимальное число n, подчиняющееся закону диагоналей
    nmin : int64; // Минимальное число n, подчиняющееся обратному закону диагоналей.
    x    : int64; // min(r, c)
    x_n  : int64;
    y_n  : int64;
    i    : integer;
    n    : int64;
    nx   : int64; // Полученное для n значение координаты, совп. с x
    ny   : int64; // Полученное для n значение координаты, не совп. с x
    temp : real;

BEGIN
    readln (r, c, q);
    x := r;
    IF (r >= c) THEN x := c;
    nmax := (x * (x + 1)) DIV 2;
    nmin := (r * c) - nmax + 1;
    FOR i := 1 TO q DO
    BEGIN
        x := r;
        IF (r >= c) THEN x := c;
        read (n);
        IF (n <= nmax)
        THEN
        BEGIN
            temp := (1 + sqrt(1 + 8 * n)) / 2;
            IF (temp > floor(temp)) THEN temp := floor(temp) + 1;
            temp := temp - 1; // Теперь в temp хранится сумма координат
            y_n := n - round (((temp - 1) * ((temp - 1) + 1)) / 2);
            x_n := round (temp) - y_n + 1;
            writeln(y_n, ' ', x_n);
        END
        ELSE
        BEGIN
            IF (n >= nmin)
            THEN
            BEGIN
                n := (r * c - n) + 1;
                temp := (1 + sqrt(1 + 8 * n)) / 2;
                IF (temp > floor(temp)) THEN temp := floor(temp) + 1;
                temp := temp - 1; // Теперь в temp хранится сумма координат
                y_n := n - round (((temp - 1) * ((temp - 1) + 1)) / 2);
                x_n := round (temp) - y_n + 1;
                y_n := r - y_n + 1;
                x_n := c - x_n + 1;
                writeln(y_n, ' ', x_n);             
            END
            ELSE
            BEGIN
                n := (n - nmax) - 1;
                nx := n MOD x;
                ny := n DIV x;
                IF (x = r)
                THEN
                BEGIN
                    y_n := nx + 1;
                    x_n := ny - nx + x + 1;
                    writeln(y_n, ' ', x_n);
                END
                ELSE
                BEGIN
                    x_n := x - nx;
                    y_n := ny + nx + 2;
                    writeln(y_n, ' ', x_n);
                END;
            END;
        END;
    END;
END.
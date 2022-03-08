PROGRAM Privet(INPUT, OUTPUT);
USES
  DOS;
VAR
  Name, Name3: STRING;
  Name2: INTEGER;
BEGIN
  WRITELN('Content-Type: text/plain');
  WRITELN;
  Name := GetEnv('QUERY_STRING');
  Name2 := Pos('=', Name);
  Name3 := Copy(Name, Name2+1, length(Name)-Name2);
  IF Name3 <> ''
  THEN
    WRITELN('Hello dear, ', Name3)
  ELSE
    WRITELN('Hello Anonymous')
END.

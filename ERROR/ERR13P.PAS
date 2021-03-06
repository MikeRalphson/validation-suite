{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ PRETEST 6.5.4-1, FILE=ERR13P, CLASS=ERRORHANDLING, LEVEL=0,        }
{ NUMBER=03                                                          }
{                                                                    }
{ Modification History :                                             }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }

program ERR13P(output);
type
   rekord = record
               a : integer;
               b : boolean
            end;
var
   pointer : ^rekord;
begin
   new(pointer);
   pointer^.a:=1;  pointer^.b:=true;
   writeln(' PRETEST...6.5.4-1 (ERR13P)')
end.

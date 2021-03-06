{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.6.5.4-3, FILE=ERR44T, CLASS=ERRORHANDLING, LEVEL=0,         }
{ NUMBER=27                                                          }
{                                                                    }
{:This program causes an error to occur by the call of the procedure }
{:pack when a component of the unpacked array is both undefined and  }
{:accessed.                                                          }
{                                                                    }
{ Modification History :                                             }
{   V3.1: New test.                                                  }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{   V5.3: Placed 'ERROR...' as the first line executed.              }
{         The error number '(D.nn)' has been added to the            }
{         'ERROR NOT DETECTED' line.                                 }
{                                                                    }

program ERR44T(output);
type
   unpk = array [ 1 .. 2 ] of char;
var
   a: unpk;
   z: packed array [ 1 .. 2 ] of char;
begin
   writeln(' ERROR...6.6.5.4-3 (ERR44T)');
   pack(a, 1, z);
   writeln(' ERROR NOT DETECTED...6.6.5.4-3 (D.27)')
end.

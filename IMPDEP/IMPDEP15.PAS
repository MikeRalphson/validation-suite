{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.7.2.1-1, FILE=IMPDEP15, CLASS=IMPLEMENTATIONDEPENDENT,      }
{ LEVEL=0, NUMBER=05                                                 }
{                                                                    }
{:This program determines if a boolean-expression is partially or    }
{:completely evaluated when the value of the expression is           }
{:determined before the expression is fully evaluated.               }
{                                                                    }
{ Modification History :                                             }
{   V5.2: New test suggested by Denis Valois (College militaire de   }
{         Saint-Jean (Quebec).                                       }
{   V5.7: NUMBER changed to correspond with Annex F of 7185:1990.    }
{                                                                    }

program IMPDEP15(output);

var  LeftOpEvaluated, RightOpEvaluated: boolean;
     IntVar:integer;

function IntOperand(var evaluated: boolean; val: integer): integer;

begin
  evaluated := true;
  IntOperand := val
end;

begin
  writeln(' OUTPUT FROM TEST...6.7.2.1-1');
  LeftOpEvaluated := false;
  RightOpEvaluated := false;
  write(' Short circuit evaluation of integer expression (A*B)');
  write(', A and B zero,');
  IntVar:=IntOperand(LeftOpEvaluated,0)*IntOperand(RightOpEvaluated,0);
  if LeftOpEvaluated then
    if RightOpEvaluated then
      writeln(' not performed')
    else
      writeln(' performed, left operand evaluated')
  else
    if RightOpEvaluated then
      writeln(' performed, right operand evaluated')
    else
      writeln(', unexpected results');
  writeln(' IMPLEMENTATION DEPENDENT...6.7.2.1-1 (IMPDEP15)');
end.

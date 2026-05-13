// Author: Tyrone Darby
// Year Created: 2020
// Class: Grade 11
// Project: SBA

program sba;

Var 
  i, VC, n, VR: integer;
  CN, Constituency: string;

begin
  Writeln('WELCOME! PLEASE ENTER THE DATA');
  
  { Initialize counters }
  i := 0;
  n := 0; 

  While (i < 10) Do
  Begin
    i := i + 1;   
    Writeln('--- Entry ', i, ' ---');
    Writeln('Enter Constituency:');
    Readln(Constituency);
    Writeln('Enter candidate name:');
    Readln(CN);
    Writeln('Enter votes cast:');
    Readln(VC);
    Writeln('Enter votes received:'); 
    Readln(VR);

    { Use begin/end here because there are two actions to perform }
    If (VR >= 0.2 * VC) Then 
    Begin
       Writeln(CN, ': ', 'Refund Due');
       n := n + 1;
    End
    Else 
    Begin
       Writeln(CN, ': ', 'No Refund');
    End;
    
    Writeln; { Adds a blank line for readability }
  end;

  Writeln('--------------------------------------------------');
  Writeln('The number of candidates who received a refund is ', n);
  Readln; { Keeps the console open so you can see the result }
end.
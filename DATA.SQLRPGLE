**free

     /copy COPY

     dcl-Proc PrInsertar Export;
       dcl-pi *n;
         InUsuario likeDs(DsusuarioT) Const;
         OutSqlState like(wSqlStateT);
       end-pi;

       //- Process

       Exec SQL 
         Insert Into USUARIO values(:InUsuario);

        OutSqlState = SQLSTATE;

     end-Proc;
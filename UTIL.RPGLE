**free

     /copy COPY
      
     dcl-Proc FnFormatoFecha Export;
       dcl-pi *n like(wFechaT);
         InDate Date(*ISO) Const;
       end-pi;

       //- Variables
       dcl-s wFecha like(wFechaT);

       //- Process
       wFecha = %Char(InDate:*ISO);

       Return wFecha;

     end-proc;  

     dcl-Proc FnFormatoTiempo Export;
       dcl-pi *n like(wTiempoT);
         InTime Time(*ISO) Const;
       end-pi;

       //- Variables
       dcl-s wTiempo like(wTiempoT);

       //- Process
       wTiempo = %Char(InTime:*hms);

       Return wTiempo;
     end-Proc;

     dcl-Proc FnErrorSQL Export;
       dcl-pi *n like(wErrorT);
         InErrorSql like(wErrorSqlT) Const;
       end-pi;

       //- Variables
       dcl-s wMsgErr like(wErrorT);

       //- Process
         Select;
           when InErrorSql = '0000000' then
                wMsgErr = 'Successful';
           other 
                wMsgErr = 'Se produjo el error SQL' + InErrorSql;         
         endsl;
      
       Return wMsgErr;

     end-Proc; 
SET VERIFY OFF
SET SERVEROUTPUT ON
SET TERMOUT ON

WHENEVER OSERROR  EXIT 1 ROLLBACK
WHENEVER SQLERROR EXIT SQL.SQLCODE ROLLBACK

VARIABLE retcode NUMBER;
DEFINE  tblName  = &1;

DECLARE
    flgCnt  NUMBER(18):=0;

BEGIN
    select count(*) into flgCnt
    from   &tblName
    where IWM_SOUSHIN_FLAG = '1';

    if flgCnt > 0 then
        dbms_output.PUT_LINE('未送信があります： '||flgCnt||' 件');
        :retcode :=1;
    else
        dbms_output.PUT_LINE('全て送信済みです');
        :retcode :=0;
    end if;

END;
/
exit :retcode;

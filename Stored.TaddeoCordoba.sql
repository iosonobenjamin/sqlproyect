-- SP 1 --
DELIMITER $$

CREATE PROCEDURE sp_APELLIDO_alumno ()

BEGIN
	SELECT
		 *
	FROM alumno
	ORDER BY APELLIDO DESC LIMIT 10;
END
$$ 
-- SP 2 -- 

CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_incrementa_id_legajo`(
		inout id_legajo int) -- INCREMENTA EN 1 EL ID_LEGAJO --
BEGIN
	set id_legajo = id_legajo + 1 ;
    
END;

set @id_legajo = 10; -- SETEAMOS EN 10 EL ULTIMO NUMERO DE ID_LEGAJO --

call sistemaescolar_taddeocordoba.sp_incrementa_id_legajo(@id_legajo); --LLAMA AL SP CREADO --

select @id_legajo; --DEVUELVE EL VALOR INCREMENTADO --
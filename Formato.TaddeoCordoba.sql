-- FUNCION 1 --

CREATE DEFINER=`root`@`localhost` FUNCTION `new_function1`(
	id_legajo INT
) RETURNS varchar(15) CHARSET utf8mb4
    NO SQL
BEGIN
	
	RETURN 'PAULA';
END

-- FUNCION 2 -- Devuelve el mail a partid de la busqueda por DNI del alumno

CREATE DEFINER=`root`@`localhost` FUNCTION `new_function2`(p_DNI varchar (20)) RETURNS varchar(100) CHARSET utf8mb4
    DETERMINISTIC
BEGIN
	DECLARE v_mail varchar (100);

	SELECT mail
    INTO v_mail
    FROM alumno
	WHERE 
		ID_DNI = p_DNI;
	RETURN v_mail;
END 

-- usamos el DNI 28223389 para retornar el mail ---

select sistemaescolar_taddeocordoba.new_function2('28223389');


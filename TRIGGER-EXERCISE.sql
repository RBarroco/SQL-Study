# Trigger concept
DELIMITER $$
CREATE TRIGGER trig_hire_date  
BEFORE INSERT ON employees
FOR EACH ROW  
BEGIN  
                IF NEW.hire_date > date_format(sysdate(), '%Y-%m-%d') THEN     
                                SET NEW.hire_date = date_format(sysdate(), '%Y-%m-%d');     
                END IF;  
END $$  
DELIMITER ;  
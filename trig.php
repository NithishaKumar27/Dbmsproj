<?php
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "hbs_db";

$conn = new mysqli($servername, $username, $password, $dbname);


if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

$sql = "
CREATE TABLE external_system (
    booking_id INT PRIMARY KEY,
    code VARCHAR(100),
    student_id INT,
    schedule DATE,
    status TINYINT(1)
);

INSERT INTO external_system(booking_id,code,student_id,schedule,status) VALUES (1,'202201-00001',2,'2022-02-23',1);

DELIMITER //

CREATE TRIGGER after_booking_insert_sync
AFTER INSERT ON booking_list
FOR EACH ROW
BEGIN
    INSERT INTO external_system (booking_id, code, student_id, schedule, status)
    VALUES (NEW.id, NEW.code, NEW.student_id, NEW.schedule, NEW.status);
END;
//
CREATE TRIGGER after_booking_update_sync
AFTER UPDATE ON booking_list
FOR EACH ROW
BEGIN
    UPDATE external_system
    SET code = NEW.code, student_id = NEW.student_id, schedule = NEW.schedule, status = NEW.status
    WHERE booking_id = NEW.id;
END;
//


CREATE TRIGGER after_booking_delete_sync
AFTER DELETE ON booking_list
FOR EACH ROW
BEGIN
    DELETE FROM external_system WHERE booking_id = OLD.id;
END;
//

DELIMITER ;
";


if ($conn->multi_query($sql) === TRUE) {
    echo "SQL queries executed successfully";
} else {
    echo "Error executing SQL queries: " . $conn->error;
}
$conn->close();
?>
 
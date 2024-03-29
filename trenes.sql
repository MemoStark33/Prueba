USE metro;

CREATE TABLE `trains` (

`serial_number` VARCHAR(10) NOT NULL,

`line_id` BIGINT(20) UNSIGNED NOT NULL,
`type` TINYINT(4) NOT NULL,
`year` INT(4) NOT NULL,

`created_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
`updated_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,

PRIMARY KEY (serial_number),
CONSTRAINT `trains_line_id_foreign`
FOREIGN KEY (`line_id`) REFERENCES `lines2` (id)
)
DEFAULT CHARSET=utf8mb4
COLLATE=utf8mb4_unicode_ci;
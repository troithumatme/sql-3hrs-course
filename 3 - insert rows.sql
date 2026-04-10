-- INSERTING ROWS

-- Single row insertion
INSERT INTO
    employees
VALUES (
        1,
        'Trời Thu',
        'Mát Mẻ',
        11.09,
        '1997-09-11'
    );

SELECT * FROM employees;

-- Multiple row insertion
INSERT INTO
    employees
VALUES (
        2,
        'Phong Lan',
        'Chi Chủ',
        10.08,
        '1997-08-10'
    ),
    (
        3,
        'Bên Dưới',
        'Thâm Uyên',
        333.33,
        '2022-03-15'
    ),
    (
        4,
        'Thiên Hà',
        'Lãng Khách',
        444.44,
        '2025-01-01'
    ),
    (
        5,
        'Hồn',
        'Đế',
        777.77,
        '2018-09-20'
    ),
    (
        6,
        'Thiên',
        'Mệnh',
        999.99,
        '2026-04-04'
    ),
    (
        9,
        'Hộ Hoa',
        'Tán Sư',
        699.69,
        NULL,
        '2007-10-26'
    );
;

SELECT * FROM employees;

-- Partial row insertion (specifying columns)
INSERT INTO
    employees (
        employee_id,
        first_name,
        last_name
    )
VALUES (7, 'Thiền', 'Lưu');

SELECT * FROM employees;
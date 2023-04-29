CREATE TABLE USERS (
    USER_ID NUMBER(10),
    USER_NAME VARCHAR2(192),
    PASSWORD VARCHAR2(192),
    GROUP_ID NUMBER(1),
    CONSTRAINT USER_PK PRIMARY KEY(USER_ID),
    CONSTRAINT USER_NAME_CH CHECK(USER_NAME IS NOT NULL),
    CONSTRAINT USER_PASS_CH CHECK(PASSWORD IS NOT NULL),
    CONSTRAINT USER_NAME_UN UNIQUE(USER_NAME),
    CONSTRAINT USER_GROUP_CH CHECK(GROUP_ID IS NOT NULL)
);

INSERT INTO USERS VALUES(1, 'Maresh', '2003', 1);
INSERT INTO USERS VALUES(2, 'Salem', '2001', 2);

CREATE TABLE MY_LOCATIONS (
    LOCATION_ID NUMBER(10),
    COUNTRY VARCHAR2(50),
    CITY VARCHAR2(50),
    ZIP_CODE VARCHAR2(15),
    CONSTRAINT LOCATION_PK PRIMARY KEY(LOCATION_ID),
    CONSTRAINT COUNTRY_CH CHECK(COUNTRY IS NOT NULL),
    CONSTRAINT CITY_CH CHECK(CITY IS NOT NULL),
    CONSTRAINT CITY_UN UNIQUE(CITY)
);

INSERT INTO MY_LOCATIONS VALUES (
    1,
    'Yemen',
    'Taiz',
    '22212-3289'
);

INSERT INTO MY_LOCATIONS VALUES (
    2,
    'Sudia',
    'Riadh',
    '12398-6754'
);

INSERT INTO MY_LOCATIONS VALUES (
    3,
    'Yemen',
    'Sana''a',
    '16754'
);

INSERT INTO MY_LOCATIONS VALUES (
    4,
    'Egypt',
    'Qira',
    '16754'
);

INSERT INTO MY_LOCATIONS VALUES (
    5,
    'Yemen',
    'Ebb',
    '16767-9867'
);

INSERT INTO MY_LOCATIONS VALUES (
    6,
    'Yemen',
    'Aden',
    '98231-9867'
);

INSERT INTO MY_LOCATIONS VALUES (
    7,
    'Yemen',
    'Hadramout',
    '7767-6431'
);

INSERT INTO MY_LOCATIONS VALUES (
    8,
    'Yemen',
    'Sadah',
    '8888-6431'
);

CREATE TABLE CUSTOMERS (
    CUS_ID NUMBER(10),
    FIRST_NAME VARCHAR2(200),
    MID_NAME VARCHAR2(200),
    LAST_NAME VARCHAR2(200),
    EMAIL VARCHAR2(220),
    PASSWORD VARCHAR2(100),
    PHONE VARCHAR2(100),
    NATIONALITY VARCHAR2(100),
    SEX CHAR(1),
    BIRTH_DATE DATE,
    LOCATION_ID NUMBER(10),
    CONSTRAINT CUSTOMER_PK PRIMARY KEY(CUS_ID),
    CONSTRAINT LOCATION_FK FOREIGN KEY(LOCATION_ID) REFERENCES MY_LOCATIONS(LOCATION_ID) ON DELETE SET NULL,
    CONSTRAINT FIRST_NAME_CH CHECK(FIRST_NAME IS NOT NULL),
    CONSTRAINT LAST_NAME_CH CHECK(LAST_NAME IS NOT NULL),
    CONSTRAINT SEX_CH CHECK(SEX IS NOT NULL),
    CONSTRAINT BDATE_CH CHECK(BIRTH_DATE IS NOT NULL),
    CONSTRAINT CUS_EMAIL_CH CHECK(EMAIL IS NOT NULL),
    CONSTRAINT CUS_PASSWORD_CH CHECK(PASSWORD IS NOT NULL),
    CONSTRAINT CUS_PHONE_CH CHECK(PHONE IS NOT NULL),
    CONSTRAINT CUS_EMAIL_UN UNIQUE(EMAIL),
    CONSTRAINT CUS_PHONE_UN UNIQUE(PHONE)
);

INSERT INTO CUSTOMERS VALUES (
    1,
    'Ali',
    'Abdurahman',
    'Dabbash',
    'ali@gmail.com',
    'ali@1234',
    '775 553 994',
    'Yemeni',
    'M',
    '10-3-2003',
    1
);

INSERT INTO CUSTOMERS VALUES (
    2,
    'Malik',
    'Abdulkareem',
    'Al-Buryhi',
    'malik@gmail.com',
    'malik@1234',
    '777 144 030',
    'Yemeni',
    'M',
    '1-1-2002',
    1
);

INSERT INTO CUSTOMERS VALUES (
    3,
    'Mohammed',
    'Riadh',
    'Al-Mikhlafi',
    'mihklafi@gmail.com',
    'mihklafi@1234',
    '770 977 177',
    'Yemeni',
    'M',
    '9-3-2002',
    2
);

INSERT INTO CUSTOMERS VALUES (
    4,
    'Khalid',
    'Auad',
    'Al-Athuary',
    'khalid@gmail.com',
    'khalid@1234',
    '773 293 238',
    'Yemeni',
    'M',
    '20-10-2000',
    3
);

INSERT INTO CUSTOMERS(
    CUS_ID,
    FIRST_NAME,
    LAST_NAME,
    EMAIL,
    PASSWORD,
    PHONE,
    NATIONALITY,
    SEX,
    BIRTH_DATE
) VALUES (
    5,
    'suha',
    'Sami',
    'sami@gmail.com',
    'sami@1234',
    '734 535 463',
    'Sudia',
    'F',
    '20-2-2004'
);

INSERT INTO CUSTOMERS VALUES (
    6,
    'Salim',
    'Ahmed',
    'Al-Saadi',
    'salim@gmail.com',
    'salim@1234',
    '778 032 321',
    'Yemeni',
    'M',
    '10-9-1998',
    5
);

INSERT INTO CUSTOMERS(
    CUS_ID,
    FIRST_NAME,
    LAST_NAME,
    EMAIL,
    PASSWORD,
    PHONE,
    NATIONALITY,
    SEX,
    BIRTH_DATE
) VALUES (
    7,
    'Alia',
    'Al-Saadi',
    'suha@gmail.com',
    'suha@1234',
    '779 098 796',
    'Yemeni',
    'F',
    '12-2-1995'
);

INSERT INTO CUSTOMERS(
    CUS_ID,
    FIRST_NAME,
    MID_NAME,
    LAST_NAME,
    EMAIL,
    PASSWORD,
    PHONE,
    NATIONALITY,
    SEX,
    BIRTH_DATE,
    LOCATION_ID
) VALUES (
    8,
    'Amani',
    'Saad',
    'Al-Kabsi',
    'amani@gmail.com',
    'amani@1234',
    '785 590 222',
    'Egyption',
    'F',
    '19-1-1990',
    3
);

INSERT INTO CUSTOMERS(
    CUS_ID,
    FIRST_NAME,
    MID_NAME,
    LAST_NAME,
    EMAIL,
    PASSWORD,
    PHONE,
    NATIONALITY,
    SEX,
    BIRTH_DATE,
    LOCATION_ID
) VALUES (
    9,
    'Moneeb',
    'Abdulhafeedh',
    'Maresh',
    'moneeb@gmail.com',
    'moneeb@1234',
    '733 650 436',
    'Yemeni',
    'F',
    '10-6-2007',
    6
);

INSERT INTO CUSTOMERS(
    CUS_ID,
    FIRST_NAME,
    MID_NAME,
    LAST_NAME,
    EMAIL,
    PASSWORD,
    PHONE,
    NATIONALITY,
    SEX,
    BIRTH_DATE,
    LOCATION_ID
) VALUES (
    10,
    'Mohammed',
    'Abdulhafeedh',
    'Maresh',
    'mohammed@gmail.com',
    'mohammed@1234',
    '774 415 062',
    'Yemeni',
    'M',
    '21-2-2003',
    7
);


CREATE TABLE SHIPPERS (
    SHIPPER_ID NUMBER(10),
    SHIP_NAME VARCHAR2(200),
    SHIP_PHONE VARCHAR2(100),
    SHIP_EMAIL VARCHAR2(200),
    CONSTRAINT SHIPPER_PK PRIMARY KEY(SHIPPER_ID),
    CONSTRAINT SHIP_NAME_CH CHECK(SHIP_NAME IS NOT NULL),
    CONSTRAINT SHIP_PHONE_CH CHECK(SHIP_PHONE IS NOT NULL),
    CONSTRAINT SHIP_EMAIL_CH CHECK(SHIP_EMAIL IS NOT NULL),
    CONSTRAINT SHIP_NAME_UN UNIQUE(SHIP_NAME),
    CONSTRAINT SHIP_PHONE_UN UNIQUE(SHIP_PHONE),
    CONSTRAINT SHIP_EMAIL_UN UNIQUE(SHIP_EMAIL)
);

INSERT INTO SHIPPERS VALUES (
    1,
    'Al-Saaidah',
    '774 415 062',
	'alsaaid@gmail.com'
);

INSERT INTO SHIPPERS VALUES (
    2,
    'Al-Nabeel',
    '01887554',
	'alnabeel@gmail.com'
);

CREATE TABLE CARD_INFO (
    CARD_ID NUMBER(10),
    CARD_NUMBER VARCHAR2(100),
    CARD_TYPE VARCHAR2(100),
    CARD_HOLDER VARCHAR2(200),
    CARD_PIN VARCHAR2(100),
    EXPIRES_ON DATE,
    AMOUNT DECIMAL(10, 2),
    CONSTRAINT BILLING_PK PRIMARY KEY(CARD_ID),
    CONSTRAINT CARD_NUMBER_CH CHECK(CARD_NUMBER IS NOT NULL),
    CONSTRAINT CARD_NUMBER_UN UNIQUE(CARD_NUMBER),
    CONSTRAINT CARD_TYPE_CH CHECK(CARD_TYPE IS NOT NULL),
    CONSTRAINT CARD_HOLDER_CH CHECK(CARD_HOLDER IS NOT NULL),
    CONSTRAINT CARD_PIN_CH CHECK(CARD_PIN IS NOT NULL),
    CONSTRAINT CARD_EXPIRES_CH CHECK(EXPIRES_ON IS NOT NULL)
);


INSERT INTO CARD_INFO VALUES(
    1,
    '1287 1666 4255 1324',
    'Visa',
    'Maresh',
    '20032002',
    '1-5-2025',
	10000
);

INSERT INTO CARD_INFO VALUES(
    2,
    '5687 0987 5634 1333',
    'Paypal',
    'Mohammed',
    '12345678',
    '1-1-2030',
	20000
);

INSERT INTO CARD_INFO VALUES(
    3,
    '5687 0987 2222 1333',
    'Paypal',
    'Mohammed',
    '12345678',
    '1-1-2030',
	25550
);

INSERT INTO CARD_INFO VALUES(
    4,
    '9023 9878 9999 5555',
    'Paypal',
    'Suha',
    '87675438',
    '1-11-2024',
	2000
);

INSERT INTO CARD_INFO VALUES(
    5,
    '8888 6666 4444 2222',
    'Visa',
    'Suha',
    '111222333',
    '1-10-2024',
	0
);


CREATE TABLE STORES(
    STORE_ID NUMBER(10),
    STORE_NAME VARCHAR2(50) UNIQUE NOT NULL,
    LOCATION_ID NUMBER(10),
    CONSTRAINT STORE_PK PRIMARY KEY(STORE_ID),
    CONSTRAINT STORE_LOC_FK FOREIGN KEY(LOCATION_ID) REFERENCES MY_LOCATIONS(LOCATION_ID)
);

INSERT INTO stores
VALUES (1, 'Sana''a Store', 4);
INSERT INTO stores
VALUES (2, 'Taiz Store', 2);
INSERT INTO stores
VALUES (3, 'Aden Stores', 6);

CREATE TABLE ORDERS (
    ORDER_ID NUMBER(10),
    ORDER_CUS_ID NUMBER(10),
    ORDER_CARD_ID NUMBER(10),
    ORDER_DATE DATE,
    ORDER_LOCATION_ID NUMBER(10),
    ORDER_SHIPPER_ID NUMBER(10),
    ORDER_SHIPPER_DATE DATE,
    ORDER_STORE_ID NUMBER(10),
    TOTAL_PRICE NUMBER(20, 2) DEFAULT 0,
    STATUS VARCHAR2(100) DEFAULT 'ordered',
    CONSTRAINT ORDER_PK PRIMARY KEY(ORDER_ID),
    CONSTRAINT ORDER_LOC_FK FOREIGN KEY(ORDER_LOCATION_ID) REFERENCES MY_LOCATIONS(LOCATION_ID) ON DELETE SET NULL,
    CONSTRAINT ORDER_SHIP_FK FOREIGN KEY(ORDER_SHIPPER_ID) REFERENCES SHIPPERS(SHIPPER_ID) ON DELETE SET NULL,
    CONSTRAINT ORDER_CUS_FK FOREIGN KEY(ORDER_CUS_ID) REFERENCES CUSTOMERS(CUS_ID) ON DELETE CASCADE,
    CONSTRAINT ORDER_STORE_FK FOREIGN KEY(ORDER_STORE_ID) REFERENCES STORES(STORE_ID) ON DELETE CASCADE,
    CONSTRAINT ORDER_CARD_FK FOREIGN KEY(ORDER_CARD_ID) REFERENCES CARD_INFO(CARD_ID) ON DELETE SET NULL
);

CREATE TABLE SUPPLIERS (
    SUP_ID NUMBER(10),
    FIRST_NAME VARCHAR2(200),
    LAST_NAME VARCHAR2(200),
    EMAIL VARCHAR2(200),
    CONSTRAINT SUP_PK PRIMARY KEY(SUP_ID),
    CONSTRAINT PER_FIRST_NAME_CH CHECK(FIRST_NAME IS NOT NULL),
    CONSTRAINT PER_EMAIL_CH CHECK(EMAIL IS NOT NULL),
    CONSTRAINT PER_EMAIL_UNI UNIQUE(EMAIL)
);

INSERT INTO SUPPLIERS VALUES(
    1,
	'Mohammed',
    'Maresh',
	'mohammed@gmail.com'
);

INSERT INTO SUPPLIERS VALUES(
    2,
    'Mohammed',
    'Al-Harbi',
	'alharbi@gmail.com'
);

INSERT INTO SUPPLIERS VALUES(
    3,
    'Moneeb',
    'Maresh',
	'moneeb@gmail.com'
);

INSERT INTO SUPPLIERS VALUES(
    4,
    'Akram',
    'Qulais',
	'akram@gmail.com'
);

INSERT INTO SUPPLIERS VALUES(
    5,
    'Salem',
    'Al-Saadi',
	'salem@gmail.com'
);


CREATE TABLE PRODUCTS (
    PROD_ID NUMBER(10),
    PROD_NAME VARCHAR2(500),
    ITEM_PRICE DECIMAL(20, 2),
    PROD_TYPE VARCHAR2(20),
    CONSTRAINT PROD_PK PRIMARY KEY(PROD_ID),
    CONSTRAINT PROD_NAME_CH CHECK(PROD_NAME IS NOT NULL),
    CONSTRAINT PROD_NAME_UN UNIQUE(PROD_NAME),
    CONSTRAINT ITEM_PRICE_CH CHECK(ITEM_PRICE IS NOT NULL),
    CONSTRAINT PROD_TYPE_CH CHECK(PROD_TYPE IS NOT NULL),
    CONSTRAINT PROD_TYPE_CH2 CHECK(PROD_TYPE IN('Electronic', 'Book')),
);

INSERT INTO PRODUCTS(
    PROD_ID,
    PROD_NAME,
    ITEM_PRICE,
    PROD_TYPE
) VALUES(
    100,
    'Samsung Galaxy A03s',
    250,
    'Electronic'
);

INSERT INTO PRODUCTS(
    PROD_ID,
    PROD_NAME,
    ITEM_PRICE,
    PROD_TYPE
) VALUES(
    101,
    'S22 Ultra',
    809.99,
    'Electronic'
);


INSERT INTO PRODUCTS(
    PROD_ID,
    PROD_NAME,
    ITEM_PRICE,
    PROD_TYPE
) VALUES(
    105,
    'Dell Precision 5520',
    1100,
    'Electronic'
);

INSERT INTO PRODUCTS(
    PROD_ID,
    PROD_NAME,
    ITEM_PRICE,
    PROD_TYPE
) VALUES(
    106,
    'Dell Inspiron 7000',
    900,
    'Electronic'
);

INSERT INTO PRODUCTS(
    PROD_ID,
    PROD_NAME,
    ITEM_PRICE,
    PROD_TYPE
) VALUES(
    109,
    'I Love You to the Moon and Back',
    4.31,
    'Book'
);

INSERT INTO PRODUCTS(
    PROD_ID,
    PROD_NAME,
    ITEM_PRICE,
    PROD_TYPE
) VALUES(
    110,
    'Everything Is F*cked',
    20.07,
    'Book'
);

INSERT INTO PRODUCTS(
    PROD_ID,
    PROD_NAME,
    ITEM_PRICE,
    PROD_TYPE
) VALUES(
    111,
    'The Question Book - What Makes You Tick?',
    50.87,
    'Book'
);

INSERT INTO PRODUCTS(
    PROD_ID,
    PROD_NAME,
    ITEM_PRICE,
    PROD_TYPE
) VALUES(
    112,
    'Becuase You Are The Good',
    45.80,
    'Book'
);

INSERT INTO PRODUCTS(
    PROD_ID,
    PROD_NAME,
    ITEM_PRICE,
    PROD_TYPE
) VALUES(
    113,
    'Al-Khimiai',
    100.1,
    'Book'
);


CREATE TABLE BOOKS (
    BOOK_ID NUMBER(10),
    AUTHOR VARCHAR2(100),
    LANG VARCHAR2(200),
    FILE_SIZE VARCHAR2(100),
    PAGES NUMBER(10),
    CATEGORY VARCHAR2(100),
    CONSTRAINT BOOK_PK PRIMARY KEY(BOOK_ID),
    CONSTRAINT BOOK_FK FOREIGN KEY(BOOK_ID) REFERENCES PRODUCTS(PROD_ID) ON DELETE CASCADE,
    CONSTRAINT LANG_CH CHECK(LANG IS NOT NULL),
    CONSTRAINT PAGES_CH CHECK(PAGES IS NOT NULL)
);

INSERT INTO BOOKS(BOOK_ID, LANG, FILE_SIZE, PAGES, CATEGORY) VALUES(
    109,
    'English',
    '1 MB',
    28,
    'Kids Story'
);

INSERT INTO BOOKS(BOOK_ID, LANG, FILE_SIZE, PAGES, CATEGORY) VALUES(
    110,
    'English',
    '621 KB',
    288,
    'Self-Help'
);

INSERT INTO BOOKS(BOOK_ID, LANG, FILE_SIZE, PAGES, CATEGORY) VALUES(
    111,
    'English',
    '2.64 MB',
    133,
    'Lifestyle'
);

INSERT INTO BOOKS(BOOK_ID, LANG, FILE_SIZE, PAGES, CATEGORY) VALUES(
    112,
    'Arabic',
    '3.57 MB',
    192,
    'Religion'
);

INSERT INTO BOOKS(BOOK_ID, LANG, FILE_SIZE, PAGES, CATEGORY) VALUES(
    113,
    'Arabic',
    '2.34 MB',
    194,
    'Novel'
);

CREATE TABLE ELECTRONICS (
    ELEC_ID NUMBER(10),
    BRAND VARCHAR2(100),
    OS VARCHAR2(100),
    COLOR VARCHAR2(100),
    RAM_SIZE VARCHAR2(50),
    STORAGE_SIZE VARCHAR2(50),
    ELEC_TYPE VARCHAR2(20),
    CONSTRAINT ELEC_PK PRIMARY KEY(ELEC_ID),
    CONSTRAINT ELEC_PROD_FK FOREIGN KEY(ELEC_ID) REFERENCES PRODUCTS(PROD_ID) ON DELETE CASCADE,
    CONSTRAINT BRAND_CH CHECK(BRAND IS NOT NULL),
    CONSTRAINT OS_CH CHECK(OS IS NOT NULL),
    CONSTRAINT ELEC_TYPE_CH CHECK(ELEC_TYPE IS NOT NULL),
    CONSTRAINT ELEC_TYPE_CH2 CHECK(ELEC_TYPE IN('Computer', 'Phone'))
);

INSERT INTO ELECTRONICS(
    ELEC_ID,
    BRAND,
    OS,
    COLOR,
    RAM_SIZE,
    STORAGE_SIZE,
    ELEC_TYPE
) VALUES(
    100,
    'total wireless',
    'Android 11.0 (R OS)',
    'Black',
    '3 GB',
    '32 GB',
    'Phone'
);

INSERT INTO ELECTRONICS(
    ELEC_ID,
    BRAND,
    OS,
    COLOR,
    STORAGE_SIZE,
    ELEC_TYPE
) VALUES(
    101,
    'Samsung',
    'Android',
    'Phantom Black',
    '512 GB',
    'Phone'
);

INSERT INTO ELECTRONICS(
    ELEC_ID,
    BRAND,
    OS,
    COLOR,
    RAM_SIZE,
    STORAGE_SIZE,
    ELEC_TYPE
) VALUES(
    105,
    'Dell',
    'Windows 10',
    'Silver',
    '16 GB',
    '512 GB',
    'Computer'
);

INSERT INTO ELECTRONICS(
    ELEC_ID,
    BRAND,
    OS,
    COLOR,
    RAM_SIZE,
    STORAGE_SIZE,
    ELEC_TYPE
) VALUES(
    106,
    'Dell',
    'Windows 11',
    'Silver',
    '8 GB',
    '512 GB',
    'Computer'
);

CREATE TABLE COMPUTERS (
    COMPUTER_ID NUMBER(10),
    GRAPHIC_BRAND VARCHAR2(100),
    GRAPHIC_SIZE VARCHAR2(100),
    SCREEN_SIZE VARCHAR2(100),
    STORAGE_TYPE VARCHAR2(100),
    CONSTRAINT COMPUTER_PK PRIMARY KEY(COMPUTER_ID),
    CONSTRAINT COMPUTER_ELEC_FK FOREIGN KEY(COMPUTER_ID) REFERENCES ELECTRONICS(ELEC_ID) ON DELETE CASCADE,
    CONSTRAINT GRAPHIC_BRAND_CH CHECK(GRAPHIC_BRAND IS NOT NULL),
    CONSTRAINT GRAPHIC_SIZE_CH CHECK(GRAPHIC_SIZE IS NOT NULL)
);

INSERT INTO COMPUTERS VALUES(
    105,
    'Nividia',
    '4 GB',
	'15.3 Inch',
	'SSD'
);

INSERT INTO COMPUTERS VALUES(
    106,
    'Intel',
    '2 GB',
	'15.3 Inch',
	'SSD'
);


CREATE TABLE PHONES (
    PHONE_ID NUMBER(10),
    CELLUAR_TECHNOLOGY VARCHAR(10),
    CONSTRAINT PHONE_PK PRIMARY KEY(PHONE_ID),
    CONSTRAINT PHONE_ELEC_FK FOREIGN KEY(PHONE_ID) REFERENCES ELECTRONICS(ELEC_ID) ON DELETE CASCADE,
    CONSTRAINT CELLUAR_TECHNOLOGY_CH CHECK(CELLUAR_TECHNOLOGY IS NOT NULL)
);

INSERT INTO PHONES VALUES(
    100,
    '4G LTE'
);

INSERT INTO PHONES VALUES(
    101,
    '5G, 4G LTE'
);

CREATE TABLE ORDER_ITEMS (
    ITEM_ORDER_ID NUMBER(10),
    ITEM_PROD_ID NUMBER(10),
    ITEM_PRICE DECIMAL(10, 2),
    QUANTITY NUMBER(10),
    DISCOUNT DECIMAL(10, 2) DEFAULT 0,
    TOTAL_PRICE DECIMAL(10, 2) DEFAULT 0,
    CONSTRAINT ORDER_ITEMS_PK PRIMARY KEY(ITEM_ORDER_ID, ITEM_PROD_ID),
    CONSTRAINT ORDER_ITEMS_ORDER_FK FOREIGN KEY(ITEM_ORDER_ID) REFERENCES ORDERS(ORDER_ID) ON DELETE CASCADE,
    CONSTRAINT ORDER_ITEMS_PROD_FK FOREIGN KEY(ITEM_PROD_ID) REFERENCES PRODUCTS(PROD_ID) ON DELETE CASCADE,
    CONSTRAINT QUANTITY_CH CHECK(QUANTITY IS NOT NULL)
);

CREATE TABLE STOCKS(
    SUP_ID NUMBER(10),
    PROD_ID NUMBER(10),
    STORE_ID NUMBER(10),
    QUANTITY NUMBER(10),
    SUP_DATE DATE DEFAULT SYSDATE,
    CONSTRAINTS STOCK_PK PRIMARY KEY(SUP_ID, PROD_ID, STORE_ID),
    CONSTRAINTS STOCK_SUP_FK FOREIGN KEY(SUP_ID) REFERENCES SUPPLIERS(SUP_ID),
    CONSTRAINTS STOCK_PROD_FK FOREIGN KEY(PROD_ID) REFERENCES PRODUCTS(PROD_ID),
    CONSTRAINTS STOCK_STORE_FK FOREIGN KEY(STORE_ID) REFERENCES STORES(STORE_ID),
    CONSTRAINTS STOCK_QUANTITY_CH CHECK(QUANTITY IS NOT NULL)
);

INSERT INTO STOCKS
VALUES (1, 100, 3, 100, SYSDATE);
INSERT INTO STOCKS
VALUES (1, 101, 2, 150, SYSDATE);
INSERT INTO STOCKS
VALUES (2, 104, 2, 150, SYSDATE);
INSERT INTO STOCKS
VALUES (2, 105, 2, 400, SYSDATE);
INSERT INTO STOCKS
VALUES (3, 109, 1, 150, SYSDATE);
INSERT INTO STOCKS
VALUES (1, 109, 2, 400, SYSDATE);
INSERT INTO STOCKS
VALUES (2, 110, 1, 100, SYSDATE);
INSERT INTO STOCKS
VALUES (1, 110, 2, 120, SYSDATE);
INSERT INTO STOCKS
VALUES (3, 111, 3, 130, SYSDATE);
INSERT INTO STOCKS
VALUES (1, 112, 3, 300, SYSDATE);
INSERT INTO STOCKS
VALUES (3, 113, 2, 600, SYSDATE);


CREATE TABLE WHEREHOUSE(
    PROD_ID NUMBER(10),
    STORE_ID NUMBER(10),
    QUANTITY NUMBER(10),
    CONSTRAINTS WHERE_PK PRIMARY KEY(PROD_ID, STORE_ID),
    CONSTRAINTS WHERE_PROD_FK FOREIGN KEY(PROD_ID) REFERENCES PRODUCTS(PROD_ID),
    CONSTRAINTS WHERE_STORE_FK FOREIGN KEY(STORE_ID) REFERENCES STORES(STORE_ID),
    CONSTRAINTS WHERE_QUANTITY_CH CHECK(QUANTITY IS NOT NULL)
);

DROP TABLE WHEREHOUSE;

CREATE TABLE WHEREHOUSE AS
    SELECT
        PROD_ID,
        STORE_ID,
        SUM(QUANTITY) QUANTITY
    FROM
        STOCKS
    GROUP BY
        PROD_ID,
        STORE_ID;

ALTER TABLE WHEREHOUSE ADD CONSTRAINTS WHERE_PK PRIMARY KEY(PROD_ID, STORE_ID);
ALTER TABLE WHEREHOUSE ADDCONSTRAINTS WHERE_PROD_FK FOREIGN KEY(PROD_ID) REFERENCES PRODUCTS(PROD_ID);
ALTER TABLE WHEREHOUSE ADD CONSTRAINTS WHERE_STORE_FK FOREIGN KEY(STORE_ID) REFERENCES STORES(STORE_ID);
ALTER TABLE WHEREHOUSE ADD CONSTRAINTS WHERE_QUANTITY_CH CHECK(QUANTITY IS NOT NULL);


CREATE OR REPLACE VIEW BOOK_VIEW AS
    SELECT
        PROD_ID,
        PROD_NAME,
        ITEM_PRICE,
        AUTHOR,
        LANG,
        FILE_SIZE,
        PAGES,
        CATEGORY
    FROM
        PRODUCTS P
        JOIN BOOKS B
        ON P.PROD_ID = B.BOOK_ID;

CREATE OR REPLACE VIEW COMPUTER_VIEW AS
    SELECT
        PROD_ID,
        PROD_NAME,
        ITEM_PRICE,
        BRAND,
        COLOR,
        OS,
        RAM_SIZE,
        STORAGE_SIZE,
        STORAGE_TYPE,
        SCREEN_SIZE,
        GRAPHIC_BRAND,
        GRAPHIC_SIZE
    FROM
        PRODUCTS    P
        JOIN ELECTRONICS E
        ON P.PROD_ID = E.ELEC_ID JOIN COMPUTERS C
        ON P.PROD_ID = C.COMPUTER_ID;

CREATE OR REPLACE VIEW PHONE_VIEW AS
    SELECT
        PROD_ID,
        PROD_NAME,
        ITEM_PRICE,
        BRAND,
        COLOR,
        OS,
        RAM_SIZE,
        STORAGE_SIZE,
        CELLUAR_TECHNOLOGY
    FROM
        PRODUCTS    P
        JOIN ELECTRONICS E
        ON P.PROD_ID = E.ELEC_ID JOIN PHONES PH
        ON P.PROD_ID = PH.PHONE_ID;
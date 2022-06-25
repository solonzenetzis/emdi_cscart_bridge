CREATE TABLE `sbz_skroutz_docs` ( 
`code` VARCHAR(20) NOT NULL , 
`event_type` VARCHAR(20) NOT NULL , 
`state` VARCHAR(20) NOT NULL , 
`customer_id` VARCHAR(20) NOT NULL , 
`customer_first_name` VARCHAR(50) NOT NULL , 
`customer_last_name` VARCHAR(50) NOT NULL , 
`customer_address_street_name` VARCHAR(50) NOT NULL , 
`customer_address_street_number` VARCHAR(20) NOT NULL , 
`customer_address_street_zip` VARCHAR(20) NOT NULL , 
`customer_address_street_city` VARCHAR(50) NOT NULL , 
`customer_address_street_region` VARCHAR(50) NOT NULL , 
`customer_address_street_pickup_from_collection_point` VARCHAR(200) NOT NULL , 
`invoice` VARCHAR(5) NOT NULL , 
`comments` VARCHAR(500) NOT NULL , 
`courier` VARCHAR(50) NOT NULL , 
`courier_voucher` VARCHAR(500) NOT NULL , 
`courier_tracking_codes` VARCHAR(50) NOT NULL , 
`created_at` TIMESTAMP NOT NULL  , 
`expires_at` TIMESTAMP NOT NULL  , 
`dispatch_until` TIMESTAMP NOT NULL  , 
`invoice_company` VARCHAR(100) NOT NULL , 
`invoice_profession` VARCHAR(100) NOT NULL , 
`invoice_vat_number` VARCHAR(20) NOT NULL , 
`invoice_doy` VARCHAR(50) NOT NULL , 
`invoice_street_name` VARCHAR(50) NOT NULL , 
`invoice_street_number` VARCHAR(20) NOT NULL , 
`invoice_zip` VARCHAR(20) NOT NULL , 
`invoice_city` VARCHAR(50) NOT NULL , 
`invoice_region` VARCHAR(50) NOT NULL , 
`invoice_vat_exclusion` VARCHAR(10) NOT NULL ,  
`express` VARCHAR(5) NOT NULL , 
`gift_wrap` VARCHAR(5) NOT NULL , 
`fulfilled_by_skroutz` VARCHAR(5) NOT NULL , 
PRIMARY KEY (`code`)
) ENGINE = MyISAM CHARSET=utf8 COLLATE utf8_unicode_ci;

CREATE TABLE `sbz_skroutz_lines` ( 
`code` VARCHAR(20) NOT NULL , 
`id` VARCHAR(20) NOT NULL , 
`shop_uid` VARCHAR(20) NOT NULL , 
`product_name` VARCHAR(200) NOT NULL , 
`quantity` FLOAT NOT NULL , 
`size_label` VARCHAR(50) NOT NULL , 
`size_value` VARCHAR(50) NOT NULL , 
`shop_value` VARCHAR(50) NOT NULL , 
`unit_price` FLOAT NOT NULL , 
`total_price` FLOAT NOT NULL , 
`price_includes_vat` FLOAT NOT NULL , 
PRIMARY KEY (`id`),
INDEX `shop_uid` (`shop_uid`),
INDEX `code` (`code`)
) ENGINE = MyISAM CHARSET=utf8 COLLATE utf8_unicode_ci;
--
-- Licensed to the Apache Software Foundation (ASF) under one
-- or more contributor license agreements. See the NOTICE file
-- distributed with this work for additional information
-- regarding copyright ownership. The ASF licenses this file
-- to you under the Apache License, Version 2.0 (the
-- "License"); you may not use this file except in compliance
-- with the License. You may obtain a copy of the License at
--
-- http://www.apache.org/licenses/LICENSE-2.0
--
-- Unless required by applicable law or agreed to in writing,
-- software distributed under the License is distributed on an
-- "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
-- KIND, either express or implied. See the License for the
-- specific language governing permissions and limitations
-- under the License.
-- @Author - Ram

    
	-- a) add academic year into client
	
	ALTER TABLE `m_client`
	ADD COLUMN `academic_year_id` INT(20) NULL DEFAULT NULL AFTER `email_address`,
	ADD CONSTRAINT `FK_m_client_m_academic_year` FOREIGN KEY (`academic_year_id`) REFERENCES `m_academic_year` (`id`);

  -- b) add academic year into group
  
    ALTER TABLE `m_group`
	ADD COLUMN `academic_year_id` INT(20) NULL DEFAULT NULL AFTER `account_no`,
	ADD CONSTRAINT `FK_m_group_m_academic_year` FOREIGN KEY (`academic_year_id`) REFERENCES `m_academic_year` (`id`);
	
 -- c) 
 
    ALTER TABLE `m_savings_product`
	ADD COLUMN `academic_year_id` INT(20) NULL DEFAULT NULL AFTER `days_to_escheat`,
	ADD CONSTRAINT `FK_m_savings_product_m_academic_year` FOREIGN KEY (`academic_year_id`) REFERENCES `m_academic_year` (`id`);

	

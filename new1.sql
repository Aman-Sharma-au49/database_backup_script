# The proper term is pseudo_replica_mode, but we use this compatibility alias
# to make the statement usable on server versions 8.0.24 and older.
/*!50530 SET @@SESSION.PSEUDO_SLAVE_MODE=1*/;
/*!50003 SET @OLD_COMPLETION_TYPE=@@COMPLETION_TYPE,COMPLETION_TYPE=0*/;
DELIMITER /*!*/;
# at 157
#240507 12:40:18 server id 1  end_log_pos 126 CRC32 0xab65fb29 	Start: binlog v 4, server v 8.0.36-0ubuntu0.20.04.1 created 240507 12:40:18
# Warning: this binlog is either in use or was not closed properly.
BINLOG '
2tM5Zg8BAAAAegAAAH4AAAABAAQAOC4wLjM2LTB1YnVudHUwLjIwLjA0LjEAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAEwANAAgAAAAABAAEAAAAYgAEGggAAAAICAgCAAAACgoKKioAEjQA
CigAASn7Zas=
'/*!*/;
# at 1039
#240507 13:14:00 server id 1  end_log_pos 1116 CRC32 0xf34c93a0 	Anonymous_GTID	last_committed=5	sequence_number=6	rbr_only=no	original_committed_timestamp=1715067840852584	immediate_commit_timestamp=1715067840852584	transaction_length=181
# original_commit_timestamp=1715067840852584 (2024-05-07 13:14:00.852584 IST)
# immediate_commit_timestamp=1715067840852584 (2024-05-07 13:14:00.852584 IST)
/*!80001 SET @@session.original_commit_timestamp=1715067840852584*//*!*/;
/*!80014 SET @@session.original_server_version=80036*//*!*/;
/*!80014 SET @@session.immediate_server_version=80036*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 1116
#240507 13:14:00 server id 1  end_log_pos 1220 CRC32 0x22d5af81 	Query	thread_id=10	exec_time=0	error_code=0	Xid = 13587
SET TIMESTAMP=1715067840/*!*/;
SET @@session.pseudo_thread_id=10/*!*/;
SET @@session.foreign_key_checks=1, @@session.sql_auto_is_null=0, @@session.unique_checks=1, @@session.autocommit=1/*!*/;
SET @@session.sql_mode=1168113696/*!*/;
SET @@session.auto_increment_increment=1, @@session.auto_increment_offset=1/*!*/;
/*!\C utf8mb4 *//*!*/;
SET @@session.character_set_client=255,@@session.collation_connection=255,@@session.collation_server=255/*!*/;
SET @@session.lc_time_names=0/*!*/;
SET @@session.collation_database=DEFAULT/*!*/;
/*!80011 SET @@session.default_collation_for_utf8mb4=255*//*!*/;
drop database AMAN
/*!*/;
# at 1220
#240507 13:14:13 server id 1  end_log_pos 1297 CRC32 0xbbe475c6 	Anonymous_GTID	last_committed=6	sequence_number=7	rbr_only=no	original_committed_timestamp=1715067853852495	immediate_commit_timestamp=1715067853852495	transaction_length=187
# original_commit_timestamp=1715067853852495 (2024-05-07 13:14:13.852495 IST)
# immediate_commit_timestamp=1715067853852495 (2024-05-07 13:14:13.852495 IST)
/*!80001 SET @@session.original_commit_timestamp=1715067853852495*//*!*/;
/*!80014 SET @@session.original_server_version=80036*//*!*/;
/*!80014 SET @@session.immediate_server_version=80036*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 1297
#240507 13:14:13 server id 1  end_log_pos 1407 CRC32 0xfbd023b4 	Query	thread_id=10	exec_time=0	error_code=0	Xid = 13589
SET TIMESTAMP=1715067853/*!*/;
drop database Aakash
/*!*/;
# at 1407
#240507 13:14:19 server id 1  end_log_pos 1484 CRC32 0xfd04f7d7 	Anonymous_GTID	last_committed=7	sequence_number=8	rbr_only=no	original_committed_timestamp=1715067859578050	immediate_commit_timestamp=1715067859578050	transaction_length=178
# original_commit_timestamp=1715067859578050 (2024-05-07 13:14:19.578050 IST)
# immediate_commit_timestamp=1715067859578050 (2024-05-07 13:14:19.578050 IST)
/*!80001 SET @@session.original_commit_timestamp=1715067859578050*//*!*/;
/*!80014 SET @@session.original_server_version=80036*//*!*/;
/*!80014 SET @@session.immediate_server_version=80036*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 1484
#240507 13:14:19 server id 1  end_log_pos 1585 CRC32 0x911ddd2b 	Query	thread_id=10	exec_time=0	error_code=0	Xid = 13591
SET TIMESTAMP=1715067859/*!*/;
drop database him
/*!*/;
# at 1585
#240507 13:14:30 server id 1  end_log_pos 1662 CRC32 0xfd5b1704 	Anonymous_GTID	last_committed=8	sequence_number=9	rbr_only=no	original_committed_timestamp=1715067870616302	immediate_commit_timestamp=1715067870616302	transaction_length=178
# original_commit_timestamp=1715067870616302 (2024-05-07 13:14:30.616302 IST)
# immediate_commit_timestamp=1715067870616302 (2024-05-07 13:14:30.616302 IST)
/*!80001 SET @@session.original_commit_timestamp=1715067870616302*//*!*/;
/*!80014 SET @@session.original_server_version=80036*//*!*/;
/*!80014 SET @@session.immediate_server_version=80036*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 1662
#240507 13:14:30 server id 1  end_log_pos 1763 CRC32 0xa75469f2 	Query	thread_id=10	exec_time=0	error_code=0	Xid = 13593
SET TIMESTAMP=1715067870/*!*/;
drop database rao
/*!*/;
# at 1763
#240507 15:07:02 server id 1  end_log_pos 1840 CRC32 0xecfe233a 	Anonymous_GTID	last_committed=9	sequence_number=10	rbr_only=no	original_committed_timestamp=1715074622413254	immediate_commit_timestamp=1715074622413254	transaction_length=176
# original_commit_timestamp=1715074622413254 (2024-05-07 15:07:02.413254 IST)
# immediate_commit_timestamp=1715074622413254 (2024-05-07 15:07:02.413254 IST)
/*!80001 SET @@session.original_commit_timestamp=1715074622413254*//*!*/;
/*!80014 SET @@session.original_server_version=80036*//*!*/;
/*!80014 SET @@session.immediate_server_version=80036*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 1840
#240507 15:07:02 server id 1  end_log_pos 1939 CRC32 0xfe8ffbc5 	Query	thread_id=65	exec_time=0	error_code=0	Xid = 13597
SET TIMESTAMP=1715074622/*!*/;
/*!80016 SET @@session.default_table_encryption=0*//*!*/;
CREATE DATABASE A
/*!*/;
# at 1939
#240507 15:07:02 server id 1  end_log_pos 2016 CRC32 0x902a9c64 	Anonymous_GTID	last_committed=10	sequence_number=11	rbr_only=no	original_committed_timestamp=1715074622436421	immediate_commit_timestamp=1715074622436421	transaction_length=172
# original_commit_timestamp=1715074622436421 (2024-05-07 15:07:02.436421 IST)
# immediate_commit_timestamp=1715074622436421 (2024-05-07 15:07:02.436421 IST)
/*!80001 SET @@session.original_commit_timestamp=1715074622436421*//*!*/;
/*!80014 SET @@session.original_server_version=80036*//*!*/;
/*!80014 SET @@session.immediate_server_version=80036*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 2016
#240507 15:07:02 server id 1  end_log_pos 2111 CRC32 0x1c94984c 	Query	thread_id=65	exec_time=0	error_code=0	Xid = 13598
SET TIMESTAMP=1715074622/*!*/;
DROP DATABASE A
/*!*/;
# at 2111
#240508 11:06:42 server id 1  end_log_pos 2188 CRC32 0x92b6f634 	Anonymous_GTID	last_committed=11	sequence_number=12	rbr_only=no	original_committed_timestamp=1715146602505839	immediate_commit_timestamp=1715146602505839	transaction_length=191
# original_commit_timestamp=1715146602505839 (2024-05-08 11:06:42.505839 IST)
# immediate_commit_timestamp=1715146602505839 (2024-05-08 11:06:42.505839 IST)
/*!80001 SET @@session.original_commit_timestamp=1715146602505839*//*!*/;
/*!80014 SET @@session.original_server_version=80036*//*!*/;
/*!80014 SET @@session.immediate_server_version=80036*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 2188
#240508 11:06:42 server id 1  end_log_pos 2302 CRC32 0xd69b5c77 	Query	thread_id=10	exec_time=0	error_code=0	Xid = 13602
SET TIMESTAMP=1715146602/*!*/;
/*!80016 SET @@session.default_table_encryption=0*//*!*/;
create database aakash
/*!*/;
# at 2302
#240508 14:31:12 server id 1  end_log_pos 2379 CRC32 0x1cde2bdd 	Anonymous_GTID	last_committed=12	sequence_number=13	rbr_only=no	original_committed_timestamp=1715158872492673	immediate_commit_timestamp=1715158872492673	transaction_length=185
# original_commit_timestamp=1715158872492673 (2024-05-08 14:31:12.492673 IST)
# immediate_commit_timestamp=1715158872492673 (2024-05-08 14:31:12.492673 IST)
/*!80001 SET @@session.original_commit_timestamp=1715158872492673*//*!*/;
/*!80014 SET @@session.original_server_version=80036*//*!*/;
/*!80014 SET @@session.immediate_server_version=80036*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 2379
#240508 14:31:12 server id 1  end_log_pos 2487 CRC32 0x6284e202 	Query	thread_id=10	exec_time=0	error_code=0	Xid = 13611
SET TIMESTAMP=1715158872/*!*/;
/*!80016 SET @@session.default_table_encryption=0*//*!*/;
create database vats
/*!*/;
# at 2487
#240508 14:33:57 server id 1  end_log_pos 2564 CRC32 0xde95b9f4 	Anonymous_GTID	last_committed=13	sequence_number=14	rbr_only=no	original_committed_timestamp=1715159037239071	immediate_commit_timestamp=1715159037239071	transaction_length=189
# original_commit_timestamp=1715159037239071 (2024-05-08 14:33:57.239071 IST)
# immediate_commit_timestamp=1715159037239071 (2024-05-08 14:33:57.239071 IST)
/*!80001 SET @@session.original_commit_timestamp=1715159037239071*//*!*/;
/*!80014 SET @@session.original_server_version=80036*//*!*/;
/*!80014 SET @@session.immediate_server_version=80036*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 2564
#240508 14:33:57 server id 1  end_log_pos 2676 CRC32 0x43cb24de 	Query	thread_id=10	exec_time=0	error_code=0	Xid = 13617
use `aman`/*!*/;
SET TIMESTAMP=1715159037/*!*/;
/*!80013 SET @@session.sql_require_primary_key=0*//*!*/;
create table vvv(ID INT)
/*!*/;
# at 2676
#240508 15:07:01 server id 1  end_log_pos 2753 CRC32 0xf518b818 	Anonymous_GTID	last_committed=14	sequence_number=15	rbr_only=no	original_committed_timestamp=1715161021491542	immediate_commit_timestamp=1715161021491542	transaction_length=176
# original_commit_timestamp=1715161021491542 (2024-05-08 15:07:01.491542 IST)
# immediate_commit_timestamp=1715161021491542 (2024-05-08 15:07:01.491542 IST)
/*!80001 SET @@session.original_commit_timestamp=1715161021491542*//*!*/;
/*!80014 SET @@session.original_server_version=80036*//*!*/;
/*!80014 SET @@session.immediate_server_version=80036*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 2753
#240508 15:07:01 server id 1  end_log_pos 2852 CRC32 0x07e36667 	Query	thread_id=71	exec_time=0	error_code=0	Xid = 13620
SET TIMESTAMP=1715161021/*!*/;
/*!80016 SET @@session.default_table_encryption=0*//*!*/;
CREATE DATABASE A
/*!*/;
# at 2852
#240508 15:07:01 server id 1  end_log_pos 2929 CRC32 0x06fc252b 	Anonymous_GTID	last_committed=15	sequence_number=16	rbr_only=no	original_committed_timestamp=1715161021577882	immediate_commit_timestamp=1715161021577882	transaction_length=172
# original_commit_timestamp=1715161021577882 (2024-05-08 15:07:01.577882 IST)
# immediate_commit_timestamp=1715161021577882 (2024-05-08 15:07:01.577882 IST)
/*!80001 SET @@session.original_commit_timestamp=1715161021577882*//*!*/;
/*!80014 SET @@session.original_server_version=80036*//*!*/;
/*!80014 SET @@session.immediate_server_version=80036*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 2929
#240508 15:07:01 server id 1  end_log_pos 3024 CRC32 0xd98cf728 	Query	thread_id=71	exec_time=0	error_code=0	Xid = 13621
SET TIMESTAMP=1715161021/*!*/;
DROP DATABASE A
/*!*/;
# at 3024
#240508 15:27:19 server id 1  end_log_pos 3101 CRC32 0x0226ebaf 	Anonymous_GTID	last_committed=16	sequence_number=17	rbr_only=no	original_committed_timestamp=1715162239283862	immediate_commit_timestamp=1715162239283862	transaction_length=188
# original_commit_timestamp=1715162239283862 (2024-05-08 15:27:19.283862 IST)
# immediate_commit_timestamp=1715162239283862 (2024-05-08 15:27:19.283862 IST)
/*!80001 SET @@session.original_commit_timestamp=1715162239283862*//*!*/;
/*!80014 SET @@session.original_server_version=80036*//*!*/;
/*!80014 SET @@session.immediate_server_version=80036*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 3101
#240508 15:27:19 server id 1  end_log_pos 3212 CRC32 0xbab19f94 	Query	thread_id=10	exec_time=0	error_code=0	Xid = 13626
SET TIMESTAMP=1715162239/*!*/;
/*!80016 SET @@session.default_table_encryption=0*//*!*/;
create database saini
/*!*/;
# at 3212
#240508 15:30:45 server id 1  end_log_pos 3289 CRC32 0xde3263c6 	Anonymous_GTID	last_committed=17	sequence_number=18	rbr_only=no	original_committed_timestamp=1715162445195796	immediate_commit_timestamp=1715162445195796	transaction_length=192
# original_commit_timestamp=1715162445195796 (2024-05-08 15:30:45.195796 IST)
# immediate_commit_timestamp=1715162445195796 (2024-05-08 15:30:45.195796 IST)
/*!80001 SET @@session.original_commit_timestamp=1715162445195796*//*!*/;
/*!80014 SET @@session.original_server_version=80036*//*!*/;
/*!80014 SET @@session.immediate_server_version=80036*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 3289
#240508 15:30:45 server id 1  end_log_pos 3404 CRC32 0x65c20158 	Query	thread_id=10	exec_time=0	error_code=0	Xid = 13632
use `saini`/*!*/;
SET TIMESTAMP=1715162445/*!*/;
/*!80013 SET @@session.sql_require_primary_key=0*//*!*/;
create table aman(ID INT)
/*!*/;
# at 3404
#240509  9:46:19 server id 1  end_log_pos 3481 CRC32 0xd7cd44d8 	Anonymous_GTID	last_committed=18	sequence_number=19	rbr_only=no	original_committed_timestamp=1715228179731592	immediate_commit_timestamp=1715228179731592	transaction_length=184
# original_commit_timestamp=1715228179731592 (2024-05-09 09:46:19.731592 IST)
# immediate_commit_timestamp=1715228179731592 (2024-05-09 09:46:19.731592 IST)
/*!80001 SET @@session.original_commit_timestamp=1715228179731592*//*!*/;
/*!80014 SET @@session.original_server_version=80036*//*!*/;
/*!80014 SET @@session.immediate_server_version=80036*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 3481
#240509  9:46:19 server id 1  end_log_pos 3588 CRC32 0x4430c93b 	Query	thread_id=10	exec_time=0	error_code=0	Xid = 13636
SET TIMESTAMP=1715228179/*!*/;
drop database saini
/*!*/;
# at 3588
#240509 15:07:02 server id 1  end_log_pos 3665 CRC32 0xefc3b1e7 	Anonymous_GTID	last_committed=19	sequence_number=20	rbr_only=no	original_committed_timestamp=1715247422287001	immediate_commit_timestamp=1715247422287001	transaction_length=176
# original_commit_timestamp=1715247422287001 (2024-05-09 15:07:02.287001 IST)
# immediate_commit_timestamp=1715247422287001 (2024-05-09 15:07:02.287001 IST)
/*!80001 SET @@session.original_commit_timestamp=1715247422287001*//*!*/;
/*!80014 SET @@session.original_server_version=80036*//*!*/;
/*!80014 SET @@session.immediate_server_version=80036*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 3665
#240509 15:07:02 server id 1  end_log_pos 3764 CRC32 0x015e6ca6 	Query	thread_id=72	exec_time=0	error_code=0	Xid = 13642
SET TIMESTAMP=1715247422/*!*/;
/*!80016 SET @@session.default_table_encryption=0*//*!*/;
CREATE DATABASE A
/*!*/;
# at 3764
#240509 15:07:02 server id 1  end_log_pos 3841 CRC32 0x96aa3c84 	Anonymous_GTID	last_committed=20	sequence_number=21	rbr_only=no	original_committed_timestamp=1715247422361193	immediate_commit_timestamp=1715247422361193	transaction_length=172
# original_commit_timestamp=1715247422361193 (2024-05-09 15:07:02.361193 IST)
# immediate_commit_timestamp=1715247422361193 (2024-05-09 15:07:02.361193 IST)
/*!80001 SET @@session.original_commit_timestamp=1715247422361193*//*!*/;
/*!80014 SET @@session.original_server_version=80036*//*!*/;
/*!80014 SET @@session.immediate_server_version=80036*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 3841
#240509 15:07:02 server id 1  end_log_pos 3936 CRC32 0x0aade950 	Query	thread_id=72	exec_time=0	error_code=0	Xid = 13643
SET TIMESTAMP=1715247422/*!*/;
DROP DATABASE A
/*!*/;
# at 3936
#240510 10:22:23 server id 1  end_log_pos 4013 CRC32 0xf30ed5fb 	Anonymous_GTID	last_committed=21	sequence_number=22	rbr_only=no	original_committed_timestamp=1715316743468355	immediate_commit_timestamp=1715316743468355	transaction_length=182
# original_commit_timestamp=1715316743468355 (2024-05-10 10:22:23.468355 IST)
# immediate_commit_timestamp=1715316743468355 (2024-05-10 10:22:23.468355 IST)
/*!80001 SET @@session.original_commit_timestamp=1715316743468355*//*!*/;
/*!80014 SET @@session.original_server_version=80036*//*!*/;
/*!80014 SET @@session.immediate_server_version=80036*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 4013
#240510 10:22:23 server id 1  end_log_pos 4118 CRC32 0xedf721e2 	Query	thread_id=73	exec_time=0	error_code=0	Xid = 13660
SET TIMESTAMP=1715316743/*!*/;
/*!80016 SET @@session.default_table_encryption=0*//*!*/;
create database vip
/*!*/;
# at 4118
#240510 10:52:09 server id 1  end_log_pos 4195 CRC32 0xa28d3727 	Anonymous_GTID	last_committed=22	sequence_number=23	rbr_only=no	original_committed_timestamp=1715318529380277	immediate_commit_timestamp=1715318529380277	transaction_length=182
# original_commit_timestamp=1715318529380277 (2024-05-10 10:52:09.380277 IST)
# immediate_commit_timestamp=1715318529380277 (2024-05-10 10:52:09.380277 IST)
/*!80001 SET @@session.original_commit_timestamp=1715318529380277*//*!*/;
/*!80014 SET @@session.original_server_version=80036*//*!*/;
/*!80014 SET @@session.immediate_server_version=80036*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 4195
#240510 10:52:09 server id 1  end_log_pos 4300 CRC32 0x2037dfba 	Query	thread_id=73	exec_time=0	error_code=0	Xid = 13663
SET TIMESTAMP=1715318529/*!*/;
/*!80016 SET @@session.default_table_encryption=0*//*!*/;
create database sss
/*!*/;
# at 4300
#240510 11:26:12 server id 1  end_log_pos 4377 CRC32 0x58618f33 	Anonymous_GTID	last_committed=23	sequence_number=24	rbr_only=no	original_committed_timestamp=1715320572465607	immediate_commit_timestamp=1715320572465607	transaction_length=176
# original_commit_timestamp=1715320572465607 (2024-05-10 11:26:12.465607 IST)
# immediate_commit_timestamp=1715320572465607 (2024-05-10 11:26:12.465607 IST)
/*!80001 SET @@session.original_commit_timestamp=1715320572465607*//*!*/;
/*!80014 SET @@session.original_server_version=80036*//*!*/;
/*!80014 SET @@session.immediate_server_version=80036*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 4377
#240510 11:26:12 server id 1  end_log_pos 4476 CRC32 0xa92d257a 	Query	thread_id=76	exec_time=0	error_code=0	Xid = 13667
SET TIMESTAMP=1715320572/*!*/;
/*!80016 SET @@session.default_table_encryption=0*//*!*/;
CREATE DATABASE A
/*!*/;
# at 4476
#240510 11:26:12 server id 1  end_log_pos 4553 CRC32 0x85660567 	Anonymous_GTID	last_committed=24	sequence_number=25	rbr_only=no	original_committed_timestamp=1715320572508991	immediate_commit_timestamp=1715320572508991	transaction_length=172
# original_commit_timestamp=1715320572508991 (2024-05-10 11:26:12.508991 IST)
# immediate_commit_timestamp=1715320572508991 (2024-05-10 11:26:12.508991 IST)
/*!80001 SET @@session.original_commit_timestamp=1715320572508991*//*!*/;
/*!80014 SET @@session.original_server_version=80036*//*!*/;
/*!80014 SET @@session.immediate_server_version=80036*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 4553
#240510 11:26:12 server id 1  end_log_pos 4648 CRC32 0x6119e2e2 	Query	thread_id=76	exec_time=0	error_code=0	Xid = 13668
SET TIMESTAMP=1715320572/*!*/;
DROP DATABASE A
/*!*/;
# at 4648
#240510 12:52:16 server id 1  end_log_pos 4725 CRC32 0xe2c8d9da 	Anonymous_GTID	last_committed=25	sequence_number=26	rbr_only=no	original_committed_timestamp=1715325736047389	immediate_commit_timestamp=1715325736047389	transaction_length=176
# original_commit_timestamp=1715325736047389 (2024-05-10 12:52:16.047389 IST)
# immediate_commit_timestamp=1715325736047389 (2024-05-10 12:52:16.047389 IST)
/*!80001 SET @@session.original_commit_timestamp=1715325736047389*//*!*/;
/*!80014 SET @@session.original_server_version=80036*//*!*/;
/*!80014 SET @@session.immediate_server_version=80036*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 4725
#240510 12:52:16 server id 1  end_log_pos 4824 CRC32 0x0874e1ff 	Query	thread_id=77	exec_time=0	error_code=0	Xid = 13673
SET TIMESTAMP=1715325736/*!*/;
/*!80016 SET @@session.default_table_encryption=0*//*!*/;
CREATE DATABASE A
/*!*/;
# at 4824
#240510 12:52:16 server id 1  end_log_pos 4901 CRC32 0x70626bf1 	Anonymous_GTID	last_committed=26	sequence_number=27	rbr_only=no	original_committed_timestamp=1715325736081729	immediate_commit_timestamp=1715325736081729	transaction_length=172
# original_commit_timestamp=1715325736081729 (2024-05-10 12:52:16.081729 IST)
# immediate_commit_timestamp=1715325736081729 (2024-05-10 12:52:16.081729 IST)
/*!80001 SET @@session.original_commit_timestamp=1715325736081729*//*!*/;
/*!80014 SET @@session.original_server_version=80036*//*!*/;
/*!80014 SET @@session.immediate_server_version=80036*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 4901
#240510 12:52:16 server id 1  end_log_pos 4996 CRC32 0xa1a952a9 	Query	thread_id=77	exec_time=0	error_code=0	Xid = 13674
SET TIMESTAMP=1715325736/*!*/;
DROP DATABASE A
/*!*/;
# at 4996
#240510 13:07:02 server id 1  end_log_pos 5073 CRC32 0x177b37d1 	Anonymous_GTID	last_committed=27	sequence_number=28	rbr_only=no	original_committed_timestamp=1715326622289642	immediate_commit_timestamp=1715326622289642	transaction_length=176
# original_commit_timestamp=1715326622289642 (2024-05-10 13:07:02.289642 IST)
# immediate_commit_timestamp=1715326622289642 (2024-05-10 13:07:02.289642 IST)
/*!80001 SET @@session.original_commit_timestamp=1715326622289642*//*!*/;
/*!80014 SET @@session.original_server_version=80036*//*!*/;
/*!80014 SET @@session.immediate_server_version=80036*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 5073
#240510 13:07:02 server id 1  end_log_pos 5172 CRC32 0x02777dc3 	Query	thread_id=78	exec_time=0	error_code=0	Xid = 13678
SET TIMESTAMP=1715326622/*!*/;
/*!80016 SET @@session.default_table_encryption=0*//*!*/;
CREATE DATABASE A
/*!*/;
# at 5172
#240510 13:07:02 server id 1  end_log_pos 5249 CRC32 0x247c80b6 	Anonymous_GTID	last_committed=28	sequence_number=29	rbr_only=no	original_committed_timestamp=1715326622327087	immediate_commit_timestamp=1715326622327087	transaction_length=172
# original_commit_timestamp=1715326622327087 (2024-05-10 13:07:02.327087 IST)
# immediate_commit_timestamp=1715326622327087 (2024-05-10 13:07:02.327087 IST)
/*!80001 SET @@session.original_commit_timestamp=1715326622327087*//*!*/;
/*!80014 SET @@session.original_server_version=80036*//*!*/;
/*!80014 SET @@session.immediate_server_version=80036*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 5249
#240510 13:07:02 server id 1  end_log_pos 5344 CRC32 0xf2959cc6 	Query	thread_id=78	exec_time=0	error_code=0	Xid = 13679
SET TIMESTAMP=1715326622/*!*/;
DROP DATABASE A
/*!*/;
SET @@SESSION.GTID_NEXT= 'AUTOMATIC' /* added by mysqlbinlog */ /*!*/;
DELIMITER ;
# End of log file
/*!50003 SET COMPLETION_TYPE=@OLD_COMPLETION_TYPE*/;
/*!50530 SET @@SESSION.PSEUDO_SLAVE_MODE=0*/;

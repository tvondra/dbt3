create table supplier (s_suppkey  integer, s_name char(25), s_address varchar(40), s_nationkey integer, s_phone char(15), s_acctbal real, s_comment varchar(101), primary key ( s_suppkey ) );

create table part (p_partkey integer, p_name varchar(55), p_mfgr char(25), p_brand char(10), p_type varchar(25), p_size integer, p_container char(10), p_retailprice real, p_comment varchar(23), primary key (p_partkey));

create table partsupp (ps_partkey integer, ps_suppkey integer, ps_availqty integer, ps_supplycost real, ps_comment varchar(199), primary key ( ps_partkey, ps_suppkey ) );

create table customer (c_custkey integer, c_name varchar(25), c_address varchar(40), c_nationkey integer, c_phone char(15), c_acctbal real, c_mktsegment char(10), c_comment varchar(117), primary key ( c_custkey ) );

create table orders (o_orderkey integer, o_custkey integer, o_orderstatus char(1), o_totalprice real, o_orderdate date, o_orderpriority char(15), o_clerk char(15), o_shippriority integer, o_comment varchar(79), primary key ( o_orderkey ) );

create table lineitem (l_orderkey integer, l_partkey integer, l_suppkey integer, l_linenumber integer, l_quantity real, l_extendedprice real, l_discount real, l_tax real, l_returnflag char(1), l_linestatus char(1), l_shipdate date, l_commitdate date, l_receiptdate date, l_shipinstruct char(25), l_shipmode char(10), l_comment varchar(44), primary key ( l_orderkey, l_linenumber ) );

create table nation (n_nationkey integer, n_name char(25), n_regionkey integer, n_comment varchar(152), primary key ( n_nationkey ) );

create table region (r_regionkey integer, r_name char(25), r_comment varchar(152), primary key ( r_regionkey ) );

create table time_statistics (task_name varchar(40), s_time timestamp, e_time timestamp, int_time integer);

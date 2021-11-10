CREATE ROLE customer_admin_role;
CREATE ROLE driver_admin_role;
CREATE ROLE order_admin_role;
CREATE ROLE order_history_admin_role;

CREATE USER ordinary_customer_user WITH PASSWORD 'customer_password';
GRANT customer_admin_role TO ordinary_customer_user;
CREATE USER ordinary_driver_user WITH PASSWORD 'driver_password';
GRANT driver_admin_role TO ordinary_driver_user;
CREATE USER ordinary_order_user WITH PASSWORD 'order_password';
GRANT order_admin_role TO ordinary_order_user;
CREATE USER ordinary_order_history_user WITH PASSWORD 'order_history_password';
GRANT order_history_admin_role TO ordinary_order_user;

CREATE SCHEMA customer_schema AUTHORIZATION customer_admin_role;
CREATE SCHEMA driver_schema AUTHORIZATION driver_admin_role;
CREATE SCHEMA order_schema AUTHORIZATION order_admin_role;
CREATE SCHEMA order_history_schema AUTHORIZATION order_history_admin_role;
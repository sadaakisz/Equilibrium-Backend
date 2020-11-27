INSERT INTO commerces (created_at, updated_at, birth_date, email_address, first_name, last_name, password, username) VALUES ('2020-11-01 16:13:42', '2020-11-01 16:13:42', '2020-02-01 00:00:00', 'rparedes@gmail.com', 'Rosa', 'Paredes', '1234', 'RosaParedes'),('2020-11-01 16:13:42', '2020-11-01 16:13:42', '2020-02-02 00:00:00', 'ldiaz@gmail.com', 'Luis', 'Diaz', '1234', 'LuisDiaz'),('2020-11-01 16:13:42', '2020-11-01 16:13:42', '2020-02-03 00:00:00', 'jchavez@gmail.com', 'Jose', 'Chavez', '1234', 'JoseChavez'),('2020-11-01 16:13:42', '2020-11-01 16:13:42', '2020-02-04 00:00:00', 'lrevelo@gmail.com', 'Luis', 'Revelo', '1234', 'LuisRevelo');
INSERT INTO notifications (created_at, updated_at, content, commerce_id) VALUES('2020-11-01 16:22:37', '2020-11-01 16:22:37', 'rparedes notification1', '1'),('2020-11-01 16:22:37', '2020-11-01 16:22:37', 'rparedes notification2', '1'),('2020-11-01 16:22:37', '2020-11-01 16:22:37', 'ldiaz notification1', '2'),('2020-11-01 16:22:37', '2020-11-01 16:22:37', 'ldiaz notification2', '2'),('2020-11-01 16:22:37', '2020-11-01 16:22:37', 'jchavez notification1', '3'),('2020-11-01 16:22:37', '2020-11-01 16:22:37', 'jchavez notification2', '3'),('2020-11-01 16:22:37', '2020-11-01 16:22:37', 'lrevelo notification1', '4'),('2020-11-01 16:22:37', '2020-11-01 16:22:37', 'lrevelo notification2', '4');
INSERT INTO clients (created_at, updated_at, credit_amount, currency, first_name, last_name, commerce_id, active_days) VALUES('2020-11-01 16:25:04', '2020-11-01 16:25:04', '0', 's', 'José', 'Torres', '1', '0'),('2020-11-01 16:25:04', '2020-11-01 16:25:04', '0', 'd', 'Marina', 'Zárate', '1', '0'),('2020-11-01 16:25:04', '2020-11-01 16:25:04', '0', 'd', 'Jenny', 'Castro', '1', '0'),('2020-11-01 16:25:04', '2020-11-01 16:25:04', '0', 'd', 'Julieta', 'Olórtegui', '1', '0'),('2020-11-01 16:25:04', '2020-11-01 16:25:04', '0', 's', 'Juan', 'Díaz', '2', '0'),('2020-11-01 16:25:04', '2020-11-01 16:25:04', '0', 'd', 'Lucas', 'Marzo', '2', '0'),('2020-11-01 16:25:04', '2020-11-01 16:25:04', '0', 's', 'Diana', 'Cielo', '3', '0'),('2020-11-01 16:25:04', '2020-11-01 16:25:04', '0', 'd', 'Pedro', 'Li', '3', '0'),('2020-11-01 16:25:04', '2020-11-01 16:25:04', '0', 's', 'Luisa', 'Araoz', '4', '0'),('2020-11-01 16:25:04', '2020-11-01 16:25:04', '0', 'd', 'Pablo', 'Muñoz', '4', '0');
INSERT INTO rates (id, created_at, updated_at, capitalization, period, type, value) VALUES('1', '2020-11-01 16:27:31', '2020-11-01 16:27:31', '0', '30', 'simple', '90'),('2', '2020-11-01 16:27:31', '2020-11-01 16:27:31', '1', '15', 'nominal', '60'),('3', '2020-11-01 16:27:31', '2020-11-01 16:27:31', '0', '360', 'efectiva', '700'),('4', '2020-11-01 16:27:31', '2020-11-01 16:27:31', '0', '360', 'efectiva', '900'),('5', '2020-11-01 16:27:31', '2020-11-01 16:27:31', '0', '30', 'simple', '90'),('6', '2020-11-01 16:27:31', '2020-11-01 16:27:31', '1', '15', 'nominal', '80'),('7', '2020-11-01 16:27:31', '2020-11-01 16:27:31', '0', '360', 'efectiva', '300'),('8', '2020-11-01 16:27:31', '2020-11-01 16:27:31', '0', '30', 'efectiva', '45'),('9', '2020-11-01 16:27:31', '2020-11-01 16:27:31', '7', '180', 'nominal', '50'),('10', '2020-11-01 16:27:31', '2020-11-01 16:27:31', '0', '30', 'simple', '30');
INSERT INTO delivery_fees (id, created_at, updated_at, frequency, type, value) VALUES('1', '2020-11-01 16:32:10', '2020-11-01 16:32:10', '2', 'Periodo', '15'),('2', '2020-11-01 16:32:10', '2020-11-01 16:32:10', '0', 'Pedido', '15'),('3', '2020-11-01 16:32:10', '2020-11-01 16:32:10', '30', 'Periodo', '20'),('4', '2020-11-01 16:32:10', '2020-11-01 16:32:10', '0', 'Pedido', '10'),('5', '2020-11-01 16:32:10', '2020-11-01 16:32:10', '2', 'Periodo', '15'),('6', '2020-11-01 16:32:10', '2020-11-01 16:32:10', '0', 'Pedido', '15'),('7', '2020-11-01 16:32:10', '2020-11-01 16:32:10', '30', 'Periodo', '20'),('8', '2020-11-01 16:32:10', '2020-11-01 16:32:10', '0', 'Pedido', '10');
INSERT INTO maintenance_fees (id, created_at, updated_at, period, value) VALUES('1', '2020-11-01 16:37:08', '2020-11-01 16:37:08', 's', '10'),('2', '2020-11-01 16:37:08', '2020-11-01 16:37:08', 'q', '20'),('3', '2020-11-01 16:37:08', '2020-11-01 16:37:08', 'm', '40'),('4', '2020-11-01 16:37:08', '2020-11-01 16:37:08', 's', '25'),('5', '2020-11-01 16:37:08', '2020-11-01 16:37:08', 'q', '15'),('6', '2020-11-01 16:37:08', '2020-11-01 16:37:08', 'm', '30'),('7', '2020-11-01 16:37:08', '2020-11-01 16:37:08', 's', '25'),('8', '2020-11-01 16:37:08', '2020-11-01 16:37:08', 'q', '10');




INSERT INTO admin (admin_id, full_name, email, password, role) VALUES
(1, 'Michael Harris', 'michael.harris@dwallet.com', 'admin123', 'Super Admin'),
(2, 'Emma Thompson', 'emma.thompson@dwallet.com', 'admin456', 'Admin'),
(3, 'Daniel Carter', 'daniel.carter@dwallet.com', 'admin789', 'Support'),
(4, 'Sophia Bennett', 'sophia.bennett@dwallet.com', 'admin111', 'Manager'),
(5, 'James Anderson', 'james.anderson@dwallet.com', 'admin222', 'Auditor'),
(6, 'Olivia Parker', 'olivia.parker@dwallet.com', 'admin333', 'Support'),
(7, 'William Turner', 'william.turner@dwallet.com', 'admin444', 'Admin'),
(8, 'Isabella Collins', 'isabella.collins@dwallet.com', 'admin555', 'Manager'),
(9, 'Christopher Scott', 'christopher.scott@dwallet.com', 'admin666', 'Super Admin'),
(10, 'Grace Mitchell', 'grace.mitchell@dwallet.com', 'admin777', 'Analyst');

INSERT INTO users (user_id, full_name, email, phone_number, password) VALUES
(101, 'James Paul', 'jamespaul@gmail.com', '9876543210', 'pass123'),
(102, 'Sara Thomas', 'sara.thomas@yahoo.com', '9123456780', 'pass456'),
(103, 'Tom Strat', 'tom.strat@gmail.com', '9988776655', 'pass789'),
(104, 'Emily Clark', 'emily.clark@example.com', '9876123450', 'pass111'),
(105, 'Linda Green', 'linda.green@gmail.com', '9090909090', 'linda123'),
(106, 'Robert Miles', 'robert.miles@yahoo.com', '9887766554', 'robpass'),
(107, 'Emma Watson', 'emma.watson@mail.com', '9665544332', 'emma789'),
(108, 'Chris Jordan', 'chris.jordan@gmail.com', '9554433221', 'cjpass'),
(109, 'Nina Lopez', 'nina.lopez@yahoo.com', '9443322110', 'ninapass'),
(110, 'Kevin Hart', 'kevin.hart@gmail.com', '9332211009', 'khart123');

INSERT INTO wallet (wallet_id, user_id, balance, last_updated) VALUES
(501, 101, 1500.00, '2025-12-01 10:00:00'),
(502, 102, 850.50, '2025-12-02 11:30:00'),
(503, 103, 4200.00, '2025-12-03 12:15:00'),
(504, 104, 3000.00, '2025-12-04 09:45:00'),
(505, 105, 1250.75, '2025-12-05 14:20:00'),
(506, 106, 980.00, '2025-12-06 16:10:00'),
(507, 107, 5000.50, '2025-12-07 10:50:00'),
(508, 108, 2210.10, '2025-12-08 12:40:00'),
(509, 109, 340.40, '2025-12-09 13:30:00'),
(510, 110, 7650.00, '2025-12-10 15:00:00');

INSERT INTO beneficiary (user_id, name, phone_number, account_number, bank_name, ifsc_code) VALUES
(101, 'Alice Brown', '9871112233', '1234567890', 'HDFC Bank', 'HDFC0001234'),
(101, 'Bob Smith', '9872223344', '2345678901', 'ICICI Bank', 'ICIC0002345'),
(102, 'Charlie White', '9873334455', '3456789012', 'SBI Bank', 'SBIN0003456'),
(102, 'David Lee', '9874445566', '4567890123', 'Axis Bank', 'UTIB0004567'),
(103, 'Eva Green', '9875556677', '5678901234', 'HDFC Bank', 'HDFC0005678'),
(103, 'Frank Hall', '9876667788', '6789012345', 'ICICI Bank', 'ICIC0006789'),
(104, 'Grace King', '9877778899', '7890123456', 'SBI Bank', 'SBIN0007890'),
(104, 'Henry Scott', '9878889900', '8901234567', 'Axis Bank', 'UTIB0008901'),
(105, 'Ivy Adams', '9879990011', '9012345678', 'HDFC Bank', 'HDFC0009012'),
(105, 'Jack Turner', '9870001122', '0123456789', 'ICICI Bank', 'ICIC0000123');

INSERT INTO merchant (merchant_id, merchant_name, business_type, contact_info, admin_id) VALUES
(301, 'TechBazaar Electronics', 'Electronics', 'support@techbazaar.com', 1),
(302, 'GreenMart Grocery', 'Groceries', 'info@greenmart.com', 2),
(303, 'UrbanStyle Fashion', 'Clothing', 'contact@urbanstyle.com', 3),
(304, 'DailyFresh Market', 'Groceries', 'help@dailyfresh.com', 4),
(305, 'MegaTech Systems', 'Electronics', 'support@megatech.com', 5),
(306, 'StylePoint Apparel', 'Clothing', 'service@stylepoint.com', 6),
(307, 'BookNest Store', 'Books', 'contact@booknest.com', 7),
(308, 'HomeEssentials Depot', 'Home Goods', 'info@homeessentials.com', 8),
(309, 'GadgetWorld', 'Electronics', 'support@gadgetworld.com', 9),
(310, 'FreshBite Foods', 'Food & Beverages', 'hello@freshbite.com', 10);

INSERT INTO offer (offer_id, title, description, discount_value, valid_from, valid_to, terms) VALUES
(401, 'Festive Cashback', 'Get $50 cashback on transactions above $500', 50, '2025-01-01', '2025-02-15', 'One-time use per user'),
(402, 'New User Offer', 'Flat $100 off on first purchase', 100, '2025-01-01', '2025-12-31', 'Applicable only for new users'),
(403, 'Electronics Bonanza', 'Get 10% off on all electronics', 10, '2025-03-01', '2025-03-30', 'Valid for selected items'),
(404, 'Grocery Saver', 'Save $20 on grocery orders above $200', 20, '2025-02-01', '2025-04-01', 'Limited to 2 uses per user'),
(405, 'Fashion Fiesta', 'Get $40 off on fashion purchases', 40, '2025-01-15', '2025-05-15', 'Cannot combine with other offers'),
(406, 'Super Cashback Week', 'Earn $30 cashback on anything', 30, '2025-03-10', '2025-03-20', 'Unlimited use within validity'),
(407, 'Foodie Delight', 'Flat 15% off on all food orders', 15, '2025-02-10', '2025-06-10', 'Applicable at selected outlets'),
(408, 'Book Lovers Deal', 'Get $10 off on books above $50', 10, '2025-04-01', '2025-07-01', 'One-time use only'),
(409, 'Home Essentials Promo', 'Save $25 on home goods orders above $150', 25, '2025-01-10', '2025-03-10', 'Only online orders'),
(410, 'Weekend Special', 'Flat $5 off on any purchase', 5, '2025-01-01', '2025-12-31', 'Applicable only during weekends');

INSERT INTO payment_method (method_id, user_id, method_type, provider_name, account_reference) VALUES
(601, 101, 'UPI', 'Google Pay', 'james@upi'),
(602, 101, 'Credit Card', 'HDFC Bank', 'XXXX-XXXX-XXXX-8742'),
(603, 102, 'Debit Card', 'ICICI Bank', 'XXXX-XXXX-XXXX-5521'),
(604, 103, 'UPI', 'PhonePe', 'david@upi'),
(605, 104, 'Credit Card', 'SBI Bank', 'XXXX-XXXX-XXXX-1111'),
(606, 105, 'UPI', 'Paytm', 'linda@upi'),
(607, 106, 'Debit Card', 'Axis Bank', 'XXXX-XXXX-XXXX-2222'),
(608, 107, 'Credit Card', 'CitiBank', 'XXXX-XXXX-XXXX-3333'),
(609, 108, 'UPI', 'Google Pay', 'chris@upi'),
(610, 109, 'Debit Card', 'HDFC Bank', 'XXXX-XXXX-XXXX-4444');

INSERT INTO transaction (transaction_id, wallet_id, merchant_id, offer_id, amount, transaction_type, status, reference_code) VALUES
(701, 501, 301, 401, 1200.00, 'Payment', 'Success', 'TXN1001'),
(702, 501, NULL, NULL, 500.00, 'Wallet Top-Up', 'Success', 'TOPUP2001'),
(703, 502, 302, 402, 650.00, 'Payment', 'Success', 'TXN1002'),
(704, 503, 303, 405, 2499.00, 'Payment', 'Pending', 'TXN1003'),
(705, 504, 304, 404, 220.00, 'Payment', 'Success', 'TXN1004'),
(706, 505, 305, 403, 450.00, 'Payment', 'Failed', 'TXN1005'),
(707, 506, 306, 406, 199.00, 'Payment', 'Success', 'TXN1006'),
(708, 507, 307, 408, 75.00, 'Payment', 'Success', 'TXN1007'),
(709, 508, NULL, NULL, 300.00, 'Wallet Top-Up', 'Success', 'TOPUP2002'),
(710, 510, 310, 410, 999.00, 'Payment', 'Success', 'TXN1008');

INSERT INTO kyc_document (user_id, document_type, document_number, issue_date, expiry_date, status) VALUES
(101, 'Passport', 'P1234567', '2020-01-01', '2030-01-01', 'Approved'),
(101, 'Driving License', 'DL12345', '2019-05-05', '2029-05-05', 'Approved'),
(102, 'Passport', 'P2345678', '2021-03-10', '2031-03-10', 'Pending'),
(102, 'Aadhaar', '123412341234', '2018-07-15', NULL, 'Approved'),
(103, 'Passport', 'P3456789', '2019-11-20', '2029-11-20', 'Approved'),
(103, 'PAN', 'ABCDE1234F', '2017-08-08', NULL, 'Approved'),
(104, 'Driving License', 'DL67890', '2020-06-06', '2030-06-06', 'Pending'),
(104, 'Passport', 'P4567890', '2021-01-15', '2031-01-15', 'Approved'),
(105, 'Aadhaar', '432143214321', '2018-02-02', NULL, 'Approved'),
(105, 'PAN', 'FGHIJ5678K', '2019-09-09', NULL, 'Pending');

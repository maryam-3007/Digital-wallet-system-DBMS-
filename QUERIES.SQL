-- 1. ADMIN TABLE
CREATE TABLE admin (
    admin_id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(120) UNIQUE NOT NULL,
    password VARCHAR(200) NOT NULL,
    role VARCHAR(50) NOT NULL
);

-- 2. USER TABLE
CREATE TABLE users (
    user_id SERIAL PRIMARY KEY,
    full_name VARCHAR(150) NOT NULL,
    email VARCHAR(150) UNIQUE NOT NULL,
    phone_number VARCHAR(20) UNIQUE NOT NULL,
    password VARCHAR(200) NOT NULL,
    created_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- 3. WALLET TABLE
CREATE TABLE wallet (
    wallet_id SERIAL PRIMARY KEY,
    user_id INT UNIQUE REFERENCES users(user_id) ON DELETE CASCADE,
    balance NUMERIC(10,2) DEFAULT 0.00,
    last_updated TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

--4. BENEFICIARY TABLE
CREATE TABLE beneficiary (
    beneficiary_id SERIAL PRIMARY KEY,
    user_id INT REFERENCES users(user_id) ON DELETE CASCADE,  -- owner of wallet
    name VARCHAR(150) NOT NULL,
    phone_number VARCHAR(20),
    account_number VARCHAR(50),
    bank_name VARCHAR(100),
    ifsc_code VARCHAR(20)
);

-- 5. OFFER TABLE
CREATE TABLE offer (
    offer_id SERIAL PRIMARY KEY,
    title VARCHAR(150),
    description TEXT,
    discount_value NUMERIC(6,2),
    valid_from DATE,
    valid_to DATE,
    terms TEXT
);

-- 6. PAYMENT METHOD TABLE
CREATE TABLE payment_method (
    method_id SERIAL PRIMARY KEY,
    user_id INT REFERENCES users(user_id) ON DELETE CASCADE,
    method_type VARCHAR(50),
    provider_name VARCHAR(100),
    account_reference VARCHAR(150)
);

-- 7. MERCHANT TABLE
CREATE TABLE merchant (
    merchant_id SERIAL PRIMARY KEY,
    merchant_name VARCHAR(150) NOT NULL,
    business_type VARCHAR(100),
    contact_info VARCHAR(200),
    status VARCHAR(50) DEFAULT 'Active',
    admin_id INT REFERENCES admin(admin_id) ON DELETE SET NULL
);

-- 8. TRANSACTION TABLE
CREATE TABLE transaction (
    transaction_id SERIAL PRIMARY KEY,
    wallet_id INT REFERENCES wallet(wallet_id) ON DELETE CASCADE,
    merchant_id INT REFERENCES merchant(merchant_id),
    offer_id INT REFERENCES offer(offer_id),
    amount NUMERIC(10,2) NOT NULL,
    transaction_type VARCHAR(50) NOT NULL,
    timestamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    status VARCHAR(50),
    reference_code VARCHAR(100)
);

--9. NYC_DOCUMENT TABLE

CREATE TABLE kyc_document (
    kyc_id SERIAL PRIMARY KEY,
    user_id INT REFERENCES users(user_id) ON DELETE CASCADE,
    document_type VARCHAR(50) NOT NULL,  -- e.g., Passport, Driving License
    document_number VARCHAR(50) NOT NULL,
    issue_date DATE,
    expiry_date DATE,
    status VARCHAR(50) DEFAULT 'Pending'  -- Pending, Approved, Rejected
);


SELECT u.full_name, w.balance
FROM users u
JOIN wallet w ON u.user_id = w.user_id
WHERE w.balance > 1000;

SELECT t.transaction_id, m.merchant_name, t.amount, t.status
FROM transaction t
LEFT JOIN merchant m ON t.merchant_id = m.merchant_id;

SELECT t.transaction_id, m.merchant_name, t.amount, t.status
FROM transaction t
LEFT JOIN merchant m ON t.merchant_id = m.merchant_id;

SELECT u.full_name, SUM(t.amount) AS total_spent
FROM users u
JOIN wallet w ON u.user_id = w.user_id
JOIN transaction t ON t.wallet_id = w.wallet_id
WHERE t.transaction_type = 'Payment'
GROUP BY u.full_name;

SELECT DATE_TRUNC('month', created_date) AS month, COUNT(*)
FROM users
GROUP BY month;

SELECT merchant_name, business_type
FROM merchant
WHERE status = 'Active';

SELECT transaction_id, amount, offer_id
FROM transaction
WHERE offer_id IS NOT NULL;

SELECT u.full_name, p.method_type, p.provider_name
FROM users u
JOIN payment_method p ON u.user_id = p.user_id;

SELECT t.transaction_id, t.amount, m.merchant_name
FROM transaction t
JOIN merchant m ON t.merchant_id = m.merchant_id
WHERE m.admin_id = 1;

SELECT u.full_name
FROM users u
LEFT JOIN wallet w ON u.user_id = w.user_id
LEFT JOIN transaction t ON w.wallet_id = t.wallet_id
WHERE t.transaction_id IS NULL;


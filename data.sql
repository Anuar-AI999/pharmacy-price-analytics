INSERT INTO cities (name) VALUES
('Almaty'),
('Astana'),
('Shymkent');

INSERT INTO medicines (name) VALUES
('Paracetamol'),
('Ibuprofen'),
('Aspirin');

INSERT INTO medicine_prices (city_id, medicine_id, price, price_date) VALUES
(1, 1, 500, '2024-01-01'),
(1, 1, 550, '2024-01-10'),
(2, 1, 600, '2024-01-01'),
(3, 1, 450, '2024-01-01'),

(1, 2, 800, '2024-01-01'),
(2, 2, 750, '2024-01-01'),
(3, 2, 700, '2024-01-01'),

(1, 3, 300, '2024-01-01'),
(2, 3, 350, '2024-01-01'),
(3, 3, 280, '2024-01-01');
-- Добавляем города
INSERT INTO cities (name) VALUES
('Karaganda'),
('Aktobe'),
('Taraz'),
('Pavlodar'),
('Ust-Kamenogorsk'),
('Semey'),
('Atyrau'),
('Kostanay'),
('Kyzylorda');

-- Добавляем лекарства
INSERT INTO medicines (name) VALUES
('Amoxicillin'),
('Ceftriaxone'),
('Nurofen'),
('Analgin'),
('No-shpa'),
('Citramon'),
('Ambroxol'),
('Loratadine'),
('Omeprazole'),
('Panadol');

-- Добавляем цены
INSERT INTO medicine_prices (city_id, medicine_id, price, price_date) VALUES
(1, 1, 520, '2024-02-01'),
(1, 1, 580, '2024-03-01'),
(2, 1, 610, '2024-02-01'),
(2, 1, 630, '2024-03-01'),

(1, 4, 900, '2024-01-01'),
(2, 4, 950, '2024-01-01'),
(3, 4, 870, '2024-01-01'),

(1, 5, 1200, '2024-01-01'),
(2, 5, 1150, '2024-01-01'),
(3, 5, 1100, '2024-01-01');

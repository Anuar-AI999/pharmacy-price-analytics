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

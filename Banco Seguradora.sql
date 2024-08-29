create database seguradora;

CREATE TABLE Cliente (
    Numero INT PRIMARY KEY,
    Nome VARCHAR(100),
    Endereco VARCHAR(255)
);

CREATE TABLE Apolice (
    Numero INT PRIMARY KEY,
    Valor DECIMAL(10, 2),
    Cliente_Numero INT,
    FOREIGN KEY (Cliente_Numero) REFERENCES Cliente(Numero)
);

CREATE TABLE Carro (
    Registro INT PRIMARY KEY,
    Marca VARCHAR(100),
    Apolice_Numero INT,
    FOREIGN KEY (Apolice_Numero) REFERENCES Apolice(Numero)
);

CREATE TABLE Acidente (
    ID INT PRIMARY KEY,
    Data DATE,
    Hora TIME,
    Local VARCHAR(255),
    Carro_Registro INT,
    FOREIGN KEY (Carro_Registro) REFERENCES Carro(Registro)
);


INSERT INTO Cliente (Numero, Nome, Endereco) VALUES
(3, 'Matheus Henrico', 'QR 402, 23'),
(4, 'Joyce Aline', 'Qr 310, 48');


INSERT INTO Apolice (Numero, Valor, Cliente_Numero) VALUES
(101, 1500.00, 1),
(102, 2000.00, 2),
(103, 1800.00, 1);


INSERT INTO Carro (Registro, Marca, Apolice_Numero) VALUES
(12345, 'Toyota Corolla', 101),
(54321, 'Honda Civic', 102),
(98765, 'Ford Fiesta', 103);


INSERT INTO Acidente (ID, Data, Hora, Local, Carro_Registro) VALUES
(1, '2024-04-15', '10:30:00', 'Qr 402', 12345),
(2, '2024-04-16', '15:45:00', 'Qr 410', 54321),
(3, '2024-04-17', '09:00:00', 'Qr 210', 98765),
(4, '2024-04-18', '11:00:00', 'Qr 403', 12345);

select * from cliente,carro,apolice,acidente;


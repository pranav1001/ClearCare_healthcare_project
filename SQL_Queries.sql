CREATE TABLE Hospital (
    hospital_ID SERIAL PRIMARY KEY,
    hospital_name VARCHAR(255) NOT NULL,
    hospital_location VARCHAR(255)
);
INSERT INTO Hospital (hospital_name, hospital_location) 
VALUES ('Morristown_Medical_Center', 'New Jersey');
Select * from Hospital;

CREATE TABLE Payer (
    payer_id SERIAL PRIMARY KEY,
    payer_name VARCHAR(255) NOT NULL
);
INSERT INTO Payer (payer_id, payer_name) VALUES
(1, 'Aetna'),
(2, 'Cigna'),
(3, 'Humana'),
(4, 'Horizon'),
(5, 'Wellcare'),
(6, 'United_Healthcare')
Select * from Payer;


CREATE TABLE Plan_names (
    plan_id SERIAL,
    payer_id INT,
    plan_name VARCHAR(255),
    PRIMARY KEY (plan_id, plan_name),
    FOREIGN KEY (payer_id) REFERENCES Payer(payer_id)
);

INSERT INTO Plan_names (payer_id, plan_name) VALUES
(1, 'Aetna Medicare'),
(1, 'Aetna Behavioral Health'),
(1, 'Aetna Better Health'),
(2, 'Cigna'),
(2, 'Cigna Behavioral Health PPO'),
(2, 'Cigna Great West'),
(2, 'Cigna Local Plus'),
(2, 'Cigna TotalCare'),
(3, 'Humana'),
(3, 'Humana Medicare'),
(4, 'Horizon BCBSNJ'),
(4, 'Horizon BCBSNJ Braven Health'),
(4, 'Horizon BCBS Out of State Medicare'),
(4, 'Horizon NJ Health'),
(5, 'Wellcare'),
(5, 'Wellcare Health Plans'),
(6, 'United Healthcare'),
(6, 'United Healthcare Behavioral Health'),
(6, 'United Health Community Plan Behavioral Health');

Select * from plan_names;


CREATE TABLE NegotiatedCharges (
    negotiated_id SERIAL PRIMARY KEY,
    CPT_code VARCHAR(50) NOT NULL,
    procedure_id INT NOT NULL,
    payer_id INT NOT NULL,
    negotiated_charge DECIMAL(10, 2) NOT NULL,
    FOREIGN KEY (CPT_code, procedure_id) REFERENCES Procedure(CPT_code, procedure_id),
    FOREIGN KEY (payer_id) REFERENCES Payer(payer_id)
);

Select * from negotiated_charges;


CREATE TABLE Procedure (
    procedure_id SERIAL,
    hospital_id INT,  -- New column added
    CPT_code VARCHAR(50) NOT NULL,
    description VARCHAR(255) NOT NULL,
    standard_charge_minimum DECIMAL(10, 2),
    standard_charge_maximum DECIMAL(10, 2),
    PRIMARY KEY (procedure_id, CPT_code)  -- Composite primary key
);

Select * from Procedure;

SELECT 
    n.CPT_code,
    pr.description AS procedure_description,
    p.payer_name,
    pl.plan_name,
    n.negotiated_charge,
    pr.standard_charge_minimum AS min_price,
    pr.standard_charge_maximum AS max_price
FROM 
    Hospital h
JOIN 
    Procedure pr ON pr.hospital_id = h.hospital_ID
JOIN 
    NegotiatedCharges n ON n.CPT_code = pr.CPT_code AND n.procedure_id = pr.procedure_id
JOIN 
    Payer p ON n.payer_id = p.payer_id
JOIN 
    Plan_names pl ON p.payer_id = pl.payer_id
WHERE 
    h.hospital_location = 'New Jersey'
    AND h.hospital_name = 'Morristown_Medical_Center'
    AND pr.description = $1;  -- Placeholder for procedure description


CREATE INDEX idx_hospital_location ON Hospital(hospital_location);
CREATE INDEX idx_procedure_hospital_id ON Procedure(hospital_id);
CREATE INDEX idx_negotiatedcharges_cpt_procedure ON NegotiatedCharges(CPT_code, procedure_id);
CREATE INDEX idx_payer_name ON Payer(payer_name);
CREATE INDEX idx_plan_names_payer_id ON Plan_names(payer_id);



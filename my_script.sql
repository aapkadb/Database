--
-- PostgreSQL database dump
--

-- Dumped from database version 16.2
-- Dumped by pg_dump version 16.0

-- Started on 2024-03-05 00:33:12

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- TOC entry 7 (class 2615 OID 17061)
-- Name: hms_master; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA hms_master;


ALTER SCHEMA hms_master OWNER TO postgres;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 228 (class 1259 OID 17313)
-- Name: attendance; Type: TABLE; Schema: hms_master; Owner: postgres
--

CREATE TABLE hms_master.attendance (
    attendance_id integer NOT NULL,
    staff_id integer,
    attendance_date date,
    status character varying(20),
    creation_date timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    created_by character varying(100),
    updation_date timestamp without time zone,
    updated_by character varying(100)
);


ALTER TABLE hms_master.attendance OWNER TO postgres;

--
-- TOC entry 227 (class 1259 OID 17312)
-- Name: attendance_attendance_id_seq; Type: SEQUENCE; Schema: hms_master; Owner: postgres
--

CREATE SEQUENCE hms_master.attendance_attendance_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE hms_master.attendance_attendance_id_seq OWNER TO postgres;

--
-- TOC entry 5060 (class 0 OID 0)
-- Dependencies: 227
-- Name: attendance_attendance_id_seq; Type: SEQUENCE OWNED BY; Schema: hms_master; Owner: postgres
--

ALTER SEQUENCE hms_master.attendance_attendance_id_seq OWNED BY hms_master.attendance.attendance_id;


--
-- TOC entry 252 (class 1259 OID 17621)
-- Name: billing; Type: TABLE; Schema: hms_master; Owner: postgres
--

CREATE TABLE hms_master.billing (
    bill_id integer NOT NULL,
    patient_id character varying(50),
    doctor_id integer,
    treatment_details text,
    advance_payment numeric(10,2),
    charges numeric(10,2),
    payment_details text,
    invoice_details text,
    tax_details numeric(10,2),
    insurance_id integer,
    opd_charges numeric(10,2),
    emergency_charges numeric(10,2),
    creation_date timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    created_by character varying(100),
    updation_date timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_by character varying(100)
);


ALTER TABLE hms_master.billing OWNER TO postgres;

--
-- TOC entry 251 (class 1259 OID 17620)
-- Name: billing_bill_id_seq; Type: SEQUENCE; Schema: hms_master; Owner: postgres
--

CREATE SEQUENCE hms_master.billing_bill_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE hms_master.billing_bill_id_seq OWNER TO postgres;

--
-- TOC entry 5061 (class 0 OID 0)
-- Dependencies: 251
-- Name: billing_bill_id_seq; Type: SEQUENCE OWNED BY; Schema: hms_master; Owner: postgres
--

ALTER SEQUENCE hms_master.billing_bill_id_seq OWNED BY hms_master.billing.bill_id;


--
-- TOC entry 238 (class 1259 OID 17424)
-- Name: birth_details; Type: TABLE; Schema: hms_master; Owner: postgres
--

CREATE TABLE hms_master.birth_details (
    birth_details_id integer NOT NULL,
    mother_name character varying(100),
    birth_name character varying(100),
    blood_group character varying(50),
    gender character varying(50),
    birth_weight numeric(10,2),
    admission_id integer,
    creation_date timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    created_by character varying(100),
    updation_date timestamp without time zone,
    updated_by character varying(100)
);


ALTER TABLE hms_master.birth_details OWNER TO postgres;

--
-- TOC entry 237 (class 1259 OID 17423)
-- Name: birth_details_birth_details_id_seq; Type: SEQUENCE; Schema: hms_master; Owner: postgres
--

CREATE SEQUENCE hms_master.birth_details_birth_details_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE hms_master.birth_details_birth_details_id_seq OWNER TO postgres;

--
-- TOC entry 5062 (class 0 OID 0)
-- Dependencies: 237
-- Name: birth_details_birth_details_id_seq; Type: SEQUENCE OWNED BY; Schema: hms_master; Owner: postgres
--

ALTER SEQUENCE hms_master.birth_details_birth_details_id_seq OWNED BY hms_master.birth_details.birth_details_id;


--
-- TOC entry 240 (class 1259 OID 17449)
-- Name: deseased_details; Type: TABLE; Schema: hms_master; Owner: postgres
--

CREATE TABLE hms_master.deseased_details (
    deseased_details_id integer NOT NULL,
    deseased_name character varying(100),
    deseased_time timestamp without time zone,
    reason text,
    signing_authority character varying(100),
    admission_id integer,
    creation_date timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    created_by character varying(100),
    updation_date timestamp without time zone,
    updated_by character varying(100)
);


ALTER TABLE hms_master.deseased_details OWNER TO postgres;

--
-- TOC entry 239 (class 1259 OID 17448)
-- Name: deseased_details_deseased_details_id_seq; Type: SEQUENCE; Schema: hms_master; Owner: postgres
--

CREATE SEQUENCE hms_master.deseased_details_deseased_details_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE hms_master.deseased_details_deseased_details_id_seq OWNER TO postgres;

--
-- TOC entry 5063 (class 0 OID 0)
-- Dependencies: 239
-- Name: deseased_details_deseased_details_id_seq; Type: SEQUENCE OWNED BY; Schema: hms_master; Owner: postgres
--

ALTER SEQUENCE hms_master.deseased_details_deseased_details_id_seq OWNED BY hms_master.deseased_details.deseased_details_id;


--
-- TOC entry 242 (class 1259 OID 17464)
-- Name: diagnostic_tests; Type: TABLE; Schema: hms_master; Owner: postgres
--

CREATE TABLE hms_master.diagnostic_tests (
    test_id integer NOT NULL,
    test_name character varying(100),
    test_type character varying(50),
    cost numeric(10,2),
    creation_date timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    created_by character varying(100),
    updation_date timestamp without time zone,
    updated_by character varying(100)
);


ALTER TABLE hms_master.diagnostic_tests OWNER TO postgres;

--
-- TOC entry 241 (class 1259 OID 17463)
-- Name: diagnostic_tests_test_id_seq; Type: SEQUENCE; Schema: hms_master; Owner: postgres
--

CREATE SEQUENCE hms_master.diagnostic_tests_test_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE hms_master.diagnostic_tests_test_id_seq OWNER TO postgres;

--
-- TOC entry 5064 (class 0 OID 0)
-- Dependencies: 241
-- Name: diagnostic_tests_test_id_seq; Type: SEQUENCE OWNED BY; Schema: hms_master; Owner: postgres
--

ALTER SEQUENCE hms_master.diagnostic_tests_test_id_seq OWNED BY hms_master.diagnostic_tests.test_id;


--
-- TOC entry 248 (class 1259 OID 17537)
-- Name: health_insurance; Type: TABLE; Schema: hms_master; Owner: postgres
--

CREATE TABLE hms_master.health_insurance (
    insurance_id integer NOT NULL,
    patient_id character varying(50),
    insurance_provider_id integer,
    treatment_details text,
    total_amount numeric(10,2),
    amount_by_insurance numeric(10,2),
    amount_by_patient numeric(10,2),
    non_payable_item text,
    creation_date timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    created_by character varying(100),
    updation_date timestamp without time zone,
    updated_by character varying(100)
);


ALTER TABLE hms_master.health_insurance OWNER TO postgres;

--
-- TOC entry 247 (class 1259 OID 17536)
-- Name: health_insurance_insurance_id_seq; Type: SEQUENCE; Schema: hms_master; Owner: postgres
--

CREATE SEQUENCE hms_master.health_insurance_insurance_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE hms_master.health_insurance_insurance_id_seq OWNER TO postgres;

--
-- TOC entry 5065 (class 0 OID 0)
-- Dependencies: 247
-- Name: health_insurance_insurance_id_seq; Type: SEQUENCE OWNED BY; Schema: hms_master; Owner: postgres
--

ALTER SEQUENCE hms_master.health_insurance_insurance_id_seq OWNED BY hms_master.health_insurance.insurance_id;


--
-- TOC entry 236 (class 1259 OID 17394)
-- Name: inpatient_hospital_care; Type: TABLE; Schema: hms_master; Owner: postgres
--

CREATE TABLE hms_master.inpatient_hospital_care (
    admission_id integer NOT NULL,
    patient_id character varying(50),
    admission_date date,
    discharge_date date,
    medical_condition text,
    diagnostics text,
    medications text,
    procedure_id integer,
    date_performed date,
    attending_medical_staff integer,
    ward_details text,
    discharge_summary text,
    is_new_birth boolean,
    is_deceased boolean,
    creation_date timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    created_by character varying(100),
    updation_date timestamp without time zone,
    updated_by character varying(100)
);


ALTER TABLE hms_master.inpatient_hospital_care OWNER TO postgres;

--
-- TOC entry 235 (class 1259 OID 17393)
-- Name: inpatient_hospital_care_admission_id_seq; Type: SEQUENCE; Schema: hms_master; Owner: postgres
--

CREATE SEQUENCE hms_master.inpatient_hospital_care_admission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE hms_master.inpatient_hospital_care_admission_id_seq OWNER TO postgres;

--
-- TOC entry 5066 (class 0 OID 0)
-- Dependencies: 235
-- Name: inpatient_hospital_care_admission_id_seq; Type: SEQUENCE OWNED BY; Schema: hms_master; Owner: postgres
--

ALTER SEQUENCE hms_master.inpatient_hospital_care_admission_id_seq OWNED BY hms_master.inpatient_hospital_care.admission_id;


--
-- TOC entry 246 (class 1259 OID 17502)
-- Name: insurance_providers; Type: TABLE; Schema: hms_master; Owner: postgres
--

CREATE TABLE hms_master.insurance_providers (
    insurance_provider_id integer NOT NULL,
    provider_name character varying(100),
    contact_details character varying(255),
    creation_date timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    created_by character varying(100),
    updation_date timestamp without time zone,
    updated_by character varying(100)
);


ALTER TABLE hms_master.insurance_providers OWNER TO postgres;

--
-- TOC entry 245 (class 1259 OID 17501)
-- Name: insurance_providers_insurance_provider_id_seq; Type: SEQUENCE; Schema: hms_master; Owner: postgres
--

CREATE SEQUENCE hms_master.insurance_providers_insurance_provider_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE hms_master.insurance_providers_insurance_provider_id_seq OWNER TO postgres;

--
-- TOC entry 5067 (class 0 OID 0)
-- Dependencies: 245
-- Name: insurance_providers_insurance_provider_id_seq; Type: SEQUENCE OWNED BY; Schema: hms_master; Owner: postgres
--

ALTER SEQUENCE hms_master.insurance_providers_insurance_provider_id_seq OWNED BY hms_master.insurance_providers.insurance_provider_id;


--
-- TOC entry 220 (class 1259 OID 17099)
-- Name: medical_history; Type: TABLE; Schema: hms_master; Owner: postgres
--

CREATE TABLE hms_master.medical_history (
    history_id integer NOT NULL,
    patient_id character varying(50),
    visit_date date,
    height numeric(5,2),
    weight numeric(5,2),
    blood_pressure character varying(20),
    blood_group character varying(10),
    allergies text,
    previous_medical_history text,
    creation_date timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    created_by character varying(100),
    updation_date timestamp without time zone,
    updated_by character varying(100)
);


ALTER TABLE hms_master.medical_history OWNER TO postgres;

--
-- TOC entry 219 (class 1259 OID 17098)
-- Name: medical_history_history_id_seq; Type: SEQUENCE; Schema: hms_master; Owner: postgres
--

CREATE SEQUENCE hms_master.medical_history_history_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE hms_master.medical_history_history_id_seq OWNER TO postgres;

--
-- TOC entry 5068 (class 0 OID 0)
-- Dependencies: 219
-- Name: medical_history_history_id_seq; Type: SEQUENCE OWNED BY; Schema: hms_master; Owner: postgres
--

ALTER SEQUENCE hms_master.medical_history_history_id_seq OWNED BY hms_master.medical_history.history_id;


--
-- TOC entry 234 (class 1259 OID 17361)
-- Name: medical_procedures; Type: TABLE; Schema: hms_master; Owner: postgres
--

CREATE TABLE hms_master.medical_procedures (
    procedure_id integer NOT NULL,
    procedure_name character varying(100),
    procedure_type character varying(50),
    cost numeric(10,2),
    is_service_required boolean,
    service_period character varying(20),
    last_service_date date,
    creation_date timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    created_by character varying(100),
    updation_date timestamp without time zone,
    updated_by character varying(100)
);


ALTER TABLE hms_master.medical_procedures OWNER TO postgres;

--
-- TOC entry 233 (class 1259 OID 17360)
-- Name: medical_procedures_procedure_id_seq; Type: SEQUENCE; Schema: hms_master; Owner: postgres
--

CREATE SEQUENCE hms_master.medical_procedures_procedure_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE hms_master.medical_procedures_procedure_id_seq OWNER TO postgres;

--
-- TOC entry 5069 (class 0 OID 0)
-- Dependencies: 233
-- Name: medical_procedures_procedure_id_seq; Type: SEQUENCE OWNED BY; Schema: hms_master; Owner: postgres
--

ALTER SEQUENCE hms_master.medical_procedures_procedure_id_seq OWNED BY hms_master.medical_procedures.procedure_id;


--
-- TOC entry 250 (class 1259 OID 17566)
-- Name: medications; Type: TABLE; Schema: hms_master; Owner: postgres
--

CREATE TABLE hms_master.medications (
    medication_id integer NOT NULL,
    medication_name character varying(100),
    dosage character varying(50),
    patient_id character varying(50),
    prescription_date date,
    prescribed_by integer,
    creation_date timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    created_by character varying(100),
    updation_date timestamp without time zone,
    updated_by character varying(100)
);


ALTER TABLE hms_master.medications OWNER TO postgres;

--
-- TOC entry 249 (class 1259 OID 17565)
-- Name: medications_medication_id_seq; Type: SEQUENCE; Schema: hms_master; Owner: postgres
--

CREATE SEQUENCE hms_master.medications_medication_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE hms_master.medications_medication_id_seq OWNER TO postgres;

--
-- TOC entry 5070 (class 0 OID 0)
-- Dependencies: 249
-- Name: medications_medication_id_seq; Type: SEQUENCE OWNED BY; Schema: hms_master; Owner: postgres
--

ALTER SEQUENCE hms_master.medications_medication_id_seq OWNED BY hms_master.medications.medication_id;


--
-- TOC entry 244 (class 1259 OID 17482)
-- Name: outpatient_hospital_care; Type: TABLE; Schema: hms_master; Owner: postgres
--

CREATE TABLE hms_master.outpatient_hospital_care (
    visit_id integer NOT NULL,
    patient_id character varying(50),
    visit_date date,
    staff_id integer,
    test_id text,
    bill_details text,
    prescription_details text,
    next_visit_date date,
    creation_date timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    created_by character varying(100),
    updation_date timestamp without time zone,
    updated_by character varying(100)
);


ALTER TABLE hms_master.outpatient_hospital_care OWNER TO postgres;

--
-- TOC entry 243 (class 1259 OID 17481)
-- Name: outpatient_hospital_care_visit_id_seq; Type: SEQUENCE; Schema: hms_master; Owner: postgres
--

CREATE SEQUENCE hms_master.outpatient_hospital_care_visit_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE hms_master.outpatient_hospital_care_visit_id_seq OWNER TO postgres;

--
-- TOC entry 5071 (class 0 OID 0)
-- Dependencies: 243
-- Name: outpatient_hospital_care_visit_id_seq; Type: SEQUENCE OWNED BY; Schema: hms_master; Owner: postgres
--

ALTER SEQUENCE hms_master.outpatient_hospital_care_visit_id_seq OWNED BY hms_master.outpatient_hospital_care.visit_id;


--
-- TOC entry 254 (class 1259 OID 17655)
-- Name: patient_accommodation; Type: TABLE; Schema: hms_master; Owner: postgres
--

CREATE TABLE hms_master.patient_accommodation (
    accommodation_id integer NOT NULL,
    patient_id character varying(50),
    room_type character varying(50),
    charges numeric(10,2),
    nursing_charges numeric(10,2),
    consultation_charges numeric(10,2),
    occupancy_status character varying(20),
    creation_date timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    created_by character varying(100),
    updation_date timestamp without time zone,
    updated_by character varying(100)
);


ALTER TABLE hms_master.patient_accommodation OWNER TO postgres;

--
-- TOC entry 253 (class 1259 OID 17654)
-- Name: patient_accommodation_accommodation_id_seq; Type: SEQUENCE; Schema: hms_master; Owner: postgres
--

CREATE SEQUENCE hms_master.patient_accommodation_accommodation_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE hms_master.patient_accommodation_accommodation_id_seq OWNER TO postgres;

--
-- TOC entry 5072 (class 0 OID 0)
-- Dependencies: 253
-- Name: patient_accommodation_accommodation_id_seq; Type: SEQUENCE OWNED BY; Schema: hms_master; Owner: postgres
--

ALTER SEQUENCE hms_master.patient_accommodation_accommodation_id_seq OWNED BY hms_master.patient_accommodation.accommodation_id;


--
-- TOC entry 217 (class 1259 OID 17079)
-- Name: patients; Type: TABLE; Schema: hms_master; Owner: postgres
--

CREATE TABLE hms_master.patients (
    patient_id character varying(50) NOT NULL,
    name character varying(100),
    age integer,
    gender character varying(10),
    visit_date date,
    next_of_kin character varying(100),
    patient_email character varying(50),
    patient_phone character varying(50),
    creation_date timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    created_by character varying(100),
    updation_date timestamp without time zone,
    updated_by character varying(100)
);


ALTER TABLE hms_master.patients OWNER TO postgres;

--
-- TOC entry 230 (class 1259 OID 17326)
-- Name: services_provided; Type: TABLE; Schema: hms_master; Owner: postgres
--

CREATE TABLE hms_master.services_provided (
    service_id integer NOT NULL,
    service_name character varying(100),
    service_type character varying(50),
    contract_details text,
    creation_date timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    created_by character varying(100),
    updation_date timestamp without time zone,
    updated_by character varying(100)
);


ALTER TABLE hms_master.services_provided OWNER TO postgres;

--
-- TOC entry 229 (class 1259 OID 17325)
-- Name: services_provided_service_id_seq; Type: SEQUENCE; Schema: hms_master; Owner: postgres
--

CREATE SEQUENCE hms_master.services_provided_service_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE hms_master.services_provided_service_id_seq OWNER TO postgres;

--
-- TOC entry 5073 (class 0 OID 0)
-- Dependencies: 229
-- Name: services_provided_service_id_seq; Type: SEQUENCE OWNED BY; Schema: hms_master; Owner: postgres
--

ALTER SEQUENCE hms_master.services_provided_service_id_seq OWNED BY hms_master.services_provided.service_id;


--
-- TOC entry 222 (class 1259 OID 17151)
-- Name: shifts; Type: TABLE; Schema: hms_master; Owner: postgres
--

CREATE TABLE hms_master.shifts (
    shift_id integer NOT NULL,
    shift_type character varying(50),
    start_time time without time zone,
    end_time time without time zone,
    creation_date timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    created_by character varying(100),
    updation_date timestamp without time zone,
    updated_by character varying(100)
);


ALTER TABLE hms_master.shifts OWNER TO postgres;

--
-- TOC entry 221 (class 1259 OID 17150)
-- Name: shifts_shift_id_seq; Type: SEQUENCE; Schema: hms_master; Owner: postgres
--

CREATE SEQUENCE hms_master.shifts_shift_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE hms_master.shifts_shift_id_seq OWNER TO postgres;

--
-- TOC entry 5074 (class 0 OID 0)
-- Dependencies: 221
-- Name: shifts_shift_id_seq; Type: SEQUENCE OWNED BY; Schema: hms_master; Owner: postgres
--

ALTER SEQUENCE hms_master.shifts_shift_id_seq OWNED BY hms_master.shifts.shift_id;


--
-- TOC entry 226 (class 1259 OID 17292)
-- Name: staff; Type: TABLE; Schema: hms_master; Owner: postgres
--

CREATE TABLE hms_master.staff (
    staff_id integer NOT NULL,
    name character varying(100) NOT NULL,
    age integer,
    contact_phone character varying(20),
    contact_email character varying(100),
    address text,
    is_medical boolean,
    is_doctor boolean,
    department character varying(100),
    contractual boolean,
    specialty character varying(100),
    seniority character varying(50),
    qualification text,
    schedule text,
    area_of_operation character varying(100),
    shift_id integer,
    payment_details text,
    third_party_id integer,
    creation_date timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    created_by character varying(100),
    updation_date timestamp without time zone,
    updated_by character varying(100)
);


ALTER TABLE hms_master.staff OWNER TO postgres;

--
-- TOC entry 225 (class 1259 OID 17291)
-- Name: staff_staff_id_seq; Type: SEQUENCE; Schema: hms_master; Owner: postgres
--

CREATE SEQUENCE hms_master.staff_staff_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE hms_master.staff_staff_id_seq OWNER TO postgres;

--
-- TOC entry 5075 (class 0 OID 0)
-- Dependencies: 225
-- Name: staff_staff_id_seq; Type: SEQUENCE OWNED BY; Schema: hms_master; Owner: postgres
--

ALTER SEQUENCE hms_master.staff_staff_id_seq OWNED BY hms_master.staff.staff_id;


--
-- TOC entry 224 (class 1259 OID 17159)
-- Name: third_party; Type: TABLE; Schema: hms_master; Owner: postgres
--

CREATE TABLE hms_master.third_party (
    third_party_id integer NOT NULL,
    name character varying(100),
    engagement_period text,
    no_of_staff_provided integer,
    pay_rate numeric(10,2),
    creation_date timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    created_by character varying(100),
    updation_date timestamp without time zone,
    updated_by character varying(100)
);


ALTER TABLE hms_master.third_party OWNER TO postgres;

--
-- TOC entry 223 (class 1259 OID 17158)
-- Name: third_party_third_party_id_seq; Type: SEQUENCE; Schema: hms_master; Owner: postgres
--

CREATE SEQUENCE hms_master.third_party_third_party_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE hms_master.third_party_third_party_id_seq OWNER TO postgres;

--
-- TOC entry 5076 (class 0 OID 0)
-- Dependencies: 223
-- Name: third_party_third_party_id_seq; Type: SEQUENCE OWNED BY; Schema: hms_master; Owner: postgres
--

ALTER SEQUENCE hms_master.third_party_third_party_id_seq OWNED BY hms_master.third_party.third_party_id;


--
-- TOC entry 232 (class 1259 OID 17346)
-- Name: vendors; Type: TABLE; Schema: hms_master; Owner: postgres
--

CREATE TABLE hms_master.vendors (
    vendor_id integer NOT NULL,
    vendor_name character varying(100),
    contact_details character varying(255),
    service_id integer,
    contract_details text,
    payment_details text,
    total_amount numeric(10,2),
    amount_paid numeric(10,2),
    creation_date timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    created_by character varying(100),
    updation_date timestamp without time zone,
    updated_by character varying(100)
);


ALTER TABLE hms_master.vendors OWNER TO postgres;

--
-- TOC entry 231 (class 1259 OID 17345)
-- Name: vendors_vendor_id_seq; Type: SEQUENCE; Schema: hms_master; Owner: postgres
--

CREATE SEQUENCE hms_master.vendors_vendor_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE hms_master.vendors_vendor_id_seq OWNER TO postgres;

--
-- TOC entry 5077 (class 0 OID 0)
-- Dependencies: 231
-- Name: vendors_vendor_id_seq; Type: SEQUENCE OWNED BY; Schema: hms_master; Owner: postgres
--

ALTER SEQUENCE hms_master.vendors_vendor_id_seq OWNED BY hms_master.vendors.vendor_id;


--
-- TOC entry 4826 (class 2604 OID 17316)
-- Name: attendance attendance_id; Type: DEFAULT; Schema: hms_master; Owner: postgres
--

ALTER TABLE ONLY hms_master.attendance ALTER COLUMN attendance_id SET DEFAULT nextval('hms_master.attendance_attendance_id_seq'::regclass);


--
-- TOC entry 4850 (class 2604 OID 17624)
-- Name: billing bill_id; Type: DEFAULT; Schema: hms_master; Owner: postgres
--

ALTER TABLE ONLY hms_master.billing ALTER COLUMN bill_id SET DEFAULT nextval('hms_master.billing_bill_id_seq'::regclass);


--
-- TOC entry 4836 (class 2604 OID 17427)
-- Name: birth_details birth_details_id; Type: DEFAULT; Schema: hms_master; Owner: postgres
--

ALTER TABLE ONLY hms_master.birth_details ALTER COLUMN birth_details_id SET DEFAULT nextval('hms_master.birth_details_birth_details_id_seq'::regclass);


--
-- TOC entry 4838 (class 2604 OID 17452)
-- Name: deseased_details deseased_details_id; Type: DEFAULT; Schema: hms_master; Owner: postgres
--

ALTER TABLE ONLY hms_master.deseased_details ALTER COLUMN deseased_details_id SET DEFAULT nextval('hms_master.deseased_details_deseased_details_id_seq'::regclass);


--
-- TOC entry 4840 (class 2604 OID 17467)
-- Name: diagnostic_tests test_id; Type: DEFAULT; Schema: hms_master; Owner: postgres
--

ALTER TABLE ONLY hms_master.diagnostic_tests ALTER COLUMN test_id SET DEFAULT nextval('hms_master.diagnostic_tests_test_id_seq'::regclass);


--
-- TOC entry 4846 (class 2604 OID 17540)
-- Name: health_insurance insurance_id; Type: DEFAULT; Schema: hms_master; Owner: postgres
--

ALTER TABLE ONLY hms_master.health_insurance ALTER COLUMN insurance_id SET DEFAULT nextval('hms_master.health_insurance_insurance_id_seq'::regclass);


--
-- TOC entry 4834 (class 2604 OID 17397)
-- Name: inpatient_hospital_care admission_id; Type: DEFAULT; Schema: hms_master; Owner: postgres
--

ALTER TABLE ONLY hms_master.inpatient_hospital_care ALTER COLUMN admission_id SET DEFAULT nextval('hms_master.inpatient_hospital_care_admission_id_seq'::regclass);


--
-- TOC entry 4844 (class 2604 OID 17505)
-- Name: insurance_providers insurance_provider_id; Type: DEFAULT; Schema: hms_master; Owner: postgres
--

ALTER TABLE ONLY hms_master.insurance_providers ALTER COLUMN insurance_provider_id SET DEFAULT nextval('hms_master.insurance_providers_insurance_provider_id_seq'::regclass);


--
-- TOC entry 4818 (class 2604 OID 17102)
-- Name: medical_history history_id; Type: DEFAULT; Schema: hms_master; Owner: postgres
--

ALTER TABLE ONLY hms_master.medical_history ALTER COLUMN history_id SET DEFAULT nextval('hms_master.medical_history_history_id_seq'::regclass);


--
-- TOC entry 4832 (class 2604 OID 17364)
-- Name: medical_procedures procedure_id; Type: DEFAULT; Schema: hms_master; Owner: postgres
--

ALTER TABLE ONLY hms_master.medical_procedures ALTER COLUMN procedure_id SET DEFAULT nextval('hms_master.medical_procedures_procedure_id_seq'::regclass);


--
-- TOC entry 4848 (class 2604 OID 17569)
-- Name: medications medication_id; Type: DEFAULT; Schema: hms_master; Owner: postgres
--

ALTER TABLE ONLY hms_master.medications ALTER COLUMN medication_id SET DEFAULT nextval('hms_master.medications_medication_id_seq'::regclass);


--
-- TOC entry 4842 (class 2604 OID 17485)
-- Name: outpatient_hospital_care visit_id; Type: DEFAULT; Schema: hms_master; Owner: postgres
--

ALTER TABLE ONLY hms_master.outpatient_hospital_care ALTER COLUMN visit_id SET DEFAULT nextval('hms_master.outpatient_hospital_care_visit_id_seq'::regclass);


--
-- TOC entry 4853 (class 2604 OID 17658)
-- Name: patient_accommodation accommodation_id; Type: DEFAULT; Schema: hms_master; Owner: postgres
--

ALTER TABLE ONLY hms_master.patient_accommodation ALTER COLUMN accommodation_id SET DEFAULT nextval('hms_master.patient_accommodation_accommodation_id_seq'::regclass);


--
-- TOC entry 4828 (class 2604 OID 17329)
-- Name: services_provided service_id; Type: DEFAULT; Schema: hms_master; Owner: postgres
--

ALTER TABLE ONLY hms_master.services_provided ALTER COLUMN service_id SET DEFAULT nextval('hms_master.services_provided_service_id_seq'::regclass);


--
-- TOC entry 4820 (class 2604 OID 17154)
-- Name: shifts shift_id; Type: DEFAULT; Schema: hms_master; Owner: postgres
--

ALTER TABLE ONLY hms_master.shifts ALTER COLUMN shift_id SET DEFAULT nextval('hms_master.shifts_shift_id_seq'::regclass);


--
-- TOC entry 4824 (class 2604 OID 17295)
-- Name: staff staff_id; Type: DEFAULT; Schema: hms_master; Owner: postgres
--

ALTER TABLE ONLY hms_master.staff ALTER COLUMN staff_id SET DEFAULT nextval('hms_master.staff_staff_id_seq'::regclass);


--
-- TOC entry 4822 (class 2604 OID 17162)
-- Name: third_party third_party_id; Type: DEFAULT; Schema: hms_master; Owner: postgres
--

ALTER TABLE ONLY hms_master.third_party ALTER COLUMN third_party_id SET DEFAULT nextval('hms_master.third_party_third_party_id_seq'::regclass);


--
-- TOC entry 4830 (class 2604 OID 17349)
-- Name: vendors vendor_id; Type: DEFAULT; Schema: hms_master; Owner: postgres
--

ALTER TABLE ONLY hms_master.vendors ALTER COLUMN vendor_id SET DEFAULT nextval('hms_master.vendors_vendor_id_seq'::regclass);


--
-- TOC entry 4866 (class 2606 OID 17319)
-- Name: attendance attendance_attendanceid_pkey; Type: CONSTRAINT; Schema: hms_master; Owner: postgres
--

ALTER TABLE ONLY hms_master.attendance
    ADD CONSTRAINT attendance_attendanceid_pkey PRIMARY KEY (attendance_id);


--
-- TOC entry 4890 (class 2606 OID 17630)
-- Name: billing billing_billid_pkey; Type: CONSTRAINT; Schema: hms_master; Owner: postgres
--

ALTER TABLE ONLY hms_master.billing
    ADD CONSTRAINT billing_billid_pkey PRIMARY KEY (bill_id);


--
-- TOC entry 4876 (class 2606 OID 17432)
-- Name: birth_details birthdetails_birthdetailsid_pkey; Type: CONSTRAINT; Schema: hms_master; Owner: postgres
--

ALTER TABLE ONLY hms_master.birth_details
    ADD CONSTRAINT birthdetails_birthdetailsid_pkey PRIMARY KEY (birth_details_id);


--
-- TOC entry 4878 (class 2606 OID 17457)
-- Name: deseased_details deseaseddetails_deseaseddetailsid_pkey; Type: CONSTRAINT; Schema: hms_master; Owner: postgres
--

ALTER TABLE ONLY hms_master.deseased_details
    ADD CONSTRAINT deseaseddetails_deseaseddetailsid_pkey PRIMARY KEY (deseased_details_id);


--
-- TOC entry 4880 (class 2606 OID 17470)
-- Name: diagnostic_tests diagnostictests_testid_pkey; Type: CONSTRAINT; Schema: hms_master; Owner: postgres
--

ALTER TABLE ONLY hms_master.diagnostic_tests
    ADD CONSTRAINT diagnostictests_testid_pkey PRIMARY KEY (test_id);


--
-- TOC entry 4886 (class 2606 OID 17545)
-- Name: health_insurance healthinsurance_insuranceid_pkey; Type: CONSTRAINT; Schema: hms_master; Owner: postgres
--

ALTER TABLE ONLY hms_master.health_insurance
    ADD CONSTRAINT healthinsurance_insuranceid_pkey PRIMARY KEY (insurance_id);


--
-- TOC entry 4874 (class 2606 OID 17402)
-- Name: inpatient_hospital_care inpatienthospitalcare_admissionid_pkey; Type: CONSTRAINT; Schema: hms_master; Owner: postgres
--

ALTER TABLE ONLY hms_master.inpatient_hospital_care
    ADD CONSTRAINT inpatienthospitalcare_admissionid_pkey PRIMARY KEY (admission_id);


--
-- TOC entry 4884 (class 2606 OID 17510)
-- Name: insurance_providers insuranceproviders_insuranceproviderid_pkey; Type: CONSTRAINT; Schema: hms_master; Owner: postgres
--

ALTER TABLE ONLY hms_master.insurance_providers
    ADD CONSTRAINT insuranceproviders_insuranceproviderid_pkey PRIMARY KEY (insurance_provider_id);


--
-- TOC entry 4858 (class 2606 OID 17107)
-- Name: medical_history medicalhistory_historyid_pkey; Type: CONSTRAINT; Schema: hms_master; Owner: postgres
--

ALTER TABLE ONLY hms_master.medical_history
    ADD CONSTRAINT medicalhistory_historyid_pkey PRIMARY KEY (history_id);


--
-- TOC entry 4872 (class 2606 OID 17367)
-- Name: medical_procedures medicalprocedures_procedureid_pkey; Type: CONSTRAINT; Schema: hms_master; Owner: postgres
--

ALTER TABLE ONLY hms_master.medical_procedures
    ADD CONSTRAINT medicalprocedures_procedureid_pkey PRIMARY KEY (procedure_id);


--
-- TOC entry 4888 (class 2606 OID 17572)
-- Name: medications medications_medicationid_pkey; Type: CONSTRAINT; Schema: hms_master; Owner: postgres
--

ALTER TABLE ONLY hms_master.medications
    ADD CONSTRAINT medications_medicationid_pkey PRIMARY KEY (medication_id);


--
-- TOC entry 4882 (class 2606 OID 17490)
-- Name: outpatient_hospital_care outpatienthospitalcare_visitid_pkey; Type: CONSTRAINT; Schema: hms_master; Owner: postgres
--

ALTER TABLE ONLY hms_master.outpatient_hospital_care
    ADD CONSTRAINT outpatienthospitalcare_visitid_pkey PRIMARY KEY (visit_id);


--
-- TOC entry 4892 (class 2606 OID 17661)
-- Name: patient_accommodation patientaccommodation_accommodationid_pkey; Type: CONSTRAINT; Schema: hms_master; Owner: postgres
--

ALTER TABLE ONLY hms_master.patient_accommodation
    ADD CONSTRAINT patientaccommodation_accommodationid_pkey PRIMARY KEY (accommodation_id);


--
-- TOC entry 4856 (class 2606 OID 17086)
-- Name: patients patients_patientid_pkey; Type: CONSTRAINT; Schema: hms_master; Owner: postgres
--

ALTER TABLE ONLY hms_master.patients
    ADD CONSTRAINT patients_patientid_pkey PRIMARY KEY (patient_id);


--
-- TOC entry 4868 (class 2606 OID 17334)
-- Name: services_provided servicesprovided_serviceid_pkey; Type: CONSTRAINT; Schema: hms_master; Owner: postgres
--

ALTER TABLE ONLY hms_master.services_provided
    ADD CONSTRAINT servicesprovided_serviceid_pkey PRIMARY KEY (service_id);


--
-- TOC entry 4860 (class 2606 OID 17157)
-- Name: shifts shifts_shiftid_pkey; Type: CONSTRAINT; Schema: hms_master; Owner: postgres
--

ALTER TABLE ONLY hms_master.shifts
    ADD CONSTRAINT shifts_shiftid_pkey PRIMARY KEY (shift_id);


--
-- TOC entry 4864 (class 2606 OID 17300)
-- Name: staff staff_staffid_pkey; Type: CONSTRAINT; Schema: hms_master; Owner: postgres
--

ALTER TABLE ONLY hms_master.staff
    ADD CONSTRAINT staff_staffid_pkey PRIMARY KEY (staff_id);


--
-- TOC entry 4862 (class 2606 OID 17167)
-- Name: third_party thirdparty_thirdpartyid_pkey; Type: CONSTRAINT; Schema: hms_master; Owner: postgres
--

ALTER TABLE ONLY hms_master.third_party
    ADD CONSTRAINT thirdparty_thirdpartyid_pkey PRIMARY KEY (third_party_id);


--
-- TOC entry 4870 (class 2606 OID 17354)
-- Name: vendors vendors_vendorid_pkey; Type: CONSTRAINT; Schema: hms_master; Owner: postgres
--

ALTER TABLE ONLY hms_master.vendors
    ADD CONSTRAINT vendors_vendorid_pkey PRIMARY KEY (vendor_id);


--
-- TOC entry 4896 (class 2606 OID 17320)
-- Name: attendance attendance_shiftid_fkey; Type: FK CONSTRAINT; Schema: hms_master; Owner: postgres
--

ALTER TABLE ONLY hms_master.attendance
    ADD CONSTRAINT attendance_shiftid_fkey FOREIGN KEY (staff_id) REFERENCES hms_master.staff(staff_id) ON UPDATE CASCADE;


--
-- TOC entry 4908 (class 2606 OID 17636)
-- Name: billing billing_doctorid_fkey; Type: FK CONSTRAINT; Schema: hms_master; Owner: postgres
--

ALTER TABLE ONLY hms_master.billing
    ADD CONSTRAINT billing_doctorid_fkey FOREIGN KEY (doctor_id) REFERENCES hms_master.staff(staff_id) ON UPDATE CASCADE;


--
-- TOC entry 4909 (class 2606 OID 17641)
-- Name: billing billing_insuranceid_fkey; Type: FK CONSTRAINT; Schema: hms_master; Owner: postgres
--

ALTER TABLE ONLY hms_master.billing
    ADD CONSTRAINT billing_insuranceid_fkey FOREIGN KEY (insurance_id) REFERENCES hms_master.health_insurance(insurance_id) ON UPDATE CASCADE;


--
-- TOC entry 4910 (class 2606 OID 17631)
-- Name: billing billing_patientid_fkey; Type: FK CONSTRAINT; Schema: hms_master; Owner: postgres
--

ALTER TABLE ONLY hms_master.billing
    ADD CONSTRAINT billing_patientid_fkey FOREIGN KEY (patient_id) REFERENCES hms_master.patients(patient_id) ON UPDATE CASCADE;


--
-- TOC entry 4900 (class 2606 OID 17433)
-- Name: birth_details birthdetails_admissionid_fkey; Type: FK CONSTRAINT; Schema: hms_master; Owner: postgres
--

ALTER TABLE ONLY hms_master.birth_details
    ADD CONSTRAINT birthdetails_admissionid_fkey FOREIGN KEY (admission_id) REFERENCES hms_master.inpatient_hospital_care(admission_id) ON UPDATE CASCADE;


--
-- TOC entry 4901 (class 2606 OID 17458)
-- Name: deseased_details birthdetails_admissionid_fkey; Type: FK CONSTRAINT; Schema: hms_master; Owner: postgres
--

ALTER TABLE ONLY hms_master.deseased_details
    ADD CONSTRAINT birthdetails_admissionid_fkey FOREIGN KEY (admission_id) REFERENCES hms_master.inpatient_hospital_care(admission_id) ON UPDATE CASCADE;


--
-- TOC entry 4904 (class 2606 OID 17551)
-- Name: health_insurance healthinsurance_insuranceproviderid_fkey; Type: FK CONSTRAINT; Schema: hms_master; Owner: postgres
--

ALTER TABLE ONLY hms_master.health_insurance
    ADD CONSTRAINT healthinsurance_insuranceproviderid_fkey FOREIGN KEY (insurance_provider_id) REFERENCES hms_master.insurance_providers(insurance_provider_id) ON UPDATE CASCADE;


--
-- TOC entry 4905 (class 2606 OID 17546)
-- Name: health_insurance healthinsurance_patientid_fkey; Type: FK CONSTRAINT; Schema: hms_master; Owner: postgres
--

ALTER TABLE ONLY hms_master.health_insurance
    ADD CONSTRAINT healthinsurance_patientid_fkey FOREIGN KEY (patient_id) REFERENCES hms_master.patients(patient_id) ON UPDATE CASCADE;


--
-- TOC entry 4898 (class 2606 OID 17408)
-- Name: inpatient_hospital_care inpatienthospitalcare_patientid_fkey; Type: FK CONSTRAINT; Schema: hms_master; Owner: postgres
--

ALTER TABLE ONLY hms_master.inpatient_hospital_care
    ADD CONSTRAINT inpatienthospitalcare_patientid_fkey FOREIGN KEY (patient_id) REFERENCES hms_master.patients(patient_id) ON UPDATE CASCADE;


--
-- TOC entry 4899 (class 2606 OID 17403)
-- Name: inpatient_hospital_care inpatienthospitalcare_procedureid_fkey; Type: FK CONSTRAINT; Schema: hms_master; Owner: postgres
--

ALTER TABLE ONLY hms_master.inpatient_hospital_care
    ADD CONSTRAINT inpatienthospitalcare_procedureid_fkey FOREIGN KEY (procedure_id) REFERENCES hms_master.medical_procedures(procedure_id) ON UPDATE CASCADE;


--
-- TOC entry 4893 (class 2606 OID 17108)
-- Name: medical_history medicalhistory_patientid_fkey; Type: FK CONSTRAINT; Schema: hms_master; Owner: postgres
--

ALTER TABLE ONLY hms_master.medical_history
    ADD CONSTRAINT medicalhistory_patientid_fkey FOREIGN KEY (patient_id) REFERENCES hms_master.patients(patient_id) ON UPDATE CASCADE;


--
-- TOC entry 4906 (class 2606 OID 17573)
-- Name: medications medications_patientid_fkey; Type: FK CONSTRAINT; Schema: hms_master; Owner: postgres
--

ALTER TABLE ONLY hms_master.medications
    ADD CONSTRAINT medications_patientid_fkey FOREIGN KEY (patient_id) REFERENCES hms_master.patients(patient_id) ON UPDATE CASCADE;


--
-- TOC entry 4907 (class 2606 OID 17578)
-- Name: medications medications_prescribedby_fkey; Type: FK CONSTRAINT; Schema: hms_master; Owner: postgres
--

ALTER TABLE ONLY hms_master.medications
    ADD CONSTRAINT medications_prescribedby_fkey FOREIGN KEY (prescribed_by) REFERENCES hms_master.staff(staff_id) ON UPDATE CASCADE;


--
-- TOC entry 4902 (class 2606 OID 17491)
-- Name: outpatient_hospital_care outpatienthospitalcare_patientid_fkey; Type: FK CONSTRAINT; Schema: hms_master; Owner: postgres
--

ALTER TABLE ONLY hms_master.outpatient_hospital_care
    ADD CONSTRAINT outpatienthospitalcare_patientid_fkey FOREIGN KEY (patient_id) REFERENCES hms_master.patients(patient_id) ON UPDATE CASCADE;


--
-- TOC entry 4903 (class 2606 OID 17496)
-- Name: outpatient_hospital_care outpatienthospitalcare_staffid_fkey; Type: FK CONSTRAINT; Schema: hms_master; Owner: postgres
--

ALTER TABLE ONLY hms_master.outpatient_hospital_care
    ADD CONSTRAINT outpatienthospitalcare_staffid_fkey FOREIGN KEY (staff_id) REFERENCES hms_master.staff(staff_id) ON UPDATE CASCADE;


--
-- TOC entry 4911 (class 2606 OID 17662)
-- Name: patient_accommodation patientaccommodation_patientid_fkey; Type: FK CONSTRAINT; Schema: hms_master; Owner: postgres
--

ALTER TABLE ONLY hms_master.patient_accommodation
    ADD CONSTRAINT patientaccommodation_patientid_fkey FOREIGN KEY (patient_id) REFERENCES hms_master.patients(patient_id) ON UPDATE CASCADE;


--
-- TOC entry 4894 (class 2606 OID 17301)
-- Name: staff staff_shiftid_fkey; Type: FK CONSTRAINT; Schema: hms_master; Owner: postgres
--

ALTER TABLE ONLY hms_master.staff
    ADD CONSTRAINT staff_shiftid_fkey FOREIGN KEY (shift_id) REFERENCES hms_master.shifts(shift_id) ON UPDATE CASCADE;


--
-- TOC entry 4895 (class 2606 OID 17306)
-- Name: staff staff_thirdpartyid_fkey; Type: FK CONSTRAINT; Schema: hms_master; Owner: postgres
--

ALTER TABLE ONLY hms_master.staff
    ADD CONSTRAINT staff_thirdpartyid_fkey FOREIGN KEY (third_party_id) REFERENCES hms_master.third_party(third_party_id) ON UPDATE CASCADE;


--
-- TOC entry 4897 (class 2606 OID 17355)
-- Name: vendors vendors_serviceid_fkey; Type: FK CONSTRAINT; Schema: hms_master; Owner: postgres
--

ALTER TABLE ONLY hms_master.vendors
    ADD CONSTRAINT vendors_serviceid_fkey FOREIGN KEY (service_id) REFERENCES hms_master.services_provided(service_id) ON UPDATE CASCADE;


-- Completed on 2024-03-05 00:33:12

--
-- PostgreSQL database dump complete
--


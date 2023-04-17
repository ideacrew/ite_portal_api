# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
# rubocop:disable Layout/FirstArrayElementIndentation, Layout/LineLength, Naming/VariableNumber

# Claims Lookups
Claims::DenialReason.create([
  { denial_reason_code: '0077', denial_reason_description: 'SERV DATE SPAN MORE ONE DOS' },
  { denial_reason_code: '0101', denial_reason_description: 'EXACT DUPLICATE CLAIM' },
  { denial_reason_code: '0102', denial_reason_description: 'SUSPECT DUPLICATE CLAIM' },
  { denial_reason_code: '0103', denial_reason_description: 'POSSIBLE CONFLICT CLAIM' },
  { denial_reason_code: '0132', denial_reason_description: 'SUBM CHARGE IS MISSING' },
  { denial_reason_code: '0135', denial_reason_description: 'CLAIM PRICED AT ZERO' },
  { denial_reason_code: '0143', denial_reason_description: 'BENFC NOT ELIGIBLE/NOT FOUND' },
  { denial_reason_code: '0150', denial_reason_description: 'MISSING/INVAL PLACE OF SERV.' },
  { denial_reason_code: '0160', denial_reason_description: 'TOTAL CLAIM CHARGE CONFLICT' },
  { denial_reason_code: '0221', denial_reason_description: 'BENFC NAME MISMATCH' },
  { denial_reason_code: '0238', denial_reason_description: 'SUB UNITS EXCEED MAX ALLOWED' },
  { denial_reason_code: '0253', denial_reason_description: 'DIAG NOT VALID FOR DOS' },
  { denial_reason_code: '0266', denial_reason_description: 'QMB BENFC/ BILL XOVER ONLY' },
  { denial_reason_code: '0325', denial_reason_description: 'TRAUMA/ACCIDENT CLAIM' },
  { denial_reason_code: '0351', denial_reason_description: 'HIGH VARIANCE' },
  { denial_reason_code: '0365', denial_reason_description: 'PROC/PLACE OF SVC CNFL' },
  { denial_reason_code: '0366', denial_reason_description: 'PROC/PROV/SPEC MISMATCH' },
  { denial_reason_code: '0367', denial_reason_description: 'PROC/SERV PROV TYPE CNFL' },
  { denial_reason_code: '0412', denial_reason_description: 'SERV PROV NOT ON FILE' },
  { denial_reason_code: '0423', denial_reason_description: 'SERV PROV NOT IN BILLING GROUP' },
  { denial_reason_code: '0429', denial_reason_description: 'PROVIDER LICENSE EXPIRED' },
  { denial_reason_code: '0430', denial_reason_description: 'PROCEDURE NOT ON FILE' },
  { denial_reason_code: '0432', denial_reason_description: 'PROC CODE REQUIRES REVIEW' },
  { denial_reason_code: '0436', denial_reason_description: 'AUTH REQ- PA IS MISS/INV' },
  { denial_reason_code: '0437', denial_reason_description: 'PROC NOT VALID FOR SERV DATE' },
  { denial_reason_code: '0439', denial_reason_description: 'PROC NOT A BENEFIT FOR DOS' },
  { denial_reason_code: '0502', denial_reason_description: 'AUTH/BENFC CNFL' },
  { denial_reason_code: '0504', denial_reason_description: 'AUTH/MOD CNFL' },
  { denial_reason_code: '0510', denial_reason_description: 'AUTH/PROV CNFL' },
  { denial_reason_code: '0511', denial_reason_description: 'AUTH/SERV CNFL' },
  { denial_reason_code: '0546', denial_reason_description: 'PROC REQUIRES PRICE' },
  { denial_reason_code: '0596', denial_reason_description: 'DIAG RELATED CODE INVALID' },
  { denial_reason_code: '0605', denial_reason_description: 'AUTH/SVC DATE CNFL' },
  { denial_reason_code: '0721', denial_reason_description: 'SERVICING PROVIDER NOT ENROLL' },
  { denial_reason_code: '0727', denial_reason_description: 'PRIOR AUTH # NOT ON FILE' },
  { denial_reason_code: '0845', denial_reason_description: 'CLAIM HAS BEEN VOIDED/ADJUSTED' },
  { denial_reason_code: '0856', denial_reason_description: 'CREDIT CANNOT BE ADJUSTED' },
  { denial_reason_code: '1122', denial_reason_description: 'PROC CODE/MODIFER MATCH' },
  { denial_reason_code: '1253', denial_reason_description: 'CLAIM DOS/BENFC DOD CONFLICT' },
  { denial_reason_code: '1255', denial_reason_description: 'BENEFICIARY OVER 65 BILL MCARE' },
  { denial_reason_code: '1615', denial_reason_description: 'MY DC HEALTH HOME/MHGPS CNFLT' },
  { denial_reason_code: '1694', denial_reason_description: 'REFERRING NPI NOT ON FILE' },
  { denial_reason_code: '2090', denial_reason_description: 'NO DED/COINS ON XOVER CLM LINE' },
  { denial_reason_code: '2718', denial_reason_description: 'BH CLAIM MUST HAVE BH DX CODE' },
  { denial_reason_code: '5128', denial_reason_description: 'CLAIM EXCEEDS FILING LIMIT' },
  { denial_reason_code: '5168', denial_reason_description: 'XOVER EXCEEDS FILING LIMIT' },
  { denial_reason_code: '5218', denial_reason_description: 'SERVICE COVERED BY MCO.' },
  { denial_reason_code: '5229', denial_reason_description: 'INVALID TAXONOMY' },
  { denial_reason_code: '5230', denial_reason_description: 'INVALID PROC CODE FOR MHRS PRV' },
  { denial_reason_code: '5237', denial_reason_description: 'MEDICARE ELIG/NOT XOVER' },
  { denial_reason_code: '5283', denial_reason_description: 'INELIGIBLE PROGRAM CODE' },
  { denial_reason_code: '5284', denial_reason_description: 'INELIGIBLE PROGRAM CODE' },
  { denial_reason_code: '5318', denial_reason_description: 'CALC ALLOW CHRG LES TPL IS ZER' },
  { denial_reason_code: '5396', denial_reason_description: 'MEDICAID FEE EXCEEDS PA FEE' },
  { denial_reason_code: '5397', denial_reason_description: 'UNITS ARE GREATER THAN AUTH' },
  { denial_reason_code: '5402', denial_reason_description: 'PA USED GT APPROVED' },
  { denial_reason_code: '5410', denial_reason_description: 'TREATING PROVIDER MISSING' },
  { denial_reason_code: '5516', denial_reason_description: 'PA HAS BEEN USED' },
  { denial_reason_code: '5846', denial_reason_description: 'ADJUST EXCEEDS 1 YEAR LIMIT' },
  { denial_reason_code: '6301', denial_reason_description: 'MHRS DIAG/ASS & ACT CONTRA' },
  { denial_reason_code: '6302', denial_reason_description: 'MHRS MED/SOMATIC & ACT CONTRA' },
  { denial_reason_code: '6303', denial_reason_description: 'MHRS COUNSELING SVCS CONTRA' },
  { denial_reason_code: '6304', denial_reason_description: 'MHRS COMMUNITY SUPPORT CONTRA' },
  { denial_reason_code: '6305', denial_reason_description: 'MHRS REHAB DAY SERVICES CONTRA' },
  { denial_reason_code: '6307', denial_reason_description: 'MHRS CBI SERVICES CONTRA' },
  { denial_reason_code: '6308', denial_reason_description: 'MHRS ACT SERVICES CONTRA' },
  { denial_reason_code: '6310', denial_reason_description: 'MHRS BRIEF ASSESSMENT LIMIT' },
  { denial_reason_code: '6312', denial_reason_description: 'MHRS COMMUNITY SUPPORT LIMIT' },
  { denial_reason_code: '6314', denial_reason_description: 'MHRS MEDICATION/SOMATIC LIMIT' },
  { denial_reason_code: '6335', denial_reason_description: 'ASARS H0020 DAILY LIMIT' },
  { denial_reason_code: '6787', denial_reason_description: 'S9484 CONTRA' },
  { denial_reason_code: '6896', denial_reason_description: 'MY DC HEALTH HOME MONTHLY LMT' },
  { denial_reason_code: '8500', denial_reason_description: 'NCCI P2P DENIAL' },
  { denial_reason_code: '8502', denial_reason_description: 'NCCI MUE LIMIT EXCEEDED' },
  { denial_reason_code: '8503', denial_reason_description: 'NCCI MUE EDIT BYPASSED' }
])

Claims::ProviderType.create([
  { provider_type_code: 'A00', provider_type_description: 'Physician MD' },
  { provider_type_code: 'A01', provider_type_description: 'Physician, Group Practice' },
  { provider_type_code: 'A02', provider_type_description: 'Doctor Of Osteopathy' },
  { provider_type_code: 'A03', provider_type_description: 'Psychologist' },
  { provider_type_code: 'A04', provider_type_description: 'Podiatrist' },
  { provider_type_code: 'A05', provider_type_description: 'Early Intervention' },
  { provider_type_code: 'A07', provider_type_description: 'Physician Assistant' },
  { provider_type_code: 'A08', provider_type_description: 'Psychologist Group' },
  { provider_type_code: 'A09', provider_type_description: 'Unknown' },
  { provider_type_code: 'B00', provider_type_description: 'Independent Lab' },
  { provider_type_code: 'B01', provider_type_description: 'Ind Xray And Lab' },
  { provider_type_code: 'C00', provider_type_description: 'Independent X-Ray' },
  { provider_type_code: 'D00', provider_type_description: 'Hospital, General' },
  { provider_type_code: 'D01', provider_type_description: 'Hospital, LTAC' },
  { provider_type_code: 'D02', provider_type_description: 'Hospital, Psychiatric Public' },
  { provider_type_code: 'D03', provider_type_description: 'Hospital, Psychiatric Private' },
  { provider_type_code: 'D04', provider_type_description: 'Hospital, Emergency Access' },
  { provider_type_code: 'D05', provider_type_description: 'Residential Treatment Center' },
  { provider_type_code: 'E00', provider_type_description: 'Radiation Therapy Center' },
  { provider_type_code: 'F00', provider_type_description: 'Nursing Facility' },
  { provider_type_code: 'G00', provider_type_description: 'ICF/IDD' },
  { provider_type_code: 'H00', provider_type_description: 'Pharmacy, Retail' },
  { provider_type_code: 'H01', provider_type_description: 'Pharmacy, Institutional' },
  { provider_type_code: 'H02', provider_type_description: 'Pharmacy, ADAP' },
  { provider_type_code: 'H03', provider_type_description: 'Pharmacy, Alliance' },
  { provider_type_code: 'I00', provider_type_description: 'Durable Medical Equipment' },
  { provider_type_code: 'J00', provider_type_description: 'Ambulance, Private' },
  { provider_type_code: 'J01', provider_type_description: 'Ambulance, Public' },
  { provider_type_code: 'J02', provider_type_description: 'Ambulance, Air Transport' },
  { provider_type_code: 'K00', provider_type_description: 'Dentist' },
  { provider_type_code: 'K01', provider_type_description: 'Dentist, Group Practice' },
  { provider_type_code: 'K02', provider_type_description: 'Dentist, Waiver' },
  { provider_type_code: 'L00', provider_type_description: 'Home Health Agency' },
  { provider_type_code: 'L01', provider_type_description: 'Hospice' },
  { provider_type_code: 'M00', provider_type_description: 'Audiologist' },
  { provider_type_code: 'M01', provider_type_description: 'Hearing Aid Dealer' },
  { provider_type_code: 'N00', provider_type_description: 'Optometrist' },
  { provider_type_code: 'N01', provider_type_description: 'Optician/Optical Dispensary' },
  { provider_type_code: 'N02', provider_type_description: 'Optometrist Group' },
  { provider_type_code: 'P00', provider_type_description: 'Schools, DC Public' },
  { provider_type_code: 'P01', provider_type_description: 'Schools, DC Public Charter' },
  { provider_type_code: 'P02', provider_type_description: 'Office State Superinten of Ed' },
  { provider_type_code: 'Q01', provider_type_description: 'Hemodialysis, Freestanding' },
  { provider_type_code: 'Q02', provider_type_description: 'Hemodialysis, Hospital Based' },
  { provider_type_code: 'R01', provider_type_description: 'Crossover Claims UB' },
  { provider_type_code: 'R02', provider_type_description: 'Crossover Claims Only 1500' },
  { provider_type_code: 'S00', provider_type_description: 'Nurse Practitioner' },
  { provider_type_code: 'S01', provider_type_description: 'Nurse Midwives' },
  { provider_type_code: 'S02', provider_type_description: 'Lactation Consultant' },
  { provider_type_code: 'S03', provider_type_description: 'Unknown' },
  { provider_type_code: 'T00', provider_type_description: 'Rehabiliataion Center' },
  { provider_type_code: 'T01', provider_type_description: 'Mental Health Rehab Services' },
  { provider_type_code: 'T02', provider_type_description: 'Unknown' },
  { provider_type_code: 'U00', provider_type_description: 'General Non-Billing' },
  { provider_type_code: 'U02', provider_type_description: 'Insurance Premium Type B' },
  { provider_type_code: 'U03', provider_type_description: 'Insurance Premium Type C' },
  { provider_type_code: 'U04', provider_type_description: 'Recipient Out Of Pocket' },
  { provider_type_code: 'U05', provider_type_description: 'COBRA Insurance' },
  { provider_type_code: 'U07', provider_type_description: 'Money Follows Person Financial' },
  { provider_type_code: 'U08', provider_type_description: 'EHR Incentive Paymnt Financial' },
  { provider_type_code: 'U09', provider_type_description: 'Direct Incentive Financial' },
  { provider_type_code: 'U10', provider_type_description: 'Participant Directed' },
  { provider_type_code: 'U11', provider_type_description: 'Participant Direct Worker' },
  { provider_type_code: 'UNK', provider_type_description: 'Unknown' },
  { provider_type_code: 'V00', provider_type_description: 'Ambulatory Surgical Centers' },
  { provider_type_code: 'V01', provider_type_description: 'Birthing Centers' },
  { provider_type_code: 'V02', provider_type_description: 'Day Treatment' },
  { provider_type_code: 'W01', provider_type_description: 'IDD Waiver' },
  { provider_type_code: 'W02', provider_type_description: 'EPD Waiver' },
  { provider_type_code: 'W03', provider_type_description: 'Adult Day Care' },
  { provider_type_code: 'W04', provider_type_description: 'Adult Day Health 1915(i)' },
  { provider_type_code: 'W05', provider_type_description: 'PCA Aide' },
  { provider_type_code: 'X00', provider_type_description: 'Clinic, Private' },
  { provider_type_code: 'X01', provider_type_description: 'Clinic, Dental' },
  { provider_type_code: 'X02', provider_type_description: 'Clinic, Mental Health' },
  { provider_type_code: 'X03', provider_type_description: 'Clinic, Family Planning' },
  { provider_type_code: 'X04', provider_type_description: 'Clinic, Adlt Alc/Subst Abuse' },
  { provider_type_code: 'X05', provider_type_description: 'Clinic, Fed Qualified Health' },
  { provider_type_code: 'X06', provider_type_description: 'Clinic, Youth Alc/Subst Abuse' },
  { provider_type_code: 'X08', provider_type_description: 'Recovery Support Services' },
  { provider_type_code: 'X09', provider_type_description: 'Unknown' },
  { provider_type_code: 'X10', provider_type_description: 'Unknown' },
  { provider_type_code: 'Y00', provider_type_description: 'Independent Social Worker' },
  { provider_type_code: 'Y01', provider_type_description: 'Independent Social Worker Grp' },
  { provider_type_code: 'Y02', provider_type_description: 'Marriage/Family Therapist' },
  { provider_type_code: 'Y03', provider_type_description: 'Marriage/Family Therapist Grp' },
  { provider_type_code: 'Y04', provider_type_description: 'Professional Counselor' },
  { provider_type_code: 'Y05', provider_type_description: 'Professional Counselor Group' },
  { provider_type_code: 'Z00', provider_type_description: 'Managed Care Organization' },
  { provider_type_code: 'Z01', provider_type_description: 'MCO, Special Needs' },
  { provider_type_code: 'Z02', provider_type_description: 'Medical Transportation Broker' },
  { provider_type_code: 'Z03', provider_type_description: 'Unknown' },
  { provider_type_code: 'Z04', provider_type_description: 'Unknown' }
])

Claims::Procedure.create([
  { procedure_code: 'DBH14', procedure_description: 'Residential Crisis Stabilization' },
  { procedure_code: 'DMH20', procedure_description: 'DMH20' },
  { procedure_code: 'FOLLOWU', procedure_description: 'FOLLOWU' },
  { procedure_code: '80305', procedure_description: 'DRUG TEST PRSMV DIR OPT OBS' },
  { procedure_code: '80306', procedure_description: 'DRUG TEST PRSMV INSTRMNT' },
  { procedure_code: '80307', procedure_description: 'DRUG TEST PRSMV CHEM ANLYZR' },
  { procedure_code: '81025', procedure_description: 'URINE PREGNANCY TEST' },
  { procedure_code: '86580', procedure_description: 'TB INTRADERMAL TEST' },
  { procedure_code: '86703', procedure_description: 'Hiv-1/hiv-2 1 result antbdy' },
  { procedure_code: '86803', procedure_description: 'HEPATITIS C AB TEST' },
  { procedure_code: '90791', procedure_description: 'Psych diagnostic evaluation' },
  { procedure_code: '90792', procedure_description: 'Psych diag eval w/med srvcs' },
  { procedure_code: '90832', procedure_description: 'Psytx w pt 30 minutes' },
  { procedure_code: '90834', procedure_description: 'Psytx w pt 45 minutes' },
  { procedure_code: '90837', procedure_description: 'Psytx w pt 60 minutes' },
  { procedure_code: '90846', procedure_description: 'Family psytx w/o pt 50 min' },
  { procedure_code: '90847', procedure_description: 'Family psytx w/pt 50 min' },
  { procedure_code: '90853', procedure_description: 'GROUP PSYCHOTHERAPY' },
  { procedure_code: '96372', procedure_description: 'THER/PROPH/DIAG INJ SC/IM' },
  { procedure_code: '99202', procedure_description: 'OFFICE O/P NEW SF 15-29 MIN' },
  { procedure_code: '99204', procedure_description: 'OFFICE O/P NEW MOD 45-59 MIN' },
  { procedure_code: '99205', procedure_description: 'OFFICE O/P NEW HI 60-74 MIN' },
  { procedure_code: '99211', procedure_description: 'OFFICE O/P EST MINIMAL PROB' },
  { procedure_code: '99212', procedure_description: 'OFFICE O/P EST SF 10-19 MIN' },
  { procedure_code: '99213', procedure_description: 'OFFICE O/P EST LOW 20-29 MIN' },
  { procedure_code: '99214', procedure_description: 'OFFICE O/P EST MOD 30-39 MIN' },
  { procedure_code: '99215', procedure_description: 'OFFICE O/P EST HI 40-54 MIN' },
  { procedure_code: 'G2067', procedure_description: 'MED ASSIST TX METH WK' },
  { procedure_code: 'G2077', procedure_description: 'PERIODIC ASSESSMENT' },
  { procedure_code: 'G2078', procedure_description: 'TAKE-HOME METH' },
  { procedure_code: 'H0001', procedure_description: 'ALCOHOL AND/OR DRUG ASSESS', payment_unit: 'Per Encounter' },
  { procedure_code: 'H0002', procedure_description: 'ALCOHOL AND/OR DRUG SCREENING', payment_unit: 'Per Encounter' },
  { procedure_code: 'H0004', procedure_description: 'ALCOHOL AND/OR DRUG SERVICES' },
  { procedure_code: 'H0005', procedure_description: 'ALCOHOL AND/OR DRUG SERVICES' },
  { procedure_code: 'H0007', procedure_description: 'ALCOHOL AND/OR DRUG SERVICES' },
  { procedure_code: 'H0010', procedure_description: 'ALCOHOL AND/OR DRUG SERVICES', payment_unit: 'Per Diem' },
  { procedure_code: 'H0015', procedure_description: 'ALCOHOL AND/OR DRUG SERVICES' },
  { procedure_code: 'H0016', procedure_description: 'ALCOHOL AND/OR DRUG SERVICES' },
  { procedure_code: 'H0020', procedure_description: 'ALCOHOL AND/OR DRUG SERVICES' },
  { procedure_code: 'H0023', procedure_description: 'ALCOHOL AND/OR DRUG OUTREACH' },
  { procedure_code: 'H0025', procedure_description: 'BEHAVIORAL HEALTH PREVENTION EDUCATION', payment_unit: 'Per Diem' },
  { procedure_code: 'H0032', procedure_description: 'MH SVC PLAN DEV BY NON-MD' },
  { procedure_code: 'H0034', procedure_description: 'MED TRNG & SUPPORT PER 15MIN' },
  { procedure_code: 'H0036', procedure_description: 'COMM PSY FACE-FACE PER 15MIN' },
  { procedure_code: 'H0037', procedure_description: 'Community Psychiatric Supportive Treatment Program', payment_unit: 'Per Diem' },
  { procedure_code: 'H0039', procedure_description: 'ASSER COM TX FACE-FACE/15MIN' },
  { procedure_code: 'H0043', procedure_description: 'SUPPORTED HOUSING, PER DIEM', payment_unit: 'Per Diem' },
  { procedure_code: 'H0046', procedure_description: 'MENTAL HEALTH SERVICE, NOS' },
  { procedure_code: 'H0048', procedure_description: 'SPEC COLL NON-BLOOD:A/D TEST', payment_unit: 'Per Encounter' },
  { procedure_code: 'H2011', procedure_description: 'CRISIS INTERVENTION SERVICE, PER 15 MIN' },
  { procedure_code: 'H2012', procedure_description: 'Intensive Day Treatment', payment_unit: 'Per Diem' },
  { procedure_code: 'H2014', procedure_description: 'RECOVERY SUPPORT, INDIVIDUAL' },
  { procedure_code: 'H2022', procedure_description: 'COMMUNITY-BASED WRAP-AROUND SERVICE' },
  { procedure_code: 'H2023', procedure_description: 'SUPPORTED EMPLOY, PER 15 MIN' },
  { procedure_code: 'H2025', procedure_description: 'SUPP MAINT EMPLOY, 15 MIN' },
  { procedure_code: 'H2027', procedure_description: 'PSYCHOED SVC, PER 15 MIN' },
  { procedure_code: 'H2031', procedure_description: 'MH CLUBHOUSE SVC, PER DIEM' },
  { procedure_code: 'H2033', procedure_description: 'MULTISYS THER/JUVENILE 15MIN' },
  { procedure_code: 'S0281', procedure_description: 'MEDICAL HOME, MAINTENANCE' },
  { procedure_code: 'S9484', procedure_description: 'CRISIS INTERVENTION PER HOUR' },
  { procedure_code: 'S9485', procedure_description: 'CRISIS INTERVENTION MENTAL H' },
  { procedure_code: 'T1017', procedure_description: 'TARGETED CASE MANAGEMENT' },
  { procedure_code: 'T1023', procedure_description: 'PROGRAM INTAKE ASSESSMENT', payment_unit: 'Diagnostic Assessment ' }
])

Claims::ProcedureModifier.create([
  { modifier_code: 'UK', modifier_description: 'Face-to-Face Contact with Collateral Source' },
  { modifier_code: 'HA', modifier_description: 'Specified Service to Individual/Age 0-21' },
  { modifier_code: 'HE', modifier_description: 'Behavioral Health Service' },
  { modifier_code: 'HR', modifier_description: 'Family/Couple with Consumer or Client present' },
  { modifier_code: 'HS', modifier_description: 'Family/Couple without Consumer or Client present' },
  { modifier_code: 'HQ', modifier_description: 'Group Setting' },
  { modifier_code: 'U1', modifier_description: 'Community Residential Facility (CRF) Billing' },
  { modifier_code: 'HU', modifier_description: 'Funded by Child Welfare Agency - Used by DBH for Functional Family Therapy (FFT) CBI Level IV' },
  { modifier_code: 'HT', modifier_description: 'Multi-disciplinary Team - Used by DBH for MH Service Discharge Treatment Planning, Institution (MHS-DTP) - ACT' },
  { modifier_code: 'HK', modifier_description: 'Specialized Behavioral Health Program for High-Risk Population' },
  { modifier_code: 'AM', modifier_description: 'Physician Team Member' },
  { modifier_code: 'LR', modifier_description: 'Laboratory-related Service' },
  { modifier_code: 'TS', modifier_description: 'Follow Up Service' },
  { modifier_code: 'TG', modifier_description: 'Complex/high tech level of care' },
  { modifier_code: 'HF', modifier_description: 'Substance Use Program' },
  { modifier_code: 'UN', modifier_description: 'Two Clients Served' },
  { modifier_code: 'UP', modifier_description: 'Three Clients Served' },
  { modifier_code: 'UQ', modifier_description: 'Four Clients Served' },
  { modifier_code: 'UR', modifier_description: 'Five Clients Served' },
  { modifier_code: 'HH', modifier_description: 'Integrated Mental Health/SUD' },
  { modifier_code: 'ST', modifier_description: 'Trauma Related' }
])

Claims::PlaceOfService.create([
  { place_of_service_code: '1', place_of_service_name: 'Pharmacy', place_of_service_description: 'A facility or location where drugs and other medically related items and services are sold, dispensed, or otherwise provided directly to patients.', effective_date: '2005-10-01', effective_prior_to_2003: 'false' },
  { place_of_service_code: '2', place_of_service_name: 'Telehealth Provided Other than in Patient’s Home', place_of_service_description: 'The location where health services and health related services are provided or received, through telecommunication technology. Patient is not located in their home when receiving health services or health related services through telecommunication technology. (Description change effective January 1, 2022.)', special_considerations: 'Note that while the modification of POS Code 02 and the creation of POS Code 10 are effective in the National POS code set effective January 1, 2022, Medicare contractors received instructions regarding how to process claims with these codes starting April 4, 2022, so that Medicare would align with existing Telehealth claims processing policy, as well as be considered HIPAA compliant.', effective_date: '2017-01-01', effective_prior_to_2003: 'false' },
  { place_of_service_code: '3', place_of_service_name: 'School', place_of_service_description: 'A facility whose primary purpose is education.', effective_date: '2003-01-01', effective_prior_to_2003: 'false' },
  { place_of_service_code: '4', place_of_service_name: 'Homeless Shelter', place_of_service_description: 'A facility or location whose primary purpose is to provide temporary housing to homeless individuals (e.g., emergency shelters, individual or family shelters).', special_considerations: "Note that for the purposes of receiving durable medical equipment (DME), a homeless shelter is considered the beneficiary's home. Because DME is payable in the beneficiary's home, the crosswalk for Homeless Shelter (code 04) to Office (code 11) that was mandated effective January 1, 2003, may need to be adjusted or local policy developed so that HCPCS codes for DME are covered when other conditions are met and the beneficiary is in a homeless shelter. If desired, local contractors are permitted to work with their medical directors to determine a new crosswalk such as from Homeless Shelter (code 04) to Home (code 12) or Custodial Care Facility (code 33) for DME provided in a homeless shelter setting. If a local contractor is currently paying claims correctly, however, it is not necessary to change the current crosswalk.", effective_date: '2003-01-01', effective_prior_to_2003: 'false' },
  { place_of_service_code: '5', place_of_service_name: 'Indian Health Service Free-standing Facility', place_of_service_description: 'A facility or location, owned and operated by the Indian Health Service, which provides diagnostic, therapeutic (surgical and non-surgical), and rehabilitation services to American Indians and Alaska Natives who do not require hospitalization.', special_considerations: "Medicare does not currently use the POS codes designated for these settings. Follow the instructions you have received regarding how to process claims for services rendered in IHS and Tribal 638 settings. If you receive claims with these codes, you must initially accept them in terms of HIPAA compliance. However, follow your 'return as unprocessable' procedures after this initial compliance check. Follow your 'return as unprocessable' procedures when you receive paper claims with these codes. (Note that while these codes became part of the National POS code set effective January 1, 2003, Medicare contractors received instructions regarding how to process claims with these codes effective October 1, 2003, so that Medicare could be HIPAA compliant by October 16, 2003).", effective_date: '2003-01-01', effective_prior_to_2003: 'false' },
  { place_of_service_code: '6', place_of_service_name: 'Indian Health Service Provider-based Facility', place_of_service_description: 'A facility or location, owned and operated by the Indian Health Service, which provides diagnostic, therapeutic (surgical and non-surgical), and rehabilitation services rendered by, or under the supervision of, physicians to American Indians and Alaska Natives admitted as inpatients or outpatients. ', special_considerations: "Medicare does not currently use the POS codes designated for these settings. Follow the instructions you have received regarding how to process claims for services rendered in IHS and Tribal 638 settings. If you receive claims with these codes, you must initially accept them in terms of HIPAA compliance. However, follow your 'return as unprocessable' procedures after this initial compliance check. Follow your 'return as unprocessable' procedures when you receive paper claims with these codes. (Note that while these codes became part of the National POS code set effective January 1, 2003, Medicare contractors received instructions regarding how to process claims with these codes effective October 1, 2003, so that Medicare could be HIPAA compliant by October 16, 2003).", effective_date: '2003-01-01', effective_prior_to_2003: 'false' },
  { place_of_service_code: '7', place_of_service_name: 'Tribal 638 Free-standing Facility', place_of_service_description: 'A facility or location owned and operated by a federally recognized American Indian or Alaska Native tribe or tribal organization under a 638 agreement, which provides diagnostic, therapeutic (surgical and nonsurgical), and rehabilitation services to tribal members who do not require hospitalization.', special_considerations: "Medicare does not currently use the POS codes designated for these settings. Follow the instructions you have received regarding how to process claims for services rendered in IHS and Tribal 638 settings. If you receive claims with these codes, you must initially accept them in terms of HIPAA compliance. However, follow your 'return as unprocessable' procedures after this initial compliance check. Follow your 'return as unprocessable' procedures when you receive paper claims with these codes. (Note that while these codes became part of the National POS code set effective January 1, 2003, Medicare contractors received instructions regarding how to process claims with these codes effective October 1, 2003, so that Medicare could be HIPAA compliant by October 16, 2003).", effective_date: '2003-01-01', effective_prior_to_2003: 'false' },
  { place_of_service_code: '8', place_of_service_name: 'Tribal 638 Provider-based Facility', place_of_service_description: 'A facility or location owned and operated by a federally recognized American Indian or Alaska Native tribe or tribal organization under a 638 agreement, which provides diagnostic, therapeutic (surgical and nonsurgical), and rehabilitation services to tribal members admitted as inpatients or outpatients.', special_considerations: "Medicare does not currently use the POS codes designated for these settings. Follow the instructions you have received regarding how to process claims for services rendered in IHS and Tribal 638 settings. If you receive claims with these codes, you must initially accept them in terms of HIPAA compliance. However, follow your 'return as unprocessable' procedures after this initial compliance check. Follow your 'return as unprocessable' procedures when you receive paper claims with these codes. (Note that while these codes became part of the National POS code set effective January 1, 2003, Medicare contractors received instructions regarding how to process claims with these codes effective October 1, 2003, so that Medicare could be HIPAA compliant by October 16, 2003).", effective_date: '2003-01-01', effective_prior_to_2003: 'false' },
  { place_of_service_code: '9', place_of_service_name: 'Prison/ Correctional Facility', place_of_service_description: 'A prison, jail, reformatory, work farm, detention center, or any other similar facility maintained by either Federal, State or local authorities for the purpose of confinement or rehabilitation of adult or juvenile criminal offenders.', special_considerations: "The addition of code 09 to the POS code set and Medicare claims processing reflects Medicare's compliance with HIPAA laws and regulations. Local contractors must continue to comply with CMS current policy that does not allow payment for Medicare services in a penal institution in most cases. The addition of a POS code for a prison/correctional facility setting does not supersede this policy. (See Pub. 100-04, Medicare Claims Processing, section 10.4, chapter 1.)", effective_date: '2006-07-01', effective_prior_to_2003: 'false' },
  { place_of_service_code: '10', place_of_service_name: "Telehealth Provided in Patient's Home", place_of_service_description: 'The location where health services and health related services are provided or received, through telecommunication technology. Patient is located in their home (which is a location other than a hospital or other facility where the patient receives care in a private residence) when receiving health services or health related services through telecommunication technology. (This code is effective January 1, 2022, and available to Medicare April 1, 2022.)', special_considerations: 'Note that while the modification of POS Code 02 and the creation of POS Code 10 are effective in the National POS code set effective January 1, 2022, Medicare contractors received instructions regarding how to process claims with these codes starting April 4, 2022, so that Medicare would align with existing Telehealth claims processing policy, as well as be considered HIPAA compliant.', effective_date: '2022-01-01', effective_prior_to_2003: 'false' },
  { place_of_service_code: '11', place_of_service_name: 'Office', place_of_service_description: 'Location, other than a hospital, skilled nursing facility (SNF), military treatment facility, community health center, State or local public health clinic, or intermediate care facility (ICF), where the health professional routinely provides health examinations, diagnosis, and treatment of illness or injury on an ambulatory basis.', effective_prior_to_2003: 'true' },
  { place_of_service_code: '12', place_of_service_name: 'Home', place_of_service_description: 'Location, other than a hospital or other facility, where the patient receives care in a private residence.', effective_prior_to_2003: 'true' },
  { place_of_service_code: '13', place_of_service_name: 'Assisted Living Facility', place_of_service_description: "Congregate residential facility with self-contained living units providing assessment of each resident's needs and on-site support 24 hours a day, 7 days a week, with the capacity to deliver or arrange for services including some health care and other services.", effective_date: '2003-10-01', effective_prior_to_2003: 'false' },
  { place_of_service_code: '14', place_of_service_name: 'Group Home', place_of_service_description: 'A residence, with shared living areas, where clients receive supervision and other services such as social and/or behavioral services, custodial service, and minimal services (e.g., medication administration).', effective_date: '2004-04-01', effective_prior_to_2003: 'false' },
  { place_of_service_code: '15', place_of_service_name: 'Mobile Unit', place_of_service_description: 'A facility/unit that moves from place-to-place equipped to provide preventive, screening, diagnostic, and/or treatment services.', special_considerations: "When services are furnished in a mobile unit, they are often provided to serve an entity for which another POS code exists. For example, a mobile unit may be sent to a physician's office or a skilled nursing facility. If the mobile unit is serving an entity for which another POS code already exists, providers should use the POS code for that entity. However, if the mobile unit is not serving an entity which could be described by an existing POS code, the providers are to use the Mobile Unit POS code 15. Apply the non-facility rate to payments for services designated as being furnished in POS code 15; apply the appropriate facility or non-facility rate for the POS code designated when a code other than the mobile unit code is indicated. A physician or practitioner's office, even if mobile, qualifies to serve as a telehealth originating site. Assuming such an office also fulfills the requirement that it be located in either a rural health professional shortage area as defined under section 332(a)(1)(A) of the Public Health Service Act (42 U.S.C. 254e(a)(1)(A)) or in a county that is not included in a Metropolitan Statistical Area as defined in section 1886(d)(2)(D) of the Act, the originating physician's office should use POS code 11 (Office) in order to ensure appropriate payment for services on the list of Medicare Telehealth Services.", effective_date: '2003-01-01', effective_prior_to_2003: 'false' },
  { place_of_service_code: '16', place_of_service_name: 'Temporary Lodging', place_of_service_description: 'A short term accommodation such as a hotel, camp ground, hostel, cruise ship or resort where the patient receives care, and which is not identified by any other POS code.', effective_date: '2008-04-01', effective_prior_to_2003: 'false' },
  { place_of_service_code: '17', place_of_service_name: 'Walk-in Retail Health Clinic', place_of_service_description: 'A walk-in health clinic, other than an office, urgent care facility, pharmacy or independent clinic and not described by any other Place of Service code, that is located within a retail operation and provides, on an ambulatory basis, preventive and primary care services.', special_considerations: 'It should be noted that, while some entities in the industry may elect to use POS code 17 to track the setting of immunizations, Medicare continues to require its billing rules for immunizations claims, which are found in chapter 18, section 10 of this manual. Contractors are to instruct providers and suppliers of immunizations to continue to follow these Medicare billing rules. However, Medicare contractors are to accept and adjudicate claims containing POS code 17, even if its presence on a claim is contrary to these billing instructions. ', effective_date: '2010-05-01', effective_prior_to_2003: 'false' },
  { place_of_service_code: '18', place_of_service_name: 'Place of Employment/Worksite', place_of_service_description: 'A location, not described by any other POS code, owned or operated by a public or private entity where the patient is employed, and where a health professional provides on-going or episodic occupational medical, therapeutic or rehabilitative services to the individual.', effective_date: '2013-05-01', effective_prior_to_2003: 'false' },
  { place_of_service_code: '19', place_of_service_name: 'Off Campus-Outpatient Hospital', place_of_service_description: 'A portion of an off-campus hospital provider based department which provides diagnostic, therapeutic (both surgical and nonsurgical), and rehabilitation services to sick or injured persons who do not require hospitalization or institutionalization.', effective_date: '2016-01-01', effective_prior_to_2003: 'false' },
  { place_of_service_code: '20', place_of_service_name: 'Urgent Care Facility', place_of_service_description: 'Location, distinct from a hospital emergency room, an office, or a clinic, whose purpose is to diagnose and treat illness or injury for unscheduled, ambulatory patients seeking immediate medical attention.', effective_date: '2003-01-01', effective_prior_to_2003: 'false' },
  { place_of_service_code: '21', place_of_service_name: 'Inpatient Hospital', place_of_service_description: 'A facility, other than psychiatric, which primarily provides diagnostic, therapeutic (both surgical and nonsurgical), and rehabilitation services by, or under, the supervision of physicians to patients admitted for a variety of medical conditions.', effective_prior_to_2003: 'true' },
  { place_of_service_code: '22', place_of_service_name: 'On Campus-Outpatient Hospital', place_of_service_description: 'A portion of a hospital which provides diagnostic, therapeutic (both surgical and nonsurgical), and rehabilitation services to sick or injured persons who do not require hospitalization or institutionalization. (Description change effective January 1, 2016)', effective_prior_to_2003: 'true' },
  { place_of_service_code: '23', place_of_service_name: 'Emergency Room - Hospital', place_of_service_description: 'A portion of a hospital where emergency diagnosis and treatment of illness or injury is provided.', effective_prior_to_2003: 'true' },
  { place_of_service_code: '24', place_of_service_name: 'Ambulatory Surgical Center', place_of_service_description: "A freestanding facility, other than a physician's office, where surgical and diagnostic services are provided on an ambulatory basis.", special_considerations: 'When a physician/practitioner furnishes services to a patient in a Medicare-participating ambulatory surgical center (ASC), the POS code 24 (ASC) shall be used. NOTE: Physicians/practitioners who perform services in an ASC shall use POS code 24 (ASC). Physicians/practitioners are not to use POS code 11 (office) for ASC based services unless the physician has an office at the same physical location of the ASC, which meets all other requirements for operating as a physician office at the same physical location as the ASC – including meeting the “distinct entity” criteria defined in the ASC State Operations Manual that precludes the ASC and an adjacent physician office from being open at the same time -- and the physician service was actually performed in the office suite portion of the facility. See Pub 100-07, Medicare State Operations Manual, Appendix L - Guidance for Surveyors: Ambulatory Surgical Centers for a complete set of applicable ASC definitions, basic requirements, and conditions of coverage. It is available at the following link: http://www.cms.gov/manuals/Downloads/som107ap_l_ambulatory.pdf', effective_prior_to_2003: 'true' },
  { place_of_service_code: '25', place_of_service_name: 'Birthing Center', place_of_service_description: "A facility, other than a hospital's maternity facilities or a physician's office, which provides a setting for labor, delivery, and immediate postpartum care as well as immediate care of new born infants.", effective_prior_to_2003: 'true' },
  { place_of_service_code: '26', place_of_service_name: 'Military Treatment Facility', place_of_service_description: 'A medical facility operated by one or more of the Uniformed Services. Military Treatment Facility (MTF) also refers to certain former U.S. Public Health Service (USPHS) facilities now designated as Uniformed Service Treatment Facilities (USTF).', effective_prior_to_2003: 'true' },
  { place_of_service_code: '31', place_of_service_name: 'Skilled Nursing Facility', place_of_service_description: 'A facility which primarily provides inpatient skilled nursing care and related services to patients who require medical, nursing, or rehabilitative services but does not provide the level of care or treatment available in a hospital.', effective_prior_to_2003: 'true' },
  { place_of_service_code: '32', place_of_service_name: 'Nursing Facility', place_of_service_description: 'A facility which primarily provides to residents skilled nursing care and related services for the rehabilitation of injured, disabled, or sick persons, or, on a regular basis, health-related care services above the level of custodial care to other than individuals with intellectual disabilities.', effective_prior_to_2003: 'true' },
  { place_of_service_code: '33', place_of_service_name: 'Custodial Care Facility', place_of_service_description: 'A facility which provides room, board and other personal assistance services, generally on a long-term basis, and which does not include a medical component.', effective_prior_to_2003: 'true' },
  { place_of_service_code: '34', place_of_service_name: 'Hospice', place_of_service_description: "A facility, other than a patient's home, in which palliative and supportive care for terminally ill patients and their families are provided.", special_considerations: 'When a physician/practitioner furnishes services to a patient under the hospice benefit, use the following guidelines to identify the appropriate POS. When a beneficiary is in an “inpatient” respite or general “inpatient” care stay, the POS code 34 (hospice) shall be used. When a beneficiary who has elected coverage under the Hospice benefit is receiving inpatient hospice care in a hospital, SNF, or hospice inpatient facility, POS code 34 (Hospice) shall be used to designate the POS on the claim. For services provided to a hospice beneficiary in an outpatient setting, such as the physician/nonphysician practitioner’s office (POS 11); the beneficiary’s home (POS 12), i.e., not operated by the hospice; or other outpatient setting (e.g., outpatient hospital (POS 22)), the patient’s physician or nonphysician practitioner or hospice independent attending physician or nurse practitioner, shall assign the POS code that represents that setting, as appropriate. There may be use of nursing homes as the hospice patient’s “home,” where the patient resides in the facility but is receiving a home level of care. In addition, hospices are also operating “houses” or hospice residential entities where hospice patients receive a home level of care. In these cases, physicians and nonphysician practitioners, including the patient’s independent attending physician or nurse practitioner, shall use the appropriate POS code representing the particular setting, e.g., POS code 32 for nursing home, POS code 13 for an assisted living facility, or POS code 14 for group home.', effective_prior_to_2003: 'true' },
  { place_of_service_code: '41', place_of_service_name: 'Ambulance - Land', place_of_service_description: 'A land vehicle specifically designed, equipped and staffed for lifesaving and transporting the sick or injured.', effective_prior_to_2003: 'true' },
  { place_of_service_code: '42', place_of_service_name: 'Ambulance - Air or Water', place_of_service_description: 'An air or water vehicle specifically designed, equipped and staffed for lifesaving and transporting the sick or injured.', effective_prior_to_2003: 'true' },
  { place_of_service_code: '49', place_of_service_name: 'Independent Clinic', place_of_service_description: 'A location, not part of a hospital and not described by any other Place of Service code, that is organized and operated to provide preventive, diagnostic, therapeutic, rehabilitative, or palliative services to outpatients only.', effective_date: '2003-10-01', effective_prior_to_2003: 'false' },
  { place_of_service_code: '50', place_of_service_name: 'Federally Qualified Health Center', place_of_service_description: 'A facility located in a medically underserved area that provides Medicare beneficiaries preventive primary medical care under the general direction of a physician.', effective_prior_to_2003: 'true' },
  { place_of_service_code: '51', place_of_service_name: 'Inpatient Psychiatric Facility', place_of_service_description: 'A facility that provides inpatient psychiatric services for the diagnosis and treatment of mental illness on a 24-hour basis, by or under the supervision of a physician.', effective_prior_to_2003: 'true' },
  { place_of_service_code: '52', place_of_service_name: 'Psychiatric Facility-Partial Hospitalization', place_of_service_description: 'A facility for the diagnosis and treatment of mental illness that provides a planned therapeutic program for patients who do not require full time hospitalization, but who need broader programs than are possible from outpatient visits to a hospital-based or hospital-affiliated facility.', effective_prior_to_2003: 'true' },
  { place_of_service_code: '53', place_of_service_name: 'Community Mental Health Center', place_of_service_description: "A facility that provides the following services: outpatient services, including specialized outpatient services for children, the elderly, individuals who are chronically ill, and residents of the CMHC's mental health services area who have been discharged from inpatient treatment at a mental health facility; 24 hour a day emergency care services; day treatment, other partial hospitalization services, or psychosocial rehabilitation services; screening for patients being considered for admission to State mental health facilities to determine the appropriateness of such admission; and consultation and education services.", effective_prior_to_2003: 'true' },
  { place_of_service_code: '54', place_of_service_name: 'Intermediate Care Facility/ Individuals with Intellectual Disabilities', place_of_service_description: 'A facility which primarily provides health-related care and services above the level of custodial care to mentally retarded individuals but does not provide the level of care or treatment available in a hospital or SNF.', effective_prior_to_2003: 'true' },
  { place_of_service_code: '55', place_of_service_name: 'Residential Substance Abuse Treatment Facility', place_of_service_description: 'A facility which provides treatment for substance (alcohol and drug) abuse to live-in residents who do not require acute medical care. Services include individual and group therapy and counseling, family counseling, laboratory tests, drugs and supplies, psychological testing, and room and board.', effective_prior_to_2003: 'true' },
  { place_of_service_code: '56', place_of_service_name: 'Psychiatric Residential Treatment Center', place_of_service_description: 'A facility or distinct part of a facility for psychiatric care which provides a total 24-hour therapeutically planned and professionally staffed group living and learning environment.', effective_prior_to_2003: 'true' },
  { place_of_service_code: '57', place_of_service_name: 'Non-residential Substance Abuse Treatment Facility', place_of_service_description: 'A location which provides treatment for substance (alcohol and drug) abuse on an ambulatory basis. Services include individual and group therapy and counseling, family counseling, laboratory tests, drugs and supplies, and psychological testing.', effective_date: '2003-01-01', effective_prior_to_2003: 'false' },
  { place_of_service_code: '58', place_of_service_name: 'Non-residential Opioid Treatment Facility', place_of_service_description: 'A location that provides treatment for opioid use disorder on an ambulatory basis. Services include methadone and other forms of Medication Assisted Treatment (MAT).', special_considerations: 'NOTE: OUD treatment services furnished at Opioid Treatment Programs are not considered physician services and are separately paid under the bundled payment established under sections 1833(a)(1)(CC) and 1834(w) of the Social Security Act.', effective_date: '2020-01-01', effective_prior_to_2003: 'false' },
  { place_of_service_code: '60', place_of_service_name: 'Mass Immunization Center', place_of_service_description: 'A location where providers administer pneumococcal pneumonia and influenza virus vaccinations and submit these services as electronic media claims, paper claims, or using the roster billing method. This generally takes place in a mass immunization setting, such as, a public health center, pharmacy, or mall but may include a physician office setting.', effective_prior_to_2003: 'true' },
  { place_of_service_code: '61', place_of_service_name: 'Comprehensive Inpatient Rehabilitation Facility', place_of_service_description: 'A facility that provides comprehensive rehabilitation services under the supervision of a physician to inpatients with physical disabilities. Services include physical therapy, occupational therapy, speech pathology, social or psychological services, and orthotics and prosthetics services.', effective_prior_to_2003: 'true' },
  { place_of_service_code: '62', place_of_service_name: 'Comprehensive Outpatient Rehabilitation Facility', place_of_service_description: 'A facility that provides comprehensive rehabilitation services under the supervision of a physician to outpatients with physical disabilities. Services include physical therapy, occupational therapy, and speech pathology services.', effective_prior_to_2003: 'true' },
  { place_of_service_code: '65', place_of_service_name: 'End-Stage Renal Disease Treatment Facility', place_of_service_description: 'A facility other than a hospital, which provides dialysis treatment, maintenance, and/or training to patients or caregivers on an ambulatory or home-care basis.', effective_prior_to_2003: 'true' },
  { place_of_service_code: '71', place_of_service_name: 'Public Health Clinic', place_of_service_description: 'A facility maintained by either State or local health departments that provides ambulatory primary medical care under the general direction of a physician.', effective_prior_to_2003: 'true' },
  { place_of_service_code: '72', place_of_service_name: 'Rural Health Clinic', place_of_service_description: 'A certified facility which is located in a rural medically underserved area that provides ambulatory primary medical care under the general direction of a physician.', effective_prior_to_2003: 'true' },
  { place_of_service_code: '81', place_of_service_name: 'Independent Laboratory', place_of_service_description: "A laboratory certified to perform diagnostic and/or clinical tests independent of an institution or a physician's office.", effective_prior_to_2003: 'true' },
  { place_of_service_code: '99', place_of_service_name: 'Other Place of Service', place_of_service_description: 'Other place of service not identified above.', effective_prior_to_2003: 'true' }
])

# Generic Lookups
ListLookups::ListRace.create([
  { race_code: '1', race: 'Alaskan Native (Aleut, Eskimo)' },
  { race_code: '2', race: 'American Indian/Alaska native ' },
  { race_code: '3', race: 'Asian or Pacific Islander' },
  { race_code: '4', race: 'Black or African American' },
  { race_code: '5', race: 'White' },
  { race_code: '13', race: 'Asian' },
  { race_code: '20', race: 'Other Single Race' },
  { race_code: '21', race: 'Two or More Races' },
  { race_code: '23', race: 'Native Hawaiian or other Pacific islander' },
  { race_code: '97', race: 'Unknown' },
  { race_code: '98', race: 'Not Collected' }
])

ListLookups::ListEthnicity.create([
  { ethnicity_code: '1', ethnicity: 'Puerto Rican' },
  { ethnicity_code: '2', ethnicity: 'Mexican' },
  { ethnicity_code: '3', ethnicity: 'Cuban' },
  { ethnicity_code: '4', ethnicity: 'Other specific Hispanic or Latino' },
  { ethnicity_code: '5', ethnicity: 'Not of Hispanic or Latino origin' },
  { ethnicity_code: '6', ethnicity: 'Hispanic or Latino, Not Specified' },
  { ethnicity_code: '97', ethnicity: 'Unknown' },
  { ethnicity_code: '98', ethnicity: 'Not Collected' },
  { ethnicity_code: '23', ethnicity: 'Native Hawaiian or Other Pacific Islander' },
  { ethnicity_code: '97', ethnicity: 'Unknown' },
  { ethnicity_code: '98', ethnicity: 'Not Collected' }
])

ListLookups::ListLivingArrangement.create([
  { living_arrangements_code: '1', living_arrangements: 'Homeless' },
  { living_arrangements_code: '2', living_arrangements: 'Dependent Living, Not Specified' },
  { living_arrangements_code: '3', living_arrangements: 'Independent Living - Adult' },
  { living_arrangements_code: '4', living_arrangements: 'Institutional Setting' },
  { living_arrangements_code: '5', living_arrangements: 'Justice System' },
  { living_arrangements_code: '6', living_arrangements: 'Dependent Living: Residential Care' },
  { living_arrangements_code: '7', living_arrangements: 'Dependent Living: Foster Home/Foster Care' },
  { living_arrangements_code: '8', living_arrangements: 'Dependent Living: Crisis Residence' },
  { living_arrangements_code: '9', living_arrangements: 'Dependent Living: Institutional Setting' },
  { living_arrangements_code: '10', living_arrangements: 'Dependent Living: Private Residence' },
  { living_arrangements_code: '11', living_arrangements: 'Dependent Living with Caretaker' },
  { living_arrangements_code: '12', living_arrangements: 'Foster Care in Family Setting' },
  { living_arrangements_code: '13', living_arrangements: 'Foster Care Group Home' },
  { living_arrangements_code: '97', living_arrangements: 'Unknown' },
  { living_arrangements_code: '98', living_arrangements: 'Not Collected' }
])

ListLookups::ListDischargeReason.create([
  { discharge_reason_code: '1', discharge_reason: 'Treatment Completed' },
  { discharge_reason_code: '2', discharge_reason: 'Dropout, Reason Not Specified' },
  { discharge_reason_code: '3', discharge_reason: 'Terminated by Facility' },
  { discharge_reason_code: '4', discharge_reason: 'Transferred Successfully' },
  { discharge_reason_code: '5', discharge_reason: 'Incarcerated' },
  { discharge_reason_code: '6', discharge_reason: 'Death by Suicide' },
  { discharge_reason_code: '7', discharge_reason: 'Death Not by Suicide' },
  { discharge_reason_code: '8', discharge_reason: 'Dropout - AMA' },
  { discharge_reason_code: '9', discharge_reason: 'Dropout - Lost to Contact' },
  { discharge_reason_code: '10', discharge_reason: 'Administrative Closure' },
  { discharge_reason_code: '11', discharge_reason: 'Medical Necessity' },
  { discharge_reason_code: '12', discharge_reason: 'Dropout - AWOL or Elopement' },
  { discharge_reason_code: '13', discharge_reason: 'Aging Out' },
  { discharge_reason_code: '14', discharge_reason: 'Change of Residence' },
  { discharge_reason_code: '15', discharge_reason: 'Transferred but No Show' },
  { discharge_reason_code: '16', discharge_reason: 'Transferred but Not Reportable' },
  { discharge_reason_code: '17', discharge_reason: 'Incarcerated' },
  { discharge_reason_code: '18', discharge_reason: 'Discharged from Psychiatric Inpatient Facility' },
  { discharge_reason_code: '19', discharge_reason: 'Conditional Release' },
  { discharge_reason_code: '95', discharge_reason: 'Other' },
  { discharge_reason_code: '97', discharge_reason: 'Unknown' },
  { discharge_reason_code: '98', discharge_reason: 'Not Collected' }
])

ListLookups::ListEducation.create([
  { education_code: '0', education: 'Less than one school grade' },
  { education_code: '1', education: 'Grade 1' },
  { education_code: '2', education: 'Grade 2' },
  { education_code: '3', education: 'Grade 3' },
  { education_code: '4', education: 'Grade 4' },
  { education_code: '5', education: 'Grade 5' },
  { education_code: '6', education: 'Grade 6' },
  { education_code: '7', education: 'Grade 7' },
  { education_code: '8', education: 'Grade 8' },
  { education_code: '9', education: 'Grade 9' },
  { education_code: '10', education: 'Grade 10' },
  { education_code: '11', education: 'Grade 11' },
  { education_code: '12', education: '12th Grade or GED' },
  { education_code: '13', education: '1st Year of college/university' },
  { education_code: '14', education: '2nd Year of college/university' },
  { education_code: '15', education: '3rd Year of college/university' },
  { education_code: '16', education: '4th Year of college/university' },
  { education_code: '17', education: 'Some post-graduate study' },
  { education_code: '18', education: 'Graduate or professional degree' },
  { education_code: '71', education: 'Vocational school' },
  { education_code: '72', education: 'Nursery, pre-school or head-start' },
  { education_code: '73', education: 'Kindergarten' },
  { education_code: '74', education: 'Self-contained special education' },
  { education_code: '97', education: 'Unknown' },
  { education_code: '98', education: 'Not Collected' }
])

ListLookups::ListEmployment.create([
  { employment_code: '1', employment: 'Full-time' },
  { employment_code: '2', employment: 'Part-time' },
  { employment_code: '3', employment: 'Unemployed' },
  { employment_code: '4', employment: 'Not in labor force' },
  { employment_code: '5', employment: 'Employed' },
  { employment_code: '97', employment: 'Unknown' },
  { employment_code: '98', employment: 'Not Collected' }
])

ListLookups::ListRecordType.create([
  { record_type_code: 'A', record_type: 'SUD Initial Admission' },
  { record_type_code: 'T', record_type: 'SUD Transfer' },
  { record_type_code: 'M', record_type: 'MH Initial Admission' },
  { record_type_code: 'x', record_type: 'MH Transfer' }
])

ListLookups::ListTreatmentSetting.create([
  { treatment_setting_code: '1', treatment_setting: 'Detoxification, 24-hour service, hospital inpatient', asam_level: '4-D and 3.7-D' },
  { treatment_setting_code: '2', treatment_setting: 'Detoxification, 24-hour service, free-standing residential', asam_level: '3.2 D' },
  { treatment_setting_code: '3', treatment_setting: 'Rehabilitation/residential - hospital (other than detoxification)', asam_level: '4 and 3.7' },
  { treatment_setting_code: '4', treatment_setting: 'Rehabilitation/residential - short term (30 days or fewer)', asam_level: '3.5' },
  { treatment_setting_code: '5', treatment_setting: 'Rehabilitation/residential - long term (more than 30 days)', asam_level: '3.3 and 3.1' },
  { treatment_setting_code: '6', treatment_setting: 'Ambulatory - intensive outpatient', asam_level: '2.5' },
  { treatment_setting_code: '7', treatment_setting: 'Ambulatory - non-intensive outpatient', asam_level: '1' },
  { treatment_setting_code: '8', treatment_setting: 'Ambulatory - detoxification', asam_level: '1-D and 2-D' },
  { treatment_setting_code: '72', treatment_setting: 'State psychiatric hospital' },
  { treatment_setting_code: '73', treatment_setting: 'SMHA funded/operated community-based program' },
  { treatment_setting_code: '74', treatment_setting: 'Residential treatment center' },
  { treatment_setting_code: '75', treatment_setting: 'Other psychiatric inpatient' },
  { treatment_setting_code: '76', treatment_setting: 'Institutions under the justice system' },
  { treatment_setting_code: '77', treatment_setting: 'MH Assessment/Screening' },
  { treatment_setting_code: '96', treatment_setting: 'Not applicable ' }
])

ListLookups::ListCollateralStatus.create([
  { collateral_status_code: '1', collateral_status: 'Codependent/Collateral' },
  { collateral_status_code: '2', collateral_status: 'Client' }
])

ListLookups::ListGender.create([
  { gender_code: '1', gender: 'Male' },
  { gender_code: '2', gender: 'Female' },
  { gender_code: '3', gender: 'Female-to-Male' },
  { gender_code: '4', gender: 'Male-to-Female' },
  { gender_code: '5', gender: 'Transgender, Not Specified' },
  { gender_code: '6', gender: 'Non-conforming Gender' },
  { gender_code: '95', gender: 'Prefer Not to Disclose' },
  { gender_code: '97', gender: 'Unknown' },
  { gender_code: '98', gender: 'Not Collected' }
])

ListLookups::ListReferralSource.create([
  { referral_source_code: '1', referral_source: 'Individual, including Self-Referral' },
  { referral_source_code: '2', referral_source: 'Alcohol/drug abuse care provider' },
  { referral_source_code: '3', referral_source: 'Other health care provider' },
  { referral_source_code: '4', referral_source: 'School (Educational)' },
  { referral_source_code: '5', referral_source: 'Employer/Employee Assistance Program (EAP)' },
  { referral_source_code: '6', referral_source: 'Other community referral' },
  { referral_source_code: '7', referral_source: 'Criminal justice referral' },
  { referral_source_code: '97', referral_source: 'Unknown' },
  { referral_source_code: '98', referral_source: 'Not Collected' }
])

ListLookups::ListSmiSedStatus.create([
  { smi_sed_code: '1', smi_sed: 'SMI' },
  { smi_sed_code: '2', smi_sed: 'SED' },
  { smi_sed_code: '3', smi_sed: 'At Risk for SED' },
  { smi_sed_code: '4', smi_sed: 'Not SMI/SED' },
  { smi_sed_code: '97', smi_sed: 'Unknown' },
  { smi_sed_code: '98', smi_sed: 'Not Collected' }
])

ListLookups::ListCoOccurringStatus.create([
  { co_occurring_sud_mh_code: '1', co_occurring_sud_mh: 'Yes' },
  { co_occurring_sud_mh_code: '2', co_occurring_sud_mh: 'No' },
  { co_occurring_sud_mh_code: '97', co_occurring_sud_mh: 'Unknown' },
  { co_occurring_sud_mh_code: '98', co_occurring_sud_mh: 'Not Collected' }
])

ListLookups::ListLanguage.create([
  { primary_language_code: '1', primary_language: 'English' },
  { primary_language_code: '2', primary_language: 'Amharic' },
  { primary_language_code: '3', primary_language: 'Arabic' },
  { primary_language_code: '4', primary_language: 'Chinese' },
  { primary_language_code: '5', primary_language: 'French' },
  { primary_language_code: '6', primary_language: 'German' },
  { primary_language_code: '7', primary_language: 'Hebrew' },
  { primary_language_code: '8', primary_language: 'Hindi' },
  { primary_language_code: '9', primary_language: 'Italian' },
  { primary_language_code: '10', primary_language: 'Korean' },
  { primary_language_code: '11', primary_language: 'Spanish' },
  { primary_language_code: '12', primary_language: 'Tagalog' },
  { primary_language_code: '13', primary_language: 'Urdu' },
  { primary_language_code: '14', primary_language: 'Vietnamese' },
  { primary_language_code: '95', primary_language: 'Other' },
  { primary_language_code: '97', primary_language: 'Unknown' },
  { primary_language_code: '98', primary_language: 'Not Collected' }
])

ListLookups::ListMaritalStatus.create([
  { marital_status_code: '1', marital_status: 'Single or Never Married' },
  { marital_status_code: '2', marital_status: 'Married or Domestic Partnership' },
  { marital_status_code: '3', marital_status: 'Separated' },
  { marital_status_code: '4', marital_status: 'Divorced' },
  { marital_status_code: '5', marital_status: 'Widowed' },
  { marital_status_code: '96', marital_status: 'Not Applicable' },
  { marital_status_code: '97', marital_status: 'Unknown' },
  { marital_status_code: '98', marital_status: 'Not Collected' }
])

ListLookups::ListSchoolAttendanceStatus.create([
  { school_attendance_code: '1', school_attendance: 'Yes' },
  { school_attendance_code: '2', school_attendance: 'No' },
  { school_attendance_code: '96', school_attendance: 'Not Applicable' },
  { school_attendance_code: '97', school_attendance: 'Unknown' },
  { school_attendance_code: '98', school_attendance: 'Not Collected' }
])

ListLookups::ListLegalStatus.create([
  { legal_status_code: '1', legal_status: 'Voluntary, Self' },
  { legal_status_code: '2', legal_status: 'Voluntary, Others' },
  { legal_status_code: '3', legal_status: 'Involuntary, Civil' },
  { legal_status_code: '4', legal_status: 'Involuntary, Criminal' },
  { legal_status_code: '5', legal_status: 'Involuntary, Juvenile Justice' },
  { legal_status_code: '6', legal_status: 'Involuntary, Civil, Sexual' },
  { legal_status_code: '96', legal_status: 'Not Applicable' },
  { legal_status_code: '97', legal_status: 'Unknown' },
  { legal_status_code: '98', legal_status: 'Not Collected' }
])

ListLookups::ListSexualOrientation.create([
  { sexual_orientation_code: '1', sexual_orientation: 'Lesbian, gay or homosexual' },
  { sexual_orientation_code: '2', sexual_orientation: 'Straight or heterosexual' },
  { sexual_orientation_code: '3', sexual_orientation: 'Bisexual' },
  { sexual_orientation_code: '4', sexual_orientation: 'Something else' },
  { sexual_orientation_code: '95', sexual_orientation: 'Prefer Not to Disclose' },
  { sexual_orientation_code: '97', sexual_orientation: 'Unknown' },
  { sexual_orientation_code: '98', sexual_orientation: 'Not Collected' }
])

ListLookups::ListVeteranStatus.create([
  { veteran_status_code: '1', veteran_status: 'Yes' },
  { veteran_status_code: '2', veteran_status: 'No' },
  { veteran_status_code: '97', veteran_status: 'Unknown' },
  { veteran_status_code: '98', veteran_status: 'Not Collected' }
])

ListLookups::ListNotInLaborDetail.create([
  { not_in_labor_code: '1', not_in_labor: 'Homemaker' },
  { not_in_labor_code: '2', not_in_labor: 'Student' },
  { not_in_labor_code: '3', not_in_labor: 'Retired' },
  { not_in_labor_code: '4', not_in_labor: 'Disabled' },
  { not_in_labor_code: '5', not_in_labor: 'Resident of Institution' },
  { not_in_labor_code: '6', not_in_labor: 'Other or Not Specified' },
  { not_in_labor_code: '7', not_in_labor: 'Sheltered or Non-competitive Employment' },
  { not_in_labor_code: '96', not_in_labor: 'Not Applicable' },
  { not_in_labor_code: '97', not_in_labor: 'Unknown' },
  { not_in_labor_code: '98', not_in_labor: 'Not Collected' }
])

ListLookups::ListIncomeSource.create([
  { income_source_code: '1', income_source: 'Wage/Salary' },
  { income_source_code: '2', income_source: 'Public Assistance (TANF, etc.)' },
  { income_source_code: '3', income_source: 'Retirement/Pension' },
  { income_source_code: '4', income_source: 'Disability (SSI, SSDI, etc.)' },
  { income_source_code: '95', income_source: 'Other' },
  { income_source_code: '96', income_source: 'None' },
  { income_source_code: '97', income_source: 'Unknown' },
  { income_source_code: '98', income_source: 'Not Collected' }
])

ListLookups::ListPregnantStatus.create([
  { pregnant_code: '1', pregnant: 'Yes' },
  { pregnant_code: '2', pregnant: 'No' },
  { pregnant_code: '96', pregnant: 'Not Applicable' },
  { pregnant_code: '97', pregnant: 'Unknown' },
  { pregnant_code: '98', pregnant: 'Not Collected' }
])

ListLookups::ListCriminalJusticeReferral.create([
  { criminal_justice_referral_code: '1', criminal_justice_referral: 'State/Federal Court' },
  { criminal_justice_referral_code: '2', criminal_justice_referral: 'Other Court' },
  { criminal_justice_referral_code: '3', criminal_justice_referral: 'Probation/Parole' },
  { criminal_justice_referral_code: '4', criminal_justice_referral: 'Other Recognized Legal Entity' },
  { criminal_justice_referral_code: '5', criminal_justice_referral: 'Diversionary Program' },
  { criminal_justice_referral_code: '6', criminal_justice_referral: 'Prison' },
  { criminal_justice_referral_code: '7', criminal_justice_referral: 'DUI/DWI' },
  { criminal_justice_referral_code: '8', criminal_justice_referral: 'Other' },
  { criminal_justice_referral_code: '96', criminal_justice_referral: 'Not Applicable' },
  { criminal_justice_referral_code: '97', criminal_justice_referral: 'Unknown' },
  { criminal_justice_referral_code: '98', criminal_justice_referral: 'Not Collected' }
])

ListLookups::ListPrimaryPaymentSource.create([
  { primary_payment_source_code: '1', primary_payment_source: 'Self-pay' },
  { primary_payment_source_code: '2', primary_payment_source: 'Medicare' },
  { primary_payment_source_code: '3', primary_payment_source: 'Medicaid' },
  { primary_payment_source_code: '4', primary_payment_source: 'Tricare' },
  { primary_payment_source_code: '5', primary_payment_source: 'Alliance/ICP' },
  { primary_payment_source_code: '6', primary_payment_source: 'Other government funding' },
  { primary_payment_source_code: '7', primary_payment_source: "Worker's compensation" },
  { primary_payment_source_code: '8', primary_payment_source: 'Private health insurance companies' },
  { primary_payment_source_code: '9', primary_payment_source: 'No charge (free, charity, special research or teaching)' },
  { primary_payment_source_code: '97', primary_payment_source: 'Unknown' },
  { primary_payment_source_code: '98', primary_payment_source: 'Not Collected' }
])

ListLookups::ListHealthInsurance.create([
  { health_insurance_code: '1', health_insurance: 'Private Insurance' },
  { health_insurance_code: '2', health_insurance: 'Medicare' },
  { health_insurance_code: '3', health_insurance: 'Medicaid' },
  { health_insurance_code: '4', health_insurance: 'Alliance or ICP' },
  { health_insurance_code: '5', health_insurance: 'Tricare' },
  { health_insurance_code: '6', health_insurance: 'Other' },
  { health_insurance_code: '7', health_insurance: 'None' },
  { health_insurance_code: '97', health_insurance: 'Unknown' },
  { health_insurance_code: '98', health_insurance: 'Not Collected' }
])

ListLookups::ListSelfHelpGroupAttendanceFrequency.create([
  { self_help_group_admission_code: '1', self_help_group_admission: 'No Attendance' },
  { self_help_group_admission_code: '2', self_help_group_admission: 'Less than once a week' },
  { self_help_group_admission_code: '3', self_help_group_admission: 'About once a week' },
  { self_help_group_admission_code: '4', self_help_group_admission: '2-3 times per week' },
  { self_help_group_admission_code: '5', self_help_group_admission: 'At least 4 times a week' },
  { self_help_group_admission_code: '6', self_help_group_admission: 'Some attendance' },
  { self_help_group_admission_code: '96', self_help_group_admission: 'Not Applicable' },
  { self_help_group_admission_code: '97', self_help_group_admission: 'Unknown' },
  { self_help_group_admission_code: '98', self_help_group_admission: 'Not Collected' }
])

ListLookups::ListSubstanceName.create([
  { substance_name_code: '1', substance_name: 'None',	detail_substance_name_code: '9996', detail_substance_name: 'Not Applicable' },
  { substance_name_code: '2', substance_name: 'Alcohol',	detail_substance_name_code: '201', detail_substance_name: 'Alcohol' },
  { substance_name_code: '3', substance_name: 'Cocaine/crack',	detail_substance_name_code: '301', detail_substance_name: 'Crack' },
  { substance_name_code: '3', substance_name: 'Cocaine/crack',	detail_substance_name_code: '302', detail_substance_name: 'Other cocaine' },
  { substance_name_code: '4', substance_name: 'Marijuana/hashish',	detail_substance_name_code: '401', detail_substance_name: 'Marijuana/hashish, THC, and any other cannabis sativa preparations' },
  { substance_name_code: '5', substance_name: 'Heroin',	detail_substance_name_code: '501', detail_substance_name: 'Heroin' },
  { substance_name_code: '6', substance_name: 'Non-prescription Methadone',	detail_substance_name_code: '601', detail_substance_name: 'Non-prescription Methadone' },
  { substance_name_code: '7', substance_name: 'Other opiates and synthetics',	detail_substance_name_code: '701', detail_substance_name: 'Codeine' },
  { substance_name_code: '7', substance_name: 'Other opiates and synthetics',	detail_substance_name_code: '702', detail_substance_name: 'Propoxyphene (Darvon)' },
  { substance_name_code: '7', substance_name: 'Other opiates and synthetics',	detail_substance_name_code: '703', detail_substance_name: 'Oxycodone (Oxycontin)' },
  { substance_name_code: '7', substance_name: 'Other opiates and synthetics',	detail_substance_name_code: '704', detail_substance_name: 'Meperidine (Demerol)' },
  { substance_name_code: '7', substance_name: 'Other opiates and synthetics',	detail_substance_name_code: '705', detail_substance_name: 'Hydromorphone (Dilaudid)' },
  { substance_name_code: '7', substance_name: 'Other opiates and synthetics',	detail_substance_name_code: '706', detail_substance_name: 'Butorphanol (Stadol), morphine (MS Contin), opium, and other narcotic analgesics, opiates, or synthetics' },
  { substance_name_code: '7', substance_name: 'Other opiates and synthetics',	detail_substance_name_code: '707', detail_substance_name: 'Pentazocine (Talwin)' },
  { substance_name_code: '7', substance_name: 'Other opiates and synthetics',	detail_substance_name_code: '708', detail_substance_name: 'Hydrocodone (Vicodin)' },
  { substance_name_code: '7', substance_name: 'Other opiates and synthetics',	detail_substance_name_code: '709', detail_substance_name: 'Tramadol (Ultram)' },
  { substance_name_code: '7', substance_name: 'Other opiates and synthetics',	detail_substance_name_code: '710', detail_substance_name: 'Buprenorphine (Subutex, Suboxone)' },
  { substance_name_code: '8', substance_name: 'PCP – Phencyclidine',	detail_substance_name_code: '801', detail_substance_name: 'PCP' },
  { substance_name_code: '9', substance_name: 'Hallucinogens',	detail_substance_name_code: '901', detail_substance_name: 'LSD' },
  { substance_name_code: '9', substance_name: 'Hallucinogens',	detail_substance_name_code: '902', detail_substance_name: 'DMT, mescaline, peyote, psilocybin, STP, and other hallucinogens' },
  { substance_name_code: '10', substance_name:	'Methamphetamine/Speed',	detail_substance_name_code: '1001', detail_substance_name: 'Methamphetamine/Speed' },
  { substance_name_code: '11', substance_name:	'Other amphetamines',	detail_substance_name_code: '1101', detail_substance_name: 'Amphetamine' },
  { substance_name_code: '11', substance_name:	'Other amphetamines',	detail_substance_name_code: '1103', detail_substance_name: 'Methylenedioxymethamphetamine (MDMA, Ecstasy)' },
  { substance_name_code: '11', substance_name:	'Other amphetamines',	detail_substance_name_code: '1109', detail_substance_name: 'Bath salts, phenmetrazine, and other amines and related drugs' },
  { substance_name_code: '12', substance_name:	'Other stimulants',	detail_substance_name_code: '1201', detail_substance_name: 'Other stimulants' },
  { substance_name_code: '12', substance_name:	'Other stimulants',	detail_substance_name_code: '1202', detail_substance_name: 'Methylphenidate (Ritalin)' },
  { substance_name_code: '13', substance_name:	'Benzodiazepines',	detail_substance_name_code: '1301', detail_substance_name: 'Alprazolam (Xanax)' },
  { substance_name_code: '13', substance_name:	'Benzodiazepines',	detail_substance_name_code: '1302', detail_substance_name: 'Chlordiazepoxide (Librium)' },
  { substance_name_code: '13', substance_name:	'Benzodiazepines',	detail_substance_name_code: '1303', detail_substance_name: 'Clorazepate (Tranxene)' },
  { substance_name_code: '13', substance_name:	'Benzodiazepines',	detail_substance_name_code: '1304', detail_substance_name: 'Diazepam (Valium)' },
  { substance_name_code: '13', substance_name:	'Benzodiazepines',	detail_substance_name_code: '1305', detail_substance_name: 'Flurazepam (Dalmane)' },
  { substance_name_code: '13', substance_name:	'Benzodiazepines',	detail_substance_name_code: '1306', detail_substance_name: 'Lorazepam (Ativan)' },
  { substance_name_code: '13', substance_name:	'Benzodiazepines',	detail_substance_name_code: '1307', detail_substance_name: 'Triazolam (Halcion)' },
  { substance_name_code: '13', substance_name:	'Benzodiazepines',	detail_substance_name_code: '1308', detail_substance_name: 'Halazepam, oxazepam (Serax), prazepam, temazepam (Restoril), and other benzodiazepines' },
  { substance_name_code: '13', substance_name:	'Benzodiazepines',	detail_substance_name_code: '1309', detail_substance_name: 'Flunitrazepam (Rohypnol)' },
  { substance_name_code: '13', substance_name:	'Benzodiazepines',	detail_substance_name_code: '1310', detail_substance_name: 'Clonazepam (Klonopin, Rivotril)' },
  { substance_name_code: '14', substance_name:	'Other tranquilizers',	detail_substance_name_code: '1401', detail_substance_name: 'Meprobamate (Miltown)' },
  { substance_name_code: '14', substance_name:	'Other tranquilizers',	detail_substance_name_code: '1403', detail_substance_name: 'Other non-benzodiazepine tranquilizers' },
  { substance_name_code: '15', substance_name:	'Barbiturates',	detail_substance_name_code: '1501', detail_substance_name: 'Phenobarbital' },
  { substance_name_code: '15', substance_name:	'Barbiturates',	detail_substance_name_code: '1502', detail_substance_name: 'Secobarbital/Amobarbital (Tuinal)' },
  { substance_name_code: '15', substance_name:	'Barbiturates',	detail_substance_name_code: '1503', detail_substance_name: 'Secobarbital (Seconal)' },
  { substance_name_code: '15', substance_name:	'Barbiturates',	detail_substance_name_code: '1509', detail_substance_name: 'Amobarbital, pentobarbital (Nembutal), and other barbiturate sedatives' },
  { substance_name_code: '16', substance_name:	'Other sedatives or hypnotics',	detail_substance_name_code: '1601', detail_substance_name: 'Ethchlorvynol (Placidyl)' },
  { substance_name_code: '16', substance_name:	'Other sedatives or hypnotics',	detail_substance_name_code: '1602', detail_substance_name: 'Glutethimide (Doriden)' },
  { substance_name_code: '16', substance_name:	'Other sedatives or hypnotics',	detail_substance_name_code: '1603', detail_substance_name: 'Methaqualone (Quaalude)' },
  { substance_name_code: '16', substance_name:	'Other sedatives or hypnotics',	detail_substance_name_code: '1604', detail_substance_name: 'Chloral hydrate and other non-barbiturate sedatives/hypnotics' },
  { substance_name_code: '17', substance_name:	'Inhalants',	detail_substance_name_code: '1701', detail_substance_name: 'Aerosols' },
  { substance_name_code: '17', substance_name:	'Inhalants',	detail_substance_name_code: '1702', detail_substance_name: 'Nitrites' },
  { substance_name_code: '17', substance_name:	'Inhalants',	detail_substance_name_code: '1703', detail_substance_name: 'Gasoline, glue, and other inappropriately inhaled products 1704 Solvents (paint thinner and other solvents)' },
  { substance_name_code: '17', substance_name:	'Inhalants',	detail_substance_name_code: '1705', detail_substance_name: 'Anesthetics (chloroform, ether, nitrous oxide, and other anesthetics)' },
  { substance_name_code: '18', substance_name:	'Over-the-counter medications',	detail_substance_name_code: '1801', detail_substance_name: 'Diphenhydramine' },
  { substance_name_code: '18', substance_name:	'Over-the-counter medications',	detail_substance_name_code: '1809', detail_substance_name: 'Other antihistamines, aspirin, Dextromethorphan (DXM) and other cough syrups, ephedrine, sleep aids, and any other legally obtained, non-prescription medication' },
  { substance_name_code: '20', substance_name:	'Other drugs',	detail_substance_name_code: '2001', detail_substance_name: 'Diphenylhydantoin/Phenytoin (Dilantin)' },
  { substance_name_code: '20', substance_name:	'Other drugs',	detail_substance_name_code: '2002', detail_substance_name: 'Synthetic Cannabinoid (Spice), Carisoprodol (Soma), and other drugs' },
  { substance_name_code: '20', substance_name:	'Other drugs',	detail_substance_name_code: '2003', detail_substance_name: 'GHB/GBL (gamma-hydroxybutyrate, gamma-butyrolactone) 2004 Ketamine (Special K)' },
  { substance_name_code: '96', substance_name:	'Not Applicable',	detail_substance_name_code: '9996', detail_substance_name: 'Not Applicable – Use when the value in Substance Use is 1 (None).' },
  { substance_name_code: '97', substance_name:	'Unknown',	detail_substance_name_code: '9997', detail_substance_name: 'Unknown – Individual client value is unknown.' },
  { substance_name_code: '98', substance_name:	'Not Collected',	detail_substance_name_code: '9998', detail_substance_name: 'Not Collected – Provider does not collect this field.' }
])

ListLookups::ListSubstanceUseFrequency.create([
  { primary_su_frequency_admission_code: '1', primary_su_frequency_admission: 'No Use In The Past Month' },
  { primary_su_frequency_admission_code: '2', primary_su_frequency_admission: '1-3 Days In Past Month' },
  { primary_su_frequency_admission_code: '3', primary_su_frequency_admission: '1-2 Days In Past Week' },
  { primary_su_frequency_admission_code: '4', primary_su_frequency_admission: '3-6 Days In Past Week' },
  { primary_su_frequency_admission_code: '5', primary_su_frequency_admission: 'Daily' },
  { primary_su_frequency_admission_code: '96', primary_su_frequency_admission: 'Not Applicable' },
  { primary_su_frequency_admission_code: '97', primary_su_frequency_admission: 'Unknown' },
  { primary_su_frequency_admission_code: '98', primary_su_frequency_admission: 'Not Collected' }
])

ListLookups::ListSubstanceUseRoute.create([
  { primary_su_route_code: '1', primary_su_route: 'Oral' },
  { primary_su_route_code: '2', primary_su_route: 'Smoking' },
  { primary_su_route_code: '3', primary_su_route: 'Inhalation' },
  { primary_su_route_code: '4', primary_su_route: 'Injection' },
  { primary_su_route_code: '20', primary_su_route: 'Other' },
  { primary_su_route_code: '96', primary_su_route: 'Not Applicable' },
  { primary_su_route_code: '97', primary_su_route: 'Unknown' },
  { primary_su_route_code: '98', primary_su_route: 'Not Collected' }
])

ListLookups::ListOpioidTherapyUse.create([
  { opioid_therapy_code: '1', opioid_therapy: 'Yes' },
  { opioid_therapy_code: '2', opioid_therapy: 'No' },
  { opioid_therapy_code: '96', opioid_therapy: 'Not Applicable' },
  { opioid_therapy_code: '97', opioid_therapy: 'Unknown' },
  { opioid_therapy_code: '98', opioid_therapy: 'Not Collected' }
])

# rubocop:enable Layout/FirstArrayElementIndentation, Layout/LineLength, Naming/VariableNumber

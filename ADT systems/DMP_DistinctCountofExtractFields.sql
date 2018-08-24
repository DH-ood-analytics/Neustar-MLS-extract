SELECT 'admissiondate' as field_name, count(distinct admissiondate) as field_value FROM application_mls.mls_neustar
UNION ALL
SELECT 'admissionfinaldate' as field_name, count(distinct admissionfinaldate) as field_value FROM application_mls.mls_neustar
UNION ALL
SELECT 'admissionmonth' as field_name, count(distinct admissionmonth) as field_value FROM application_mls.mls_neustar
UNION ALL
SELECT 'admissionyear' as field_name, count(distinct admissionyear) as field_value FROM application_mls.mls_neustar
UNION ALL
SELECT 'adtsystemname' as field_name, count(distinct adtsystemname) as field_value FROM application_mls.mls_neustar
UNION ALL
SELECT 'agefromadmission' as field_name, count(distinct agefromadmission) as field_value FROM application_mls.mls_neustar
UNION ALL
SELECT 'birthyear' as field_name, count(distinct birthyear) as field_value FROM application_mls.mls_neustar
UNION ALL
SELECT 'dateofbirth' as field_name, count(distinct dateofbirth) as field_value FROM application_mls.mls_neustar
UNION ALL
SELECT 'devicecategory' as field_name, count(distinct devicecategory) as field_value FROM application_mls.mls_neustar
UNION ALL
SELECT 'dischargedate' as field_name, count(distinct dischargedate) as field_value FROM application_mls.mls_neustar
UNION ALL
SELECT 'facilityname' as field_name, count(distinct facilityname) as field_value FROM application_mls.mls_neustar
UNION ALL
SELECT 'gender' as field_name, count(distinct gender) as field_value FROM application_mls.mls_neustar
UNION ALL
SELECT 'newtofacility' as field_name, count(distinct newtofacility) as field_value FROM application_mls.mls_neustar
UNION ALL
SELECT 'patientmaritalstatus' as field_name, count(distinct patientmaritalstatus) as field_value FROM application_mls.mls_neustar
UNION ALL
SELECT 'pregnant' as field_name, count(distinct pregnant) as field_value FROM application_mls.mls_neustar
UNION ALL
SELECT 'region' as field_name, count(distinct region) as field_value FROM application_mls.mls_neustar
UNION ALL
SELECT 'registrationdate' as field_name, count(distinct registrationdate) as field_value FROM application_mls.mls_neustar
UNION ALL
SELECT 'serviceareadesc' as field_name, count(distinct serviceareadesc) as field_value FROM application_mls.mls_neustar
UNION ALL
SELECT 'surgicalprocedure1' as field_name, count(distinct surgicalprocedure1) as field_value FROM application_mls.mls_neustar
UNION ALL
SELECT 'surgicalprocedure2' as field_name, count(distinct surgicalprocedure2) as field_value FROM application_mls.mls_neustar
UNION ALL
SELECT 'surgicalprocedure3' as field_name, count(distinct surgicalprocedure3) as field_value FROM application_mls.mls_neustar
UNION ALL
SELECT 'weekspregnant' as field_name, count(distinct weekspregnant) as field_value FROM application_mls.mls_neustar
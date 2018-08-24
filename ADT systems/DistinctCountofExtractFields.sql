SELECT 'load_date' as field_name, count(distinct load_date) as field_value FROM application_mls.mls_neustar
UNION ALL
SELECT 'firstname' as field_name, count(distinct firstname) as field_value FROM application_mls.mls_neustar
UNION ALL
SELECT 'lastname' as field_name, count(distinct lastname) as field_value FROM application_mls.mls_neustar
UNION ALL
SELECT 'gender' as field_name, count(distinct gender) as field_value FROM application_mls.mls_neustar
UNION ALL
SELECT 'dateofbirth' as field_name, count(distinct dateofbirth) as field_value FROM application_mls.mls_neustar
UNION ALL
SELECT 'adtsystemname' as field_name, count(distinct adtsystemname) as field_value FROM application_mls.mls_neustar 
UNION ALL
SELECT 'medicalrecordnumber' as field_name, count(distinct medicalrecordnumber) as field_value FROM application_mls.mls_neustar
UNION ALL
SELECT 'accountnumber' as field_name, count(distinct accountnumber) as field_value FROM application_mls.mls_neustar 
UNION ALL
SELECT 'facilitycode' as field_name, count(distinct facilitycode) as field_value FROM application_mls.mls_neustar
UNION ALL
SELECT 'facilityname' as field_name, count(distinct facilityname) as field_value FROM application_mls.mls_neustar 
UNION ALL
SELECT 'admissiondate' as field_name, count(distinct admissiondate) as field_value FROM application_mls.mls_neustar
UNION ALL
SELECT 'dischargedate' as field_name, count(distinct dischargedate) as field_value FROM application_mls.mls_neustar 
UNION ALL
SELECT 'financialclasscode' as field_name, count(distinct financialclasscode) as field_value FROM application_mls.mls_neustar 
UNION ALL
SELECT 'financialclassdescription' as field_name, count(distinct financialclassdescription) as field_value FROM application_mls.mls_neustar 
UNION ALL
SELECT 'patienttype' as field_name, count(distinct patienttype) as field_value FROM application_mls.mls_neustar 
UNION ALL
SELECT 'patienttypedesc' as field_name, count(distinct patienttypedesc) as field_value FROM application_mls.mls_neustar 
UNION ALL
SELECT 'servicelinecode' as field_name, count(distinct servicelinecode) as field_value FROM application_mls.mls_neustar 
UNION ALL
SELECT 'servicelinedesc' as field_name, count(distinct servicelinedesc) as field_value FROM application_mls.mls_neustar 
UNION ALL
SELECT 'serviceareacode' as field_name, count(distinct serviceareacode) as field_value FROM application_mls.mls_neustar 
UNION ALL
SELECT 'serviceareadesc' as field_name, count(distinct serviceareadesc) as field_value FROM application_mls.mls_neustar 
UNION ALL
SELECT 'middleinitial' as field_name, count(distinct middleinitial) as field_value FROM application_mls.mls_neustar 
UNION ALL
SELECT 'city' as field_name, count(distinct city) as field_value FROM application_mls.mls_neustar 
UNION ALL
SELECT 'state' as field_name, count(distinct state) as field_value FROM application_mls.mls_neustar 
UNION ALL
SELECT 'zip' as field_name, count(distinct zip) as field_value FROM application_mls.mls_neustar 
UNION ALL
SELECT 'email' as field_name, count(distinct email) as field_value FROM application_mls.mls_neustar 
UNION ALL
SELECT 'phone' as field_name, count(distinct phone) as field_value FROM application_mls.mls_neustar 
UNION ALL
SELECT 'primaryinsurancename' as field_name, count(distinct primaryinsurancename) as field_value FROM application_mls.mls_neustar 
UNION ALL
SELECT 'emailmarketingoptin' as field_name, count(distinct emailmarketingoptin) as field_value FROM application_mls.mls_neustar 
UNION ALL
SELECT 'region' as field_name, count(distinct region) as field_value FROM application_mls.mls_neustar 
UNION ALL
SELECT 'facility' as field_name, count(distinct facility) as field_value FROM application_mls.mls_neustar 
UNION ALL
SELECT 'addressline1' as field_name, count(distinct addressline1) as field_value FROM application_mls.mls_neustar 
UNION ALL
SELECT 'addressline2' as field_name, count(distinct addressline2) as field_value FROM application_mls.mls_neustar 
UNION ALL
SELECT 'patientmaritalstatus' as field_name, count(distinct patientmaritalstatus) as field_value FROM application_mls.mls_neustar 
UNION ALL
SELECT 'admissionfinaldate' as field_name, count(distinct admissionfinaldate) as field_value FROM application_mls.mls_neustar 
UNION ALL
SELECT 'primaryfinancialclass' as field_name, count(distinct primaryfinancialclass) as field_value FROM application_mls.mls_neustar 
UNION ALL
SELECT 'admissionyear' as field_name, count(distinct admissionyear) as field_value FROM application_mls.mls_neustar 
UNION ALL
SELECT 'admissionmonth' as field_name, count(distinct admissionmonth) as field_value FROM application_mls.mls_neustar 
UNION ALL
SELECT 'servicecode' as field_name, count(distinct servicecode) as field_value FROM application_mls.mls_neustar 
UNION ALL
SELECT 'agefromadmission' as field_name, count(distinct agefromadmission) as field_value FROM application_mls.mls_neustar 
UNION ALL
SELECT 'surgicalprocedure1' as field_name, count(distinct surgicalprocedure1) as field_value FROM application_mls.mls_neustar 
UNION ALL
SELECT 'surgicalprocedure2' as field_name, count(distinct surgicalprocedure2) as field_value FROM application_mls.mls_neustar 
UNION ALL
SELECT 'surgicalprocedure3' as field_name, count(distinct surgicalprocedure3) as field_value FROM application_mls.mls_neustar 
UNION ALL
SELECT 'drgcategory' as field_name, count(distinct drgcategory) as field_value FROM application_mls.mls_neustar 
UNION ALL
SELECT 'birthyear' as field_name, count(distinct birthyear) as field_value FROM application_mls.mls_neustar 
UNION ALL
SELECT 'firstproceduredate' as field_name, count(distinct firstproceduredate) as field_value FROM application_mls.mls_neustar 
UNION ALL
SELECT 'lastservicedate' as field_name, count(distinct lastservicedate) as field_value FROM application_mls.mls_neustar 
UNION ALL
SELECT 'doctornumber' as field_name, count(distinct doctornumber) as field_value FROM application_mls.mls_neustar 
UNION ALL
SELECT 'hospitalservicecode' as field_name, count(distinct hospitalservicecode) as field_value FROM application_mls.mls_neustar 
UNION ALL
SELECT 'timewaited' as field_name, count(distinct timewaited) as field_value FROM application_mls.mls_neustar 
UNION ALL
SELECT 'facilityrating' as field_name, count(distinct facilityrating) as field_value FROM application_mls.mls_neustar 
UNION ALL
SELECT 'inquickerrating' as field_name, count(distinct inquickerrating) as field_value FROM application_mls.mls_neustar 
UNION ALL
SELECT 'devicecategory' as field_name, count(distinct devicecategory) as field_value FROM application_mls.mls_neustar 
UNION ALL
SELECT 'location' as field_name, count(distinct location) as field_value FROM application_mls.mls_neustar 
UNION ALL
SELECT 'registrationdate' as field_name, count(distinct registrationdate) as field_value FROM application_mls.mls_neustar 
UNION ALL
SELECT 'treatmentdate' as field_name, count(distinct treatmentdate) as field_value FROM application_mls.mls_neustar 
UNION ALL
SELECT 'referralcode' as field_name, count(distinct referralcode) as field_value FROM application_mls.mls_neustar 
UNION ALL
SELECT 'pregnant' as field_name, count(distinct pregnant) as field_value FROM application_mls.mls_neustar 
UNION ALL
SELECT 'weekspregnant' as field_name, count(distinct weekspregnant) as field_value FROM application_mls.mls_neustar 
UNION ALL
SELECT 'caregiver' as field_name, count(distinct caregiver) as field_value FROM application_mls.mls_neustar 
UNION ALL
SELECT 'newtofacility' as field_name, count(distinct newtofacility) as field_value FROM application_mls.mls_neustar 
UNION ALL
SELECT 'medium' as field_name, count(distinct medium) as field_value FROM application_mls.mls_neustar 
UNION ALL
SELECT 'source' as field_name, count(distinct source) as field_value FROM application_mls.mls_neustar 
UNION ALL
SELECT 'campaign' as field_name, count(distinct campaign) as field_value FROM application_mls.mls_neustar 
UNION ALL
SELECT 'referringurl' as field_name, count(distinct referringurl) as field_value FROM application_mls.mls_neustar 
UNION ALL
SELECT 'primarycarephysician' as field_name, count(distinct primarycarephysician) as field_value FROM application_mls.mls_neustar 
UNION ALL
SELECT 'remoteuid' as field_name, count(distinct remoteuid) as field_value FROM application_mls.mls_neustar 
UNION ALL
SELECT 'clientid' as field_name, count(distinct clientid) as field_value FROM application_mls.mls_neustar 
UNION ALL
SELECT 'dhomeid' as field_name, count(distinct dhomeid) as field_value FROM application_mls.mls_neustar 


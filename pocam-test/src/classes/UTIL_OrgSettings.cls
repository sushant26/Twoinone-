/**
	About
	-----
	Description: Org wide settings to be used by all code in the organisation.
	Created for: Postnord Get2OneCRM Master/DK
	Create date: March 2013
	
	Details / Methods
	-----------------
	Any org wide config settings made in the custom settings.
	DO NOT include apex development, integration, or disable trigger settings - there are custom settings dedicated for those.
   
	Update History
	--------------
	Created March 2013 - M.Evans
	
	Issues / TODOs
	--------------
*/
public with sharing class UTIL_OrgSettings 
{	
    
	public static List<String> requiredContactPositions()
	{
		List<String> positions = new List<String>();
	    Map<String,ContactPositions__c> positionObjs = ContactPositions__c.getAll();
	    for(String key : positionObjs.keySet())
	    {
	    	if(positionObjs.get(key).Required__c == true) {
	    		positions.add(positionObjs.get(key).Name);
	    	}
	    }
	    return positions;
	}

    /**** Get2OneCRM Custom Settings ****/
	public static Set<String> newCustomerMODFlowRecordTypes()
    {	
    	List<String> rTypeDeveloperNames = (((String)customSettings('New_Customer_MOD_Flow_Record_Types__c','')).replace(' ','')).split(',');
		return UTIL_Apex.toSet(rTypeDeveloperNames);
    }
    
    public static Set<String> NewCustomerMainFlowRecordTypes()
    {	
    	List<String> rTypeDeveloperNames = (((String)customSettings('New_Customer_Main_Flow_Record_Types__c','')).replace(' ','')).split(',');
		return UTIL_Apex.toSet(rTypeDeveloperNames);
    }
    
    public static Set<String> NewContactMainFlowRecordTypes()
    {	
    	List<String> rTypeDeveloperNames = (((String)customSettings('New_Contact_Main_Flow_Record_Types__c','')).replace(' ','')).split(',');
		return UTIL_Apex.toSet(rTypeDeveloperNames);
    }    

    public static String lead_Receiver_Account_Team_Role()
    {
		String leadReceiverAccountTeamRole = (String)customSettings('Lead_Receiver_Account_Team_Role__c','');
		return leadReceiverAccountTeamRole;
    }
    
    public static String lead_Allocated_to_Sales()
    {
		String leadAllocatedtoSales = (String)customSettings('Lead_Allocated_to_Sales__c','');
		return leadAllocatedtoSales;
    }
    
    public static String NTT_locale_values()
    {
		String nttLocaleValues = (String)customSettings('NTT_locale_values__c','');
		return nttLocaleValues;
    }
    
    public static String integration_Profile_Name()
    {
		String integrationProfileName = (String)customSettings('Integration_Profile_Name__c','');
		return integrationProfileName;
    }
    
    public static String integration_CRM_Webservices_Profile_Name()
    {
		String integrationProfileName = (String)customSettings('Integration_CRM_Webservices_Profile_Name__c','');
		return integrationProfileName;
    }
   	
    public static String administrator_Profile_Name()
    {
		String administratorProfileName = (String)customSettings('Administrator_Profile_Name__c','');
		return administratorProfileName;
    }
    
    public static String webshop_B2B_Name()
    {
		String B2BName = (String)customSettings('Webshop_B2B_Name__c','');
		return B2BName;
    }
    
    public static String webshop_B2C_Name()
    {
		String B2CName = (String)customSettings('Webshop_B2C_Name__c','');
		return B2CName;
    }
    
    public static String webshop_Origin()
    {
		String ExternalSourceName = (String)customSettings('Webshop_Origin__c','');
		return ExternalSourceName;
    }
    
    public static String outboundNotification_Delete()
    {
		String outboundNotificationDelete = (String)customSettings('Outbound_Notification_Operation_Delete__c','');
		return outboundNotificationDelete;
    }
    
    public static String contactName_StructuredCommunication()
    {
		String ContactName = (String)customSettings('ContactName_StructuredCommunication__c','');
		return ContactName;
    }
    
    public static Set<String> taskActivityCompletedDateTypes()
    {
		List<String> TaskTypes  = ((String)customSettings('taskActivityCompletedDateTypes__c','')).split(',');
		return UTIL_Apex.toSet(TaskTypes);
    }
    
    public static Set<String> taskActivityDateTypes()
    {
		List<String> TaskTypes = ((String)customSettings('taskActivityDateTypes__c','')).split(',');
		return UTIL_Apex.toSet(TaskTypes);
    }
    
    public static Set<String> taskNextCallListDateTypes()
    {
		List<String> TaskTypes = ((String)customSettings('taskNextCallListDateTypes__c','')).split(',');
		return UTIL_Apex.toSet(TaskTypes);
    }
    
    public static Set<String> taskNotReachedCounterTypes()
    {
		List<String> TaskTypes = ((String)customSettings('taskNotReachedCounterTypes__c','')).split(',');
		return UTIL_Apex.toSet(TaskTypes);
    }
    
    public static String ConvertPotentialStatus()
    {
		String ConvertPotentialStatus = (String)customSettings('ConvertPotential_Status__c','');
		return ConvertPotentialStatus;
    }
    
    public static String ConvertPotentialName()
    {
		String ConvertPotentialName = (String)customSettings('ConvertPotential_Name__c','');
		return ConvertPotentialName;
    }
    
    public static Integer ConvertPotentialCloseDate()
    {
		Integer ConvertPotentialCloseDate = Integer.valueOf((Decimal)customSettings('ConvertPotential_CloseDate__c'));
		return ConvertPotentialCloseDate;
    }
    
    public static String ConvertPotentialStageName()
    {
		String ConvertPotentialStageName = (String)customSettings('ConvertPotential_StageName__c','');
		return ConvertPotentialStageName;
    }
    
    
    /**** Scheduled Parameter Custom Settings ****/
    
    public static String duplicateReason_MODIntressentNr()
    {
		String DuplicateReason = (String)scheduledParameter('Duplicate_reason_MOD_Intressent_Nr__c','');
		return DuplicateReason;
    }
    
    public static String duplicateReason_ModtagerNr()
    {
		String DuplicateReason = (String)scheduledParameter('Duplicate_reason_MOD_Modtager_Nr__c','');
		return DuplicateReason;
    }
    
    public static String duplicateReason_PAR()
    {
		String DuplicateReason = (String)scheduledParameter('Duplicate_reason_PAR__c','');
		return DuplicateReason;
    }
    
    public static String duplicateReason_BATCH()
    {
		String DuplicateReason = (String)scheduledParameter('Duplicate_reason_Batch__c','');
		return DuplicateReason;
    }
    
    public static String nextRunAccountDuplicateCheck()
    {
		String NextRunAccountDuplicateCheck = (String)scheduledParameter('NextRunAccountDuplicateCheck__c','');
		return NextRunAccountDuplicateCheck;
    }
    
    public static Set<String> eventActivityCompletedDateTypes()
    {
		List<String> EventTypes  = ((String)customSettings('eventActivityCompletedDateTypes__c','')).split(',');
		return UTIL_Apex.toSet(EventTypes);
    }
    
    public static String accountBatchHeapLimit()
    {
		String HeapLimit = (String)scheduledParameter('AccountBatchHeapLimit__c','');
		system.debug(Logginglevel.INFO,'++HeapLimit++'+HeapLimit);
		return HeapLimit;
    }
    
	public static String accountBatchDmlRowsLimit()
    {
		String DmlRowsLimit = (String)scheduledParameter('AccountBatchDmlRowsLimit__c','');
		system.debug(Logginglevel.INFO,'++DmlRowsLimit++'+DmlRowsLimit);
		return DmlRowsLimit;
    }
    
    public static String accountBatchJobInterval()
    {
		String BatchJobInterval = ((String)scheduledParameter('AccountBatchJobInterval__c',''));
		return BatchJobInterval;
    }
    
    public static String accountBatchJobSize()
    {
		String BatchJobSize = (String)scheduledParameter('AccountBatchJobSize__c','');
		return BatchJobSize;
    }
    
    public static DateTime AccountTeamMemberSyncSuccessTime()
    {
		DateTime AccountTeamMemberSyncSuccessTime = (DateTime)scheduledParameter('AccountTeamMemberSyncSuccessTime__c','');
		return AccountTeamMemberSyncSuccessTime;
    }
	
	public static string DeletionJobId(){	
		String deletionJobId = (String)scheduledParameter('deletionJobId__c','') ;
		return deletionJobId;		
	}
	
	public static string AccountTeamMemberSyncJobId(){
		String AccountTeamMemberSyncJobId = (String)scheduledParameter('AccountTeamMemberSyncJobId__c','') ;
		return AccountTeamMemberSyncJobId;		
	}
		
    public static boolean ApexCalloutLogDeletion()
    {
		boolean apexCalloutLogDeletion = Boolean.valueOf(scheduledParameter('apexCalloutLogDeletionActive__c',''));
		return apexCalloutLogDeletion;
    }
    
    public static String ApexCalloutLogGraceperiod()
    {
		String apexCalloutLogGraceperiod = (String)scheduledParameter('apexCalloutLogGraceperiod__c','');
		return apexCalloutLogGraceperiod;
    }
    
    public static boolean ApexErrorLogDeletion()
    {
		boolean apexErrorLogDeletion = Boolean.valueOf(scheduledParameter('apexErrorLogDeletionActive__c',''));
		return apexErrorLogDeletion;
    }

    public static String ApexErrorLogGraceperiod()
    {
		String apexErrorLogGraceperiod = (String)scheduledParameter('apexErrorLogGraceperiod__c','');
		return apexErrorLogGraceperiod;
    }

    public static boolean OutboundNotificationDeletion()
    {
		boolean apexErrorLogDeletion = Boolean.valueOf(scheduledParameter('outboundNotificationDeletionActive__c',''));
		return apexErrorLogDeletion;
    }

    public static String OutboundNotificationGraceperiod()
    {
		String apexErrorLogGraceperiod = (String)scheduledParameter('outboundNotificationGraceperiod__c','');
		return apexErrorLogGraceperiod;
    }
                                
    public static String swedishSalesAreas()
    {
		String SwedishSalesAreas = (String)customSettings('Swedish_Sales_Areas__c','');
		return SwedishSalesAreas;
    }
    
    public static String workSiteTypeHQ()
    {
		String WorkSiteTypeHQ = (String)customSettings('Work_Site_Type_HQ__c','');
		return WorkSiteTypeHQ;
    }
    
    public static String leadStatus()
    {
		String LeadStatus = (String)customSettings('Lead_Status__c','');
		return LeadStatus;
    }
    
    public static String leadSalesAreaSAPcodes()
    {
		String LeadSalesAreaSAPcodes = (String)customSettings('Lead_Sales_Area_SAP_codes__c','');
		return LeadSalesAreaSAPcodes;
    }
    
    public static Boolean disableAccountDuplicateCheck()
    {
		Boolean disableAccountDuplicateCheck = Boolean.valueOf(scheduledParameter('DisableAccountDuplicateCheck__c',''));
		return disableAccountDuplicateCheck;
    }
    
    public static String CaseRecordTypes()
    {
		String CaseRecordTypes = (String)customSettings('Case_RecordTypes__c','');
		return CaseRecordTypes;
    }
    
    public static String NTTSearchRecordTypes()
    {
		String NTTSearchRecordTypes = (String)customSettings('NTT_Search_RecordTypes__c','');
		return NTTSearchRecordTypes;
    }
    
    public static String SalesUserProfileName()
    {
		String SalesUserProfileName = (String)customSettings('Sales_User_Profile_Name__c','');
		return SalesUserProfileName;
    }
    
    public static String ContactPersonTypefromPAR()
    {
		String ContactPersonTypefromPAR = (String)customSettings('Contact_Person_Type_from_PAR__c','');
		return ContactPersonTypefromPAR;
    }
    
    public static String ContactPersonTypefromLeadConvert()
    {
		String ContactPersonTypefromLeadConvert = (String)customSettings('Contact_Person_Type_from_LeadConvert__c','');
		return ContactPersonTypefromLeadConvert;
    }
    
    public static String NewCustomerMODFlowRegCountry()
    {
		String NewCustomerMODFlowRegCountry = (String)customSettings('New_Customer_MOD_Flow_Reg_Country__c','');
		return NewCustomerMODFlowRegCountry;
    }
    
    public static String NewCustomerMODFlowWSType()
    {
		String NewCustomerMODFlowWSType = (String)customSettings('New_Customer_MOD_Flow_WS_Type__c','');
		return NewCustomerMODFlowWSType;
    }
    
    public static String OBMStressDashboardCaptcha()
    {
    	String OBMStressDashboardCaptcha = (String)customSettings('OBM_Stress_Dashboard_Captcha__c','');
    	return OBMStressDashboardCaptcha;
    }
    
    /**** CustomerServiceProductMapping__c Custom Settings ****/
    public static List<CustomerServiceProductMapping__c> customerServiceProductMapping(){
    	
    	List<CustomerServiceProductMapping__c> cSProdMappingLst= CustomerServiceProductMapping__c.getall().values();
    	return cSProdMappingLst;
    }
    
    
    /**** SAPGetPrices__c Custom Settings ****/
    public static Map<String,SAPGetPrices__c> SAPGetPrices(){
    	
    	Map<String,SAPGetPrices__c> sapGetPricesMap= SAPGetPrices__c.getall();
    	return sapGetPricesMap;
    }
    
    
    /**** GenericURLHacking__c Custom Settings ****/
    public static List<GenericURLHacking__c> genericURLHacking(){
    	
    	List<GenericURLHacking__c> cSGenericURLHackingLst= GenericURLHacking__c.getall().values();
    	return cSGenericURLHackingLst;
    }
    public static Map<String, GenericURLHacking__c> GenericURLHacking(String objectAPIName){
		// Get the GenericURL map for a speciffic object
        Map<String, GenericURLHacking__c> urlParameterMap = new Map<String, GenericURLHacking__c>();
		for(GenericURLHacking__c hack: UTIL_OrgSettings.GenericURLHacking()){
            if(hack.Feature_Name__c == objectAPIName){
                urlParameterMap.put(hack.Name,hack);
            }
        }
        return urlParameterMap;
    }
    
    
    /**** SalesAreaToSegmentMapping__c Custom Settings ****/
    public static List<SalesAreaToSegmentMapping__c> salesAreaToSegmentMapping(){
    	
    	List<SalesAreaToSegmentMapping__c> SalesAreaToSegmentLst= SalesAreaToSegmentMapping__c.getall().values();
    	return SalesAreaToSegmentLst;
    }
    
    
	/**** SalesAreaToFieldMapping__c Custom Settings ****/
    public static Map<String,SalesAreaToFieldMapping__c> salesAreaToFieldMapping(){
    	
    	Map<String,SalesAreaToFieldMapping__c> SalesAreaToFieldMap= SalesAreaToFieldMapping__c.getall();
    	return SalesAreaToFieldMap;
    }
    
    /**** SalesAreaPricebookMapping__c Custom Settings ****/
    public static Map<String,SalesAreaPricebookMapping__c> salesAreaPricebookMapping(){
    	
    	Map<String,SalesAreaPricebookMapping__c> salesAreaPricebookMap = SalesAreaPricebookMapping__c.getall();
    	return salesAreaPricebookMap;
    }
    
    
	/**** Lead Sales Area ****/
    public static String getSalesAreaTextValue(String sapCode){
    	
    	Map<String, Lead_Sales_Area__c> leadSalesAreaMap = Lead_Sales_Area__c.getall();
    	
    	if(leadSalesAreaMap.get(sapCode) != null) {
    		return leadSalesAreaMap.get(sapCode).Text_value__c;
    	}
    	else {
    		return '';
    	}
    }
       
    /**** Get custom settings from Get2OneCRM__c object ****/
    static Object customSettings(String field, Object defaultValue)
    {
        Object value = customSettings(field);
        return value == null ? defaultValue : value;
    }
    static Object customSettings(String field)
    {
        Object value = Get2OneCRM__c.getOrgDefaults().get(field);
        return value;
    }
    
    /**** Get custom settings from CINT_SOAP_Integration_Settings__c object ****/
    static Object cintSoapIntegrationSettings(String field)
    {
        Object value = CINT_SOAP_Integration_Settings__c.getOrgDefaults().get(field);
        return value;
    }
    
    public static String CINTCustomErrorCode()
    {
		String CINTCustomErrorCode = (String)cintSoapIntegrationSettings('CINT_Custom_Error_Code__c');
		return CINTCustomErrorCode;
    }
    public static String CINTCustomErrorDescription()
    {
		String CINTCustomErrorDescription = (String)cintSoapIntegrationSettings('CINT_Custom_Error_Description__c');
		return CINTCustomErrorDescription;
    }
    public static String SOAPErrorDescription()
    {
		String SAOPErrorDescription = (String)cintSoapIntegrationSettings('SOAP_Error_Description__c');
		return SAOPErrorDescription;
    }
    public static String SOAPErrorCode()
    {
		String SOAPErrorCode = (String)cintSoapIntegrationSettings('SOAP_Error_Code__c');
		return SOAPErrorCode;
    }
    
    /**** Get custom setting from ScheduledJobParameters__c object****/
    static Object scheduledParameter(String field, Object defaultValue)
    {
        Object value = scheduledParameter(field);
        return value == null ? defaultValue : value;
    }
    static Object scheduledParameter(String field)
    {
        Object value = ScheduledJobParameters__c.getOrgDefaults().get(field);
        return value;
    }
    
    /**** AccountTeamMemberToAccountMapping__c Custom Settings ****/
    public static Map<String,AccountTeamMemberToAccountMapping__c> AccountTeamMemberToAccountMapping(){

    	Map<String,AccountTeamMemberToAccountMapping__c> atm2AccMapping = AccountTeamMemberToAccountMapping__c.getall();    	
    	return atm2AccMapping;
    }
    
        /**** AccountTeamMemberToAccountMapping__c Custom Settings ****/
    public static map<String, AccountTeamMemberRolesToSync__c> AccountTeamMemberRolesToSync(){

    	map<String, AccountTeamMemberRolesToSync__c> atmRolesToSyncMap = AccountTeamMemberRolesToSync__c.getall();    	
    	return atmRolesToSyncMap;
    }

        /**** AccountTeamMemberBatchErrorList__c Custom Settings ****/
    public static map<String, AccountTeamMemberBatchErrorList__c> AccountTeamMemberBatchErrorList(){

    	map<String, AccountTeamMemberBatchErrorList__c> atmBatchErrorMap = AccountTeamMemberBatchErrorList__c.getall();    	
    	return atmBatchErrorMap;
    }   
    
    /**DisableAutomation__c Custom Settings ****/
    public static Boolean isTriggersDisabled(){
    	
    	Boolean disableAllTriggers = DisableAutomation__c.getInstance().Disable_All_Triggers__c;
    	return disableAllTriggers;
    }
    
    public static Boolean isNonOBMWorkflowsDisabled(){
    	
    	Boolean disableAllNonOBMWorkflows = DisableAutomation__c.getInstance().Disable_All_Non_OBM_Workflows__c;
    	return disableAllNonOBMWorkflows;
    }
    
	public static Boolean isOBMWorkflowsDisabled(){
    	
    	Boolean disableAllOBMWorkflows = DisableAutomation__c.getInstance().Disable_All_OBM_Workflows__c;
    	return disableAllOBMWorkflows;
    }      
	
	public static Boolean isAccountTeamMemberSyncJobDisabled(){    	
    	return DisableAutomation__c.getInstance().Suppress_AccountTeamMemberSync_Job__c;
    }  	
    
    public static Boolean isDeletionJobDisabled(){    	
    	return DisableAutomation__c.getInstance().Suppress_Deletion_Job__c;
    }  
}

DATA WORK.PartD_Prescriber_PUF_NPI_Drug_13;
	LENGTH
		npi								$ 10
		nppes_provider_last_org_name	$ 70
		nppes_provider_first_name		$ 20
		nppes_provider_city				$ 40
		nppes_provider_state			$  2
		specialty_description			$ 91
		description_flag				$  1
		drug_name		 		 		$ 30
		generic_name					$ 30
		bene_count						   8
		total_claim_count				   8
		total_day_supply				   8
		total_drug_cost					   8
		bene_count_ge65					   8
		bene_count_ge65_redact_flag		$  1
		total_claim_count_ge65			   8
		ge65_redact_flag				$  1
		total_day_supply_ge65			   8
		total_drug_cost_ge65			   8
	;

	INFILE 'c:\My documents\PartD_Prescriber_PUF_NPI_Drug_13.txt'
		dlm='09'x
		pad missover
		firstobs = 2
		dsd;

	INPUT
		npi							
		nppes_provider_last_org_name	
		nppes_provider_first_name	
		nppes_provider_city			
		nppes_provider_state		
		specialty_description		
		description_flag			
		drug_name		 		 	
		generic_name				
		bene_count					
		total_claim_count			
		total_day_supply			
		total_drug_cost				
		bene_count_ge65				
		bene_count_ge65_redact_flag	
		total_claim_count_ge65		
		ge65_redact_flag			
		total_day_supply_ge65		
		total_drug_cost_ge65		
	;	

	LABEL
		npi								= "National Provider Identifier"
		nppes_provider_last_org_name	= "Last Name/Organization Name"
		nppes_provider_first_name		= "First Name"
		nppes_provider_city				= "City"
		nppes_provider_state			= "State Code"
		specialty_description			= "Provider Specialty Type"
		description_flag				= "Source of Provider Specialty"
		drug_name		 		 		= "The name of the drug filled. This includes both brand names (for drugs that have patent protection) and generic names (for drugs that no longer have patent protection)."
		generic_name					= "A term referring to the chemical makeup of a drug rather than to the advertised brand name under which the drug is sold."
		bene_count						= "Number of Medicare Beneficiaries"
		total_claim_count 				= "Number of Medicare Part D claims, including refills."
		total_drug_cost 				= "Aggregate cost paid for all claims."
		total_day_supply 				= "Number of days supply for all claims."
		bene_count_ge65					= "Number of Medicare Beneficiaries, aged 65 or older"
		bene_count_ge65_redact_flag		= "Flag detailing reason for redaction of bene_count_ge65 field"
		total_claim_count_ge65			= "Number of claims, including refills, where the beneficiary was 65 or older."
		ge65_flag						= "Flag detailing reason for redaction of total_claim_count_ge65 field"
		total_drug_cost_ge65			= "Aggregate cost paid for all claims, where the beneficiary was 65 or older."
		total_day_supply_ge65			= "Number of days supply for all claims, where the beneficiary was 65 or older."
	;

RUN;

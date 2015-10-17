/*

 Description : Implementing functional programming, Ansi-style
 ============================================================================
 */

#include <stdio.h>
#include <stdlib.h>
#include <string.h>

// Global variables
double companyResults[];

//Function prototypes
void readData(void);
void validateData(void);
void processData(void);
void analyzeResults(void);
void generateReport(void);
void writeFormattedReport(void);
void archiveData(void);
void disseminateResults(void);

int main(void) {

	readData();
	validateData();
	processData();
	analyzeResults();
	generateReport();
	writeFormattedReport();
	archiveData();
	disseminateResults();

	return EXIT_SUCCESS;
}

//---- FUNCTION DEFINITIONS ----

	void readData(void){
		//This function reads data from file into an array (for example)
		FILE *fp;
		int numRecords = 20;  // assume there are 20 records to read
		fp = fopen(fp,"companyData.txt", "r"); //this is a dummy text file
		for(int i=0; i<numRecords; i++){
			fscanf(fp, "%g", &companyResults[i]);
		}
		fclose(fp);
	}

	void validateData(void){
		//Enter function code here

		/*
		 * For example check:
		 * - are the numbers within a plausible range?
		 * - is the data size consistent with what would have been collected
		 *   over this specific period of time?
		 * - are there any struct fields, array elements, etc. that are empty?
		 * - do all data files have content?
		 * - are all files readable?
		 *
		 * etc.
		 */
	}

	void processData(void){
		//Enter function code here

		/*
		 * - identify necessary formulas, formats, and standards
		 *
		 */
	}
	void analyzeResults(void){
		//Enter function code here

		/*
		 * - produce graphs, tables, lists, as needed
		 * - perform statistical analysis as needed
		 * - identify outliers or any "out of the ordinary" results
		 */
	}

	void generateReport(void){
		//Enter function code here

		/*
		 * - create formatted out according to the project or
		 *   policy requirements
		 */
	}

	void writeFormattedReport(void){
		//Enter function code here

		/*
		 * - create formatted out according to the project or
		 *   policy requirements
		 */
	}

	void archiveData(void){
		//Enter function code here

		/*
		 * - make copies of data, results, and reports
		 */
	}

	void disseminateResults(void){
		//Enter function code here

		/*
		 * - store results and reports at appropriate locations
		 * - generate communication updates
		 */
	}


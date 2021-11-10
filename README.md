# Secret_Manager_policies


**Terraform version**
Terraform v1.0.7

**sentinel versions**
Sentinel v0.18.4

What is sentinel :
------------------
One of the most important features of Terraform Cloud (TFC) and Terraform Enterprise (TFE) (the self-hosted implementation of Terraform Cloud) is Sentinel, which lets you implement governance policies as code. Sentinel policies are checked between the plan and apply stages of runs in TFC and TFE.

**Purpose** : the purpose of this policy is checking weather location is "US" or other location

input files :
--------------
1.mock-tfplan-v2.sentinel
2.mock-tfstate-v2.sentinel
3.mock-tfconfig-v2.sentinel
4.mock-tfrun.sentinel
5.sentinel.hcl

modules to import:
------------------
import "tfplan-functions"
import "strings"
import "types"


Steps to follow :
-----------------
1.Read the customer requirments.
2..Generate the mocks using terraform code.
3.write the policy based on resourses section in mock-tfplan-v2.sentinel file.
4.run the test file using the command "sentinel apply -trace policy_name"
5.maintain the test folder with test cases files like   "pass.hcl","fail.hcl","null.hcl"
6.run the test cases using the command "sentinel test policy_name"
7.make the test cases should be pass







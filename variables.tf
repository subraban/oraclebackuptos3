variable "file1" {
  type        = string
  description = "The id of the machine image (AMI) to use for the server."
  default = "DB2_20230621210001.trn"
}
variable "file2" {
  type        = string
  description = "The id of the machine image (AMI) to use for the server."
  default = "DB2_20230621211500.trn"
}
variable "file3" {
  type        = string
  description = "The id of the machine image (AMI) to use for the server."
  default = "HR_20230606061120.trn"
}
variable "file4" {
  type        = string
  description = "The id of the machine image (AMI) to use for the server."
  default = "HR_20230606061500.trn"
}

variable "files" {
  type = map(string)
  default = {
    # sourcefile = destfile
    "G:/LSCopy/HR_20230606061500.trn" = "somefolder/HR_20230606061500.trn",
    "G:/LSCopy/HR_20230606061120.trn"  = "somefolder/HR_20230606061120.trn"
  }
}

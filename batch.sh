#!/bin/bash

awk '$1 >= 9000000 && $1 <= 12600000' /home/tiratatp/Repositories/snia_traces/T1/LiveMapsBackEnd/Combined/disk1_filtered.txt > /home/tiratatp/Repositories/snia_traces/T1/LiveMapsBackEnd/Combined/disk1_filtered_1hrs.txt
awk '$1 >= 50400000 && $1 <= 54000000' /home/tiratatp/Repositories/snia_traces/T2/DisplayAdsDataServer/Combined/disk0.txt > /home/tiratatp/Repositories/snia_traces/T2/DisplayAdsDataServer/Combined/disk0_1hrs.txt
awk '$1 >= 51300000 && $1 <= 54900000' /home/tiratatp/Repositories/snia_traces/T3/DisplayAdsPayload/Combined/disk0.txt > /home/tiratatp/Repositories/snia_traces/T3/DisplayAdsPayload/Combined/disk0_1hrs.txt
awk '$1 >= 70200000 && $1 <= 73800000' /home/tiratatp/Repositories/snia_traces/T4/Exchange-Server-Traces/Combined/disk8.txt > /home/tiratatp/Repositories/snia_traces/T4/Exchange-Server-Traces/Combined/disk8_1hrs.txt
awk '$1 >= 0 && $1 <= 3600000' /home/tiratatp/Repositories/snia_traces/T5/MSNStorageCFS/Combined/disk6_filtered.txt > /home/tiratatp/Repositories/snia_traces/T5/MSNStorageCFS/Combined/disk6_filtered_1hrs.txt
awk '$1 >= 0 && $1 <= 3600000' /home/tiratatp/Repositories/snia_traces/T6/MSNStorageFileServer/Combined/disk5_filtered.txt > /home/tiratatp/Repositories/snia_traces/T6/MSNStorageFileServer/Combined/disk5_filtered_1hrs.txt
awk '$1 >= 9900000 && $1 <= 13500000' /home/tiratatp/Repositories/snia_traces/T7/BuildServer/Combined/disk0_filtered.txt > /home/tiratatp/Repositories/snia_traces/T7/BuildServer/Combined/disk0_filtered_1hrs.txt
awk '$1 >= 23400000 && $1 <= 27000000' /home/tiratatp/Repositories/snia_traces/T8/DevelopmentToolsRelease/Combined/disk6_filtered.txt > /home/tiratatp/Repositories/snia_traces/T8/DevelopmentToolsRelease/Combined/disk6_filtered_1hrs.txt
awk '$1 >= 123300000 && $1 <= 126900000' /home/tiratatp/Repositories/snia_traces/T9/RadiusAuthentication/Combined/disk0_filtered.txt > /home/tiratatp/Repositories/snia_traces/T9/RadiusAuthentication/Combined/disk0_filtered_1hrs.txt
awk '$1 >= 63900000 && $1 <= 67500000' /home/tiratatp/Repositories/snia_traces/T10/RadiusBackEndSQLServer/Combined/disk4_filtered.txt > /home/tiratatp/Repositories/snia_traces/T10/RadiusBackEndSQLServer/Combined/disk4_filtered_1hrs.txt


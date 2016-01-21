#!/bin/bash -x

./run_on_fio.sh /home/tiratatp/Repositories/snia_traces/T1/LiveMapsBackEnd/Combined/disk1_filtered_1hrs_shelter_read.txt
./run_on_fio.sh /home/tiratatp/Repositories/snia_traces/T1/LiveMapsBackEnd/Combined/disk1_filtered_1hrs_sheltered_writeback.txt

./run_on_fio.sh /home/tiratatp/Repositories/snia_traces/T2/DisplayAdsDataServer/Combined/disk0_1hrs_shelter_read.txt
./run_on_fio.sh /home/tiratatp/Repositories/snia_traces/T2/DisplayAdsDataServer/Combined/disk0_1hrs_sheltered_writeback.txt

./run_on_fio.sh /home/tiratatp/Repositories/snia_traces/T3/DisplayAdsPayload/Combined/disk0_1hrs_shelter_read.txt
./run_on_fio.sh /home/tiratatp/Repositories/snia_traces/T3/DisplayAdsPayload/Combined/disk0_1hrs_sheltered_writeback.txt

./run_on_fio.sh /home/tiratatp/Repositories/snia_traces/T4/Exchange-Server-Traces/Combined/disk8_1hrs_shelter_read.txt
./run_on_fio.sh /home/tiratatp/Repositories/snia_traces/T4/Exchange-Server-Traces/Combined/disk8_1hrs_sheltered_writeback.txt

./run_on_fio.sh /home/tiratatp/Repositories/snia_traces/T5/MSNStorageCFS/Combined/disk6_filtered_1hrs_shelter_read.txt
./run_on_fio.sh /home/tiratatp/Repositories/snia_traces/T5/MSNStorageCFS/Combined/disk6_filtered_1hrs_sheltered_writeback.txt

./run_on_fio.sh /home/tiratatp/Repositories/snia_traces/T6/MSNStorageFileServer/Combined/disk5_filtered_1hrs_shelter_read.txt
./run_on_fio.sh /home/tiratatp/Repositories/snia_traces/T6/MSNStorageFileServer/Combined/disk5_filtered_1hrs_sheltered_writeback.txt

./run_on_fio.sh /home/tiratatp/Repositories/snia_traces/T7/BuildServer/Combined/disk0_filtered_1hrs_shelter_read.txt
./run_on_fio.sh /home/tiratatp/Repositories/snia_traces/T7/BuildServer/Combined/disk0_filtered_1hrs_sheltered_writeback.txt

./run_on_fio.sh /home/tiratatp/Repositories/snia_traces/T8/DevelopmentToolsRelease/Combined/disk6_filtered_1hrs_shelter_read.txt
./run_on_fio.sh /home/tiratatp/Repositories/snia_traces/T8/DevelopmentToolsRelease/Combined/disk6_filtered_1hrs_sheltered_writeback.txt

./run_on_fio.sh /home/tiratatp/Repositories/snia_traces/T9/RadiusAuthentication/Combined/disk0_filtered_1hrs_shelter_read.txt
./run_on_fio.sh /home/tiratatp/Repositories/snia_traces/T9/RadiusAuthentication/Combined/disk0_filtered_1hrs_sheltered_writeback.txt

./run_on_fio.sh /home/tiratatp/Repositories/snia_traces/T10/RadiusBackEndSQLServer/Combined/disk4_filtered_1hrs_shelter_read.txt
./run_on_fio.sh /home/tiratatp/Repositories/snia_traces/T10/RadiusBackEndSQLServer/Combined/disk4_filtered_1hrs_sheltered_writeback.txt


webtalk_init -webtalk_dir /home/houyayue/hodepoint/TextCode/PortCommunication/PortCommunication.sim/sim_1/behav/xsim/xsim.dir/Sim_behav/webtalk/
webtalk_register_client -client project
webtalk_add_data -client project -key date_generated -value "Mon Jun 14 16:42:14 2021" -context "software_version_and_target_device"
webtalk_add_data -client project -key product_version -value "XSIM v2020.2 (64-bit)" -context "software_version_and_target_device"
webtalk_add_data -client project -key build_version -value "3064766" -context "software_version_and_target_device"
webtalk_add_data -client project -key os_platform -value "LIN64" -context "software_version_and_target_device"
webtalk_add_data -client project -key registration_id -value "" -context "software_version_and_target_device"
webtalk_add_data -client project -key tool_flow -value "xsim_vivado" -context "software_version_and_target_device"
webtalk_add_data -client project -key beta -value "FALSE" -context "software_version_and_target_device"
webtalk_add_data -client project -key route_design -value "FALSE" -context "software_version_and_target_device"
webtalk_add_data -client project -key target_family -value "not_applicable" -context "software_version_and_target_device"
webtalk_add_data -client project -key target_device -value "not_applicable" -context "software_version_and_target_device"
webtalk_add_data -client project -key target_package -value "not_applicable" -context "software_version_and_target_device"
webtalk_add_data -client project -key target_speed -value "not_applicable" -context "software_version_and_target_device"
webtalk_add_data -client project -key random_id -value "f711e05d-b49a-4820-aebe-c0bf8ddb29fc" -context "software_version_and_target_device"
webtalk_add_data -client project -key project_id -value "e70f48553dc14fd288b4e31df88797d9" -context "software_version_and_target_device"
webtalk_add_data -client project -key project_iteration -value "27" -context "software_version_and_target_device"
webtalk_add_data -client project -key os_name -value "Ubuntu" -context "user_environment"
webtalk_add_data -client project -key os_release -value "Ubuntu 20.04.1 LTS" -context "user_environment"
webtalk_add_data -client project -key cpu_name -value "Intel(R) Core(TM) i7-9750H CPU @ 2.60GHz" -context "user_environment"
webtalk_add_data -client project -key cpu_speed -value "4029.208 MHz" -context "user_environment"
webtalk_add_data -client project -key total_processors -value "1" -context "user_environment"
webtalk_add_data -client project -key system_ram -value "16.000 GB" -context "user_environment"
webtalk_register_client -client xsim
webtalk_add_data -client xsim -key Command -value "xsim" -context "xsim\\command_line_options"
webtalk_add_data -client xsim -key trace_waveform -value "true" -context "xsim\\usage"
webtalk_add_data -client xsim -key runtime -value "100 ms" -context "xsim\\usage"
webtalk_add_data -client xsim -key iteration -value "1" -context "xsim\\usage"
webtalk_add_data -client xsim -key Simulation_Time -value "4.55_sec" -context "xsim\\usage"
webtalk_add_data -client xsim -key Simulation_Memory -value "115616_KB" -context "xsim\\usage"
webtalk_transmit -clientid 1518713433 -regid "" -xml /home/houyayue/hodepoint/TextCode/PortCommunication/PortCommunication.sim/sim_1/behav/xsim/xsim.dir/Sim_behav/webtalk/usage_statistics_ext_xsim.xml -html /home/houyayue/hodepoint/TextCode/PortCommunication/PortCommunication.sim/sim_1/behav/xsim/xsim.dir/Sim_behav/webtalk/usage_statistics_ext_xsim.html -wdm /home/houyayue/hodepoint/TextCode/PortCommunication/PortCommunication.sim/sim_1/behav/xsim/xsim.dir/Sim_behav/webtalk/usage_statistics_ext_xsim.wdm -intro "<H3>XSIM Usage Report</H3><BR>"
webtalk_terminate


# PlanAhead Launch Script for Post-Synthesis floorplanning, created by Project Navigator

create_project -name NEANDER -dir "C:/Users/Felipe/Documents/Sistemas-Digitais/NEANDER/NEANDER/planAhead_run_2" -part xc3s100ecp132-5
set_property design_mode GateLvl [get_property srcset [current_run -impl]]
set_property edif_top_file "C:/Users/Felipe/Documents/Sistemas-Digitais/NEANDER/NEANDER/neander.ngc" [ get_property srcset [ current_run ] ]
add_files -norecurse { {C:/Users/Felipe/Documents/Sistemas-Digitais/NEANDER/NEANDER} }
set_property target_constrs_file "neander.ucf" [current_fileset -constrset]
add_files [list {neander.ucf}] -fileset [get_property constrset [current_run]]
link_design

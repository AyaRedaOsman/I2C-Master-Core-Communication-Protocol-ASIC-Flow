###########################################################################
#%%%%%%%%%%%power_planing%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
###########################################################################

###########################################################################
#%%%%%%%%%%%%%%%%ring_patteren%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
###########################################################################
######## Create the power and ground nets and connections ##########
create_net -power GVDD
create_net -ground GVSS

connect_pg_net -net GVDD [get_pins -physical_context *VDD] 
connect_pg_net -net GVSS [get_pins -physical_context *VSS]
######### Create the ring pattern ##############
create_pg_ring_pattern ring_pattern -horizontal_layer @hlayer \
 -horizontal_width {@hwidth} -horizontal_spacing {@hspace} \
 -vertical_layer @vlayer -vertical_width {@vwidth} \
 -vertical_spacing {@vspace} -parameters {hlayer hwidth hspace vlayer vwidth vspace}
######### Create the ring strategy ##############
set_pg_strategy ring_strat -core \
 -pattern {{name: ring_pattern} {nets: {GVDD GVSS}}
 {offset: {1 1}} {parameters: {M8 1.5 0.5 M9 1.5 0.5}}} 
######### compile ring ####################################
compile_pg -strategies ring_strat
###########################################################################
#%%%%%%%%%%%%%%%%mesh_patteren%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
###########################################################################
######### Create the mesh pattern #########################
create_pg_mesh_pattern mesh_pattern -parameters {w1 p1 w2 p2 f t} -layers { 
 {{vertical_layer: M8} {width: @w1}
 {spacing: interleaving} {pitch: @p1} {offeset: @f}{trim: @t}}
 {{horizontal_layer: M9} {width: @w2}
 {spacing: interleaving} {pitch: @p2}{offeset:@f}{trim: @t}}} 
######### Create the mesh strategy #########################
set_pg_strategy mesh_strat -core -pattern {{pattern: mesh_pattern}
 {nets: {GVDD GVSS GVSS GVDD}}{offset_start:5 5}{parameters: 3 40 3 40 5 false}} -extension {{stop: outermost_ring}} 

#set_pg_strategy mesh_strat -pattern {{pattern: mesh_pattern}
# {nets: {GVDD GVSS}}} -polygon {{75.5 75.5} {850 750}}
######### compile mesh ##################################
compile_pg -strategies mesh_strat
###########################################################################
#%%%%%%%%%%%%%%%%%%%%%%rail_patteren%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
###########################################################################
######### Create rail pattern ##########################
create_pg_std_cell_conn_pattern rail_pattern -layers {M1}  -rail_width 0.6
######### Create rail strategy #########################
set_pg_strategy rail_strat \
 -core -pattern {{pattern: rail_pattern} {nets: GVDD GVSS}} 
######### compile rail #################################
compile_pg -strategies rail_strat 


save_block -as power_planning
###########################################################################
###########################################################################
###########################################################################

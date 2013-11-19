################################################################################
# Automatically-generated file. Do not edit!
################################################################################

-include ../../../makefile.local

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS_QUOTED += \
"../Sources/Cortex-M4-M3/FilteringFunctions/arm_biquad_cascade_df1_32x64_init_q31.c" \
"../Sources/Cortex-M4-M3/FilteringFunctions/arm_biquad_cascade_df1_32x64_q31.c" \
"../Sources/Cortex-M4-M3/FilteringFunctions/arm_biquad_cascade_df1_f32.c" \
"../Sources/Cortex-M4-M3/FilteringFunctions/arm_biquad_cascade_df1_fast_q15.c" \
"../Sources/Cortex-M4-M3/FilteringFunctions/arm_biquad_cascade_df1_fast_q31.c" \
"../Sources/Cortex-M4-M3/FilteringFunctions/arm_biquad_cascade_df1_init_f32.c" \
"../Sources/Cortex-M4-M3/FilteringFunctions/arm_biquad_cascade_df1_init_q15.c" \
"../Sources/Cortex-M4-M3/FilteringFunctions/arm_biquad_cascade_df1_init_q31.c" \
"../Sources/Cortex-M4-M3/FilteringFunctions/arm_biquad_cascade_df1_q15.c" \
"../Sources/Cortex-M4-M3/FilteringFunctions/arm_biquad_cascade_df1_q31.c" \
"../Sources/Cortex-M4-M3/FilteringFunctions/arm_biquad_cascade_df2T_f32.c" \
"../Sources/Cortex-M4-M3/FilteringFunctions/arm_biquad_cascade_df2T_init_f32.c" \
"../Sources/Cortex-M4-M3/FilteringFunctions/arm_conv_f32.c" \
"../Sources/Cortex-M4-M3/FilteringFunctions/arm_conv_fast_q15.c" \
"../Sources/Cortex-M4-M3/FilteringFunctions/arm_conv_fast_q31.c" \
"../Sources/Cortex-M4-M3/FilteringFunctions/arm_conv_partial_f32.c" \
"../Sources/Cortex-M4-M3/FilteringFunctions/arm_conv_partial_fast_q15.c" \
"../Sources/Cortex-M4-M3/FilteringFunctions/arm_conv_partial_fast_q31.c" \
"../Sources/Cortex-M4-M3/FilteringFunctions/arm_conv_partial_q15.c" \
"../Sources/Cortex-M4-M3/FilteringFunctions/arm_conv_partial_q31.c" \
"../Sources/Cortex-M4-M3/FilteringFunctions/arm_conv_partial_q7.c" \
"../Sources/Cortex-M4-M3/FilteringFunctions/arm_conv_q15.c" \
"../Sources/Cortex-M4-M3/FilteringFunctions/arm_conv_q31.c" \
"../Sources/Cortex-M4-M3/FilteringFunctions/arm_conv_q7.c" \
"../Sources/Cortex-M4-M3/FilteringFunctions/arm_correlate_f32.c" \
"../Sources/Cortex-M4-M3/FilteringFunctions/arm_correlate_fast_q15.c" \
"../Sources/Cortex-M4-M3/FilteringFunctions/arm_correlate_fast_q31.c" \
"../Sources/Cortex-M4-M3/FilteringFunctions/arm_correlate_q15.c" \
"../Sources/Cortex-M4-M3/FilteringFunctions/arm_correlate_q31.c" \
"../Sources/Cortex-M4-M3/FilteringFunctions/arm_correlate_q7.c" \
"../Sources/Cortex-M4-M3/FilteringFunctions/arm_fir_decimate_f32.c" \
"../Sources/Cortex-M4-M3/FilteringFunctions/arm_fir_decimate_fast_q15.c" \
"../Sources/Cortex-M4-M3/FilteringFunctions/arm_fir_decimate_fast_q31.c" \
"../Sources/Cortex-M4-M3/FilteringFunctions/arm_fir_decimate_init_f32.c" \
"../Sources/Cortex-M4-M3/FilteringFunctions/arm_fir_decimate_init_q15.c" \
"../Sources/Cortex-M4-M3/FilteringFunctions/arm_fir_decimate_init_q31.c" \
"../Sources/Cortex-M4-M3/FilteringFunctions/arm_fir_decimate_q15.c" \
"../Sources/Cortex-M4-M3/FilteringFunctions/arm_fir_decimate_q31.c" \
"../Sources/Cortex-M4-M3/FilteringFunctions/arm_fir_f32.c" \
"../Sources/Cortex-M4-M3/FilteringFunctions/arm_fir_fast_q15.c" \
"../Sources/Cortex-M4-M3/FilteringFunctions/arm_fir_fast_q31.c" \
"../Sources/Cortex-M4-M3/FilteringFunctions/arm_fir_init_f32.c" \
"../Sources/Cortex-M4-M3/FilteringFunctions/arm_fir_init_q15.c" \
"../Sources/Cortex-M4-M3/FilteringFunctions/arm_fir_init_q31.c" \
"../Sources/Cortex-M4-M3/FilteringFunctions/arm_fir_init_q7.c" \
"../Sources/Cortex-M4-M3/FilteringFunctions/arm_fir_interpolate_f32.c" \
"../Sources/Cortex-M4-M3/FilteringFunctions/arm_fir_interpolate_init_f32.c" \
"../Sources/Cortex-M4-M3/FilteringFunctions/arm_fir_interpolate_init_q15.c" \
"../Sources/Cortex-M4-M3/FilteringFunctions/arm_fir_interpolate_init_q31.c" \
"../Sources/Cortex-M4-M3/FilteringFunctions/arm_fir_interpolate_q15.c" \
"../Sources/Cortex-M4-M3/FilteringFunctions/arm_fir_interpolate_q31.c" \
"../Sources/Cortex-M4-M3/FilteringFunctions/arm_fir_lattice_f32.c" \
"../Sources/Cortex-M4-M3/FilteringFunctions/arm_fir_lattice_init_f32.c" \
"../Sources/Cortex-M4-M3/FilteringFunctions/arm_fir_lattice_init_q15.c" \
"../Sources/Cortex-M4-M3/FilteringFunctions/arm_fir_lattice_init_q31.c" \
"../Sources/Cortex-M4-M3/FilteringFunctions/arm_fir_lattice_q15.c" \
"../Sources/Cortex-M4-M3/FilteringFunctions/arm_fir_lattice_q31.c" \
"../Sources/Cortex-M4-M3/FilteringFunctions/arm_fir_q15.c" \
"../Sources/Cortex-M4-M3/FilteringFunctions/arm_fir_q31.c" \
"../Sources/Cortex-M4-M3/FilteringFunctions/arm_fir_q7.c" \
"../Sources/Cortex-M4-M3/FilteringFunctions/arm_fir_sparse_f32.c" \
"../Sources/Cortex-M4-M3/FilteringFunctions/arm_fir_sparse_init_f32.c" \
"../Sources/Cortex-M4-M3/FilteringFunctions/arm_fir_sparse_init_q15.c" \
"../Sources/Cortex-M4-M3/FilteringFunctions/arm_fir_sparse_init_q31.c" \
"../Sources/Cortex-M4-M3/FilteringFunctions/arm_fir_sparse_init_q7.c" \
"../Sources/Cortex-M4-M3/FilteringFunctions/arm_fir_sparse_q15.c" \
"../Sources/Cortex-M4-M3/FilteringFunctions/arm_fir_sparse_q31.c" \
"../Sources/Cortex-M4-M3/FilteringFunctions/arm_fir_sparse_q7.c" \
"../Sources/Cortex-M4-M3/FilteringFunctions/arm_iir_lattice_f32.c" \
"../Sources/Cortex-M4-M3/FilteringFunctions/arm_iir_lattice_init_f32.c" \
"../Sources/Cortex-M4-M3/FilteringFunctions/arm_iir_lattice_init_q15.c" \
"../Sources/Cortex-M4-M3/FilteringFunctions/arm_iir_lattice_init_q31.c" \
"../Sources/Cortex-M4-M3/FilteringFunctions/arm_iir_lattice_q15.c" \
"../Sources/Cortex-M4-M3/FilteringFunctions/arm_iir_lattice_q31.c" \
"../Sources/Cortex-M4-M3/FilteringFunctions/arm_lms_f32.c" \
"../Sources/Cortex-M4-M3/FilteringFunctions/arm_lms_init_f32.c" \
"../Sources/Cortex-M4-M3/FilteringFunctions/arm_lms_init_q15.c" \
"../Sources/Cortex-M4-M3/FilteringFunctions/arm_lms_init_q31.c" \
"../Sources/Cortex-M4-M3/FilteringFunctions/arm_lms_norm_f32.c" \
"../Sources/Cortex-M4-M3/FilteringFunctions/arm_lms_norm_init_f32.c" \
"../Sources/Cortex-M4-M3/FilteringFunctions/arm_lms_norm_init_q15.c" \
"../Sources/Cortex-M4-M3/FilteringFunctions/arm_lms_norm_init_q31.c" \
"../Sources/Cortex-M4-M3/FilteringFunctions/arm_lms_norm_q15.c" \
"../Sources/Cortex-M4-M3/FilteringFunctions/arm_lms_norm_q31.c" \
"../Sources/Cortex-M4-M3/FilteringFunctions/arm_lms_q15.c" \
"../Sources/Cortex-M4-M3/FilteringFunctions/arm_lms_q31.c" \

C_SRCS += \
../Sources/Cortex-M4-M3/FilteringFunctions/arm_biquad_cascade_df1_32x64_init_q31.c \
../Sources/Cortex-M4-M3/FilteringFunctions/arm_biquad_cascade_df1_32x64_q31.c \
../Sources/Cortex-M4-M3/FilteringFunctions/arm_biquad_cascade_df1_f32.c \
../Sources/Cortex-M4-M3/FilteringFunctions/arm_biquad_cascade_df1_fast_q15.c \
../Sources/Cortex-M4-M3/FilteringFunctions/arm_biquad_cascade_df1_fast_q31.c \
../Sources/Cortex-M4-M3/FilteringFunctions/arm_biquad_cascade_df1_init_f32.c \
../Sources/Cortex-M4-M3/FilteringFunctions/arm_biquad_cascade_df1_init_q15.c \
../Sources/Cortex-M4-M3/FilteringFunctions/arm_biquad_cascade_df1_init_q31.c \
../Sources/Cortex-M4-M3/FilteringFunctions/arm_biquad_cascade_df1_q15.c \
../Sources/Cortex-M4-M3/FilteringFunctions/arm_biquad_cascade_df1_q31.c \
../Sources/Cortex-M4-M3/FilteringFunctions/arm_biquad_cascade_df2T_f32.c \
../Sources/Cortex-M4-M3/FilteringFunctions/arm_biquad_cascade_df2T_init_f32.c \
../Sources/Cortex-M4-M3/FilteringFunctions/arm_conv_f32.c \
../Sources/Cortex-M4-M3/FilteringFunctions/arm_conv_fast_q15.c \
../Sources/Cortex-M4-M3/FilteringFunctions/arm_conv_fast_q31.c \
../Sources/Cortex-M4-M3/FilteringFunctions/arm_conv_partial_f32.c \
../Sources/Cortex-M4-M3/FilteringFunctions/arm_conv_partial_fast_q15.c \
../Sources/Cortex-M4-M3/FilteringFunctions/arm_conv_partial_fast_q31.c \
../Sources/Cortex-M4-M3/FilteringFunctions/arm_conv_partial_q15.c \
../Sources/Cortex-M4-M3/FilteringFunctions/arm_conv_partial_q31.c \
../Sources/Cortex-M4-M3/FilteringFunctions/arm_conv_partial_q7.c \
../Sources/Cortex-M4-M3/FilteringFunctions/arm_conv_q15.c \
../Sources/Cortex-M4-M3/FilteringFunctions/arm_conv_q31.c \
../Sources/Cortex-M4-M3/FilteringFunctions/arm_conv_q7.c \
../Sources/Cortex-M4-M3/FilteringFunctions/arm_correlate_f32.c \
../Sources/Cortex-M4-M3/FilteringFunctions/arm_correlate_fast_q15.c \
../Sources/Cortex-M4-M3/FilteringFunctions/arm_correlate_fast_q31.c \
../Sources/Cortex-M4-M3/FilteringFunctions/arm_correlate_q15.c \
../Sources/Cortex-M4-M3/FilteringFunctions/arm_correlate_q31.c \
../Sources/Cortex-M4-M3/FilteringFunctions/arm_correlate_q7.c \
../Sources/Cortex-M4-M3/FilteringFunctions/arm_fir_decimate_f32.c \
../Sources/Cortex-M4-M3/FilteringFunctions/arm_fir_decimate_fast_q15.c \
../Sources/Cortex-M4-M3/FilteringFunctions/arm_fir_decimate_fast_q31.c \
../Sources/Cortex-M4-M3/FilteringFunctions/arm_fir_decimate_init_f32.c \
../Sources/Cortex-M4-M3/FilteringFunctions/arm_fir_decimate_init_q15.c \
../Sources/Cortex-M4-M3/FilteringFunctions/arm_fir_decimate_init_q31.c \
../Sources/Cortex-M4-M3/FilteringFunctions/arm_fir_decimate_q15.c \
../Sources/Cortex-M4-M3/FilteringFunctions/arm_fir_decimate_q31.c \
../Sources/Cortex-M4-M3/FilteringFunctions/arm_fir_f32.c \
../Sources/Cortex-M4-M3/FilteringFunctions/arm_fir_fast_q15.c \
../Sources/Cortex-M4-M3/FilteringFunctions/arm_fir_fast_q31.c \
../Sources/Cortex-M4-M3/FilteringFunctions/arm_fir_init_f32.c \
../Sources/Cortex-M4-M3/FilteringFunctions/arm_fir_init_q15.c \
../Sources/Cortex-M4-M3/FilteringFunctions/arm_fir_init_q31.c \
../Sources/Cortex-M4-M3/FilteringFunctions/arm_fir_init_q7.c \
../Sources/Cortex-M4-M3/FilteringFunctions/arm_fir_interpolate_f32.c \
../Sources/Cortex-M4-M3/FilteringFunctions/arm_fir_interpolate_init_f32.c \
../Sources/Cortex-M4-M3/FilteringFunctions/arm_fir_interpolate_init_q15.c \
../Sources/Cortex-M4-M3/FilteringFunctions/arm_fir_interpolate_init_q31.c \
../Sources/Cortex-M4-M3/FilteringFunctions/arm_fir_interpolate_q15.c \
../Sources/Cortex-M4-M3/FilteringFunctions/arm_fir_interpolate_q31.c \
../Sources/Cortex-M4-M3/FilteringFunctions/arm_fir_lattice_f32.c \
../Sources/Cortex-M4-M3/FilteringFunctions/arm_fir_lattice_init_f32.c \
../Sources/Cortex-M4-M3/FilteringFunctions/arm_fir_lattice_init_q15.c \
../Sources/Cortex-M4-M3/FilteringFunctions/arm_fir_lattice_init_q31.c \
../Sources/Cortex-M4-M3/FilteringFunctions/arm_fir_lattice_q15.c \
../Sources/Cortex-M4-M3/FilteringFunctions/arm_fir_lattice_q31.c \
../Sources/Cortex-M4-M3/FilteringFunctions/arm_fir_q15.c \
../Sources/Cortex-M4-M3/FilteringFunctions/arm_fir_q31.c \
../Sources/Cortex-M4-M3/FilteringFunctions/arm_fir_q7.c \
../Sources/Cortex-M4-M3/FilteringFunctions/arm_fir_sparse_f32.c \
../Sources/Cortex-M4-M3/FilteringFunctions/arm_fir_sparse_init_f32.c \
../Sources/Cortex-M4-M3/FilteringFunctions/arm_fir_sparse_init_q15.c \
../Sources/Cortex-M4-M3/FilteringFunctions/arm_fir_sparse_init_q31.c \
../Sources/Cortex-M4-M3/FilteringFunctions/arm_fir_sparse_init_q7.c \
../Sources/Cortex-M4-M3/FilteringFunctions/arm_fir_sparse_q15.c \
../Sources/Cortex-M4-M3/FilteringFunctions/arm_fir_sparse_q31.c \
../Sources/Cortex-M4-M3/FilteringFunctions/arm_fir_sparse_q7.c \
../Sources/Cortex-M4-M3/FilteringFunctions/arm_iir_lattice_f32.c \
../Sources/Cortex-M4-M3/FilteringFunctions/arm_iir_lattice_init_f32.c \
../Sources/Cortex-M4-M3/FilteringFunctions/arm_iir_lattice_init_q15.c \
../Sources/Cortex-M4-M3/FilteringFunctions/arm_iir_lattice_init_q31.c \
../Sources/Cortex-M4-M3/FilteringFunctions/arm_iir_lattice_q15.c \
../Sources/Cortex-M4-M3/FilteringFunctions/arm_iir_lattice_q31.c \
../Sources/Cortex-M4-M3/FilteringFunctions/arm_lms_f32.c \
../Sources/Cortex-M4-M3/FilteringFunctions/arm_lms_init_f32.c \
../Sources/Cortex-M4-M3/FilteringFunctions/arm_lms_init_q15.c \
../Sources/Cortex-M4-M3/FilteringFunctions/arm_lms_init_q31.c \
../Sources/Cortex-M4-M3/FilteringFunctions/arm_lms_norm_f32.c \
../Sources/Cortex-M4-M3/FilteringFunctions/arm_lms_norm_init_f32.c \
../Sources/Cortex-M4-M3/FilteringFunctions/arm_lms_norm_init_q15.c \
../Sources/Cortex-M4-M3/FilteringFunctions/arm_lms_norm_init_q31.c \
../Sources/Cortex-M4-M3/FilteringFunctions/arm_lms_norm_q15.c \
../Sources/Cortex-M4-M3/FilteringFunctions/arm_lms_norm_q31.c \
../Sources/Cortex-M4-M3/FilteringFunctions/arm_lms_q15.c \
../Sources/Cortex-M4-M3/FilteringFunctions/arm_lms_q31.c \

OBJS += \
./Sources/Cortex-M4-M3/FilteringFunctions/arm_biquad_cascade_df1_32x64_init_q31.obj \
./Sources/Cortex-M4-M3/FilteringFunctions/arm_biquad_cascade_df1_32x64_q31.obj \
./Sources/Cortex-M4-M3/FilteringFunctions/arm_biquad_cascade_df1_f32.obj \
./Sources/Cortex-M4-M3/FilteringFunctions/arm_biquad_cascade_df1_fast_q15.obj \
./Sources/Cortex-M4-M3/FilteringFunctions/arm_biquad_cascade_df1_fast_q31.obj \
./Sources/Cortex-M4-M3/FilteringFunctions/arm_biquad_cascade_df1_init_f32.obj \
./Sources/Cortex-M4-M3/FilteringFunctions/arm_biquad_cascade_df1_init_q15.obj \
./Sources/Cortex-M4-M3/FilteringFunctions/arm_biquad_cascade_df1_init_q31.obj \
./Sources/Cortex-M4-M3/FilteringFunctions/arm_biquad_cascade_df1_q15.obj \
./Sources/Cortex-M4-M3/FilteringFunctions/arm_biquad_cascade_df1_q31.obj \
./Sources/Cortex-M4-M3/FilteringFunctions/arm_biquad_cascade_df2T_f32.obj \
./Sources/Cortex-M4-M3/FilteringFunctions/arm_biquad_cascade_df2T_init_f32.obj \
./Sources/Cortex-M4-M3/FilteringFunctions/arm_conv_f32.obj \
./Sources/Cortex-M4-M3/FilteringFunctions/arm_conv_fast_q15.obj \
./Sources/Cortex-M4-M3/FilteringFunctions/arm_conv_fast_q31.obj \
./Sources/Cortex-M4-M3/FilteringFunctions/arm_conv_partial_f32.obj \
./Sources/Cortex-M4-M3/FilteringFunctions/arm_conv_partial_fast_q15.obj \
./Sources/Cortex-M4-M3/FilteringFunctions/arm_conv_partial_fast_q31.obj \
./Sources/Cortex-M4-M3/FilteringFunctions/arm_conv_partial_q15.obj \
./Sources/Cortex-M4-M3/FilteringFunctions/arm_conv_partial_q31.obj \
./Sources/Cortex-M4-M3/FilteringFunctions/arm_conv_partial_q7.obj \
./Sources/Cortex-M4-M3/FilteringFunctions/arm_conv_q15.obj \
./Sources/Cortex-M4-M3/FilteringFunctions/arm_conv_q31.obj \
./Sources/Cortex-M4-M3/FilteringFunctions/arm_conv_q7.obj \
./Sources/Cortex-M4-M3/FilteringFunctions/arm_correlate_f32.obj \
./Sources/Cortex-M4-M3/FilteringFunctions/arm_correlate_fast_q15.obj \
./Sources/Cortex-M4-M3/FilteringFunctions/arm_correlate_fast_q31.obj \
./Sources/Cortex-M4-M3/FilteringFunctions/arm_correlate_q15.obj \
./Sources/Cortex-M4-M3/FilteringFunctions/arm_correlate_q31.obj \
./Sources/Cortex-M4-M3/FilteringFunctions/arm_correlate_q7.obj \
./Sources/Cortex-M4-M3/FilteringFunctions/arm_fir_decimate_f32.obj \
./Sources/Cortex-M4-M3/FilteringFunctions/arm_fir_decimate_fast_q15.obj \
./Sources/Cortex-M4-M3/FilteringFunctions/arm_fir_decimate_fast_q31.obj \
./Sources/Cortex-M4-M3/FilteringFunctions/arm_fir_decimate_init_f32.obj \
./Sources/Cortex-M4-M3/FilteringFunctions/arm_fir_decimate_init_q15.obj \
./Sources/Cortex-M4-M3/FilteringFunctions/arm_fir_decimate_init_q31.obj \
./Sources/Cortex-M4-M3/FilteringFunctions/arm_fir_decimate_q15.obj \
./Sources/Cortex-M4-M3/FilteringFunctions/arm_fir_decimate_q31.obj \
./Sources/Cortex-M4-M3/FilteringFunctions/arm_fir_f32.obj \
./Sources/Cortex-M4-M3/FilteringFunctions/arm_fir_fast_q15.obj \
./Sources/Cortex-M4-M3/FilteringFunctions/arm_fir_fast_q31.obj \
./Sources/Cortex-M4-M3/FilteringFunctions/arm_fir_init_f32.obj \
./Sources/Cortex-M4-M3/FilteringFunctions/arm_fir_init_q15.obj \
./Sources/Cortex-M4-M3/FilteringFunctions/arm_fir_init_q31.obj \
./Sources/Cortex-M4-M3/FilteringFunctions/arm_fir_init_q7.obj \
./Sources/Cortex-M4-M3/FilteringFunctions/arm_fir_interpolate_f32.obj \
./Sources/Cortex-M4-M3/FilteringFunctions/arm_fir_interpolate_init_f32.obj \
./Sources/Cortex-M4-M3/FilteringFunctions/arm_fir_interpolate_init_q15.obj \
./Sources/Cortex-M4-M3/FilteringFunctions/arm_fir_interpolate_init_q31.obj \
./Sources/Cortex-M4-M3/FilteringFunctions/arm_fir_interpolate_q15.obj \
./Sources/Cortex-M4-M3/FilteringFunctions/arm_fir_interpolate_q31.obj \
./Sources/Cortex-M4-M3/FilteringFunctions/arm_fir_lattice_f32.obj \
./Sources/Cortex-M4-M3/FilteringFunctions/arm_fir_lattice_init_f32.obj \
./Sources/Cortex-M4-M3/FilteringFunctions/arm_fir_lattice_init_q15.obj \
./Sources/Cortex-M4-M3/FilteringFunctions/arm_fir_lattice_init_q31.obj \
./Sources/Cortex-M4-M3/FilteringFunctions/arm_fir_lattice_q15.obj \
./Sources/Cortex-M4-M3/FilteringFunctions/arm_fir_lattice_q31.obj \
./Sources/Cortex-M4-M3/FilteringFunctions/arm_fir_q15.obj \
./Sources/Cortex-M4-M3/FilteringFunctions/arm_fir_q31.obj \
./Sources/Cortex-M4-M3/FilteringFunctions/arm_fir_q7.obj \
./Sources/Cortex-M4-M3/FilteringFunctions/arm_fir_sparse_f32.obj \
./Sources/Cortex-M4-M3/FilteringFunctions/arm_fir_sparse_init_f32.obj \
./Sources/Cortex-M4-M3/FilteringFunctions/arm_fir_sparse_init_q15.obj \
./Sources/Cortex-M4-M3/FilteringFunctions/arm_fir_sparse_init_q31.obj \
./Sources/Cortex-M4-M3/FilteringFunctions/arm_fir_sparse_init_q7.obj \
./Sources/Cortex-M4-M3/FilteringFunctions/arm_fir_sparse_q15.obj \
./Sources/Cortex-M4-M3/FilteringFunctions/arm_fir_sparse_q31.obj \
./Sources/Cortex-M4-M3/FilteringFunctions/arm_fir_sparse_q7.obj \
./Sources/Cortex-M4-M3/FilteringFunctions/arm_iir_lattice_f32.obj \
./Sources/Cortex-M4-M3/FilteringFunctions/arm_iir_lattice_init_f32.obj \
./Sources/Cortex-M4-M3/FilteringFunctions/arm_iir_lattice_init_q15.obj \
./Sources/Cortex-M4-M3/FilteringFunctions/arm_iir_lattice_init_q31.obj \
./Sources/Cortex-M4-M3/FilteringFunctions/arm_iir_lattice_q15.obj \
./Sources/Cortex-M4-M3/FilteringFunctions/arm_iir_lattice_q31.obj \
./Sources/Cortex-M4-M3/FilteringFunctions/arm_lms_f32.obj \
./Sources/Cortex-M4-M3/FilteringFunctions/arm_lms_init_f32.obj \
./Sources/Cortex-M4-M3/FilteringFunctions/arm_lms_init_q15.obj \
./Sources/Cortex-M4-M3/FilteringFunctions/arm_lms_init_q31.obj \
./Sources/Cortex-M4-M3/FilteringFunctions/arm_lms_norm_f32.obj \
./Sources/Cortex-M4-M3/FilteringFunctions/arm_lms_norm_init_f32.obj \
./Sources/Cortex-M4-M3/FilteringFunctions/arm_lms_norm_init_q15.obj \
./Sources/Cortex-M4-M3/FilteringFunctions/arm_lms_norm_init_q31.obj \
./Sources/Cortex-M4-M3/FilteringFunctions/arm_lms_norm_q15.obj \
./Sources/Cortex-M4-M3/FilteringFunctions/arm_lms_norm_q31.obj \
./Sources/Cortex-M4-M3/FilteringFunctions/arm_lms_q15.obj \
./Sources/Cortex-M4-M3/FilteringFunctions/arm_lms_q31.obj \

OBJS_QUOTED += \
"./Sources/Cortex-M4-M3/FilteringFunctions/arm_biquad_cascade_df1_32x64_init_q31.obj" \
"./Sources/Cortex-M4-M3/FilteringFunctions/arm_biquad_cascade_df1_32x64_q31.obj" \
"./Sources/Cortex-M4-M3/FilteringFunctions/arm_biquad_cascade_df1_f32.obj" \
"./Sources/Cortex-M4-M3/FilteringFunctions/arm_biquad_cascade_df1_fast_q15.obj" \
"./Sources/Cortex-M4-M3/FilteringFunctions/arm_biquad_cascade_df1_fast_q31.obj" \
"./Sources/Cortex-M4-M3/FilteringFunctions/arm_biquad_cascade_df1_init_f32.obj" \
"./Sources/Cortex-M4-M3/FilteringFunctions/arm_biquad_cascade_df1_init_q15.obj" \
"./Sources/Cortex-M4-M3/FilteringFunctions/arm_biquad_cascade_df1_init_q31.obj" \
"./Sources/Cortex-M4-M3/FilteringFunctions/arm_biquad_cascade_df1_q15.obj" \
"./Sources/Cortex-M4-M3/FilteringFunctions/arm_biquad_cascade_df1_q31.obj" \
"./Sources/Cortex-M4-M3/FilteringFunctions/arm_biquad_cascade_df2T_f32.obj" \
"./Sources/Cortex-M4-M3/FilteringFunctions/arm_biquad_cascade_df2T_init_f32.obj" \
"./Sources/Cortex-M4-M3/FilteringFunctions/arm_conv_f32.obj" \
"./Sources/Cortex-M4-M3/FilteringFunctions/arm_conv_fast_q15.obj" \
"./Sources/Cortex-M4-M3/FilteringFunctions/arm_conv_fast_q31.obj" \
"./Sources/Cortex-M4-M3/FilteringFunctions/arm_conv_partial_f32.obj" \
"./Sources/Cortex-M4-M3/FilteringFunctions/arm_conv_partial_fast_q15.obj" \
"./Sources/Cortex-M4-M3/FilteringFunctions/arm_conv_partial_fast_q31.obj" \
"./Sources/Cortex-M4-M3/FilteringFunctions/arm_conv_partial_q15.obj" \
"./Sources/Cortex-M4-M3/FilteringFunctions/arm_conv_partial_q31.obj" \
"./Sources/Cortex-M4-M3/FilteringFunctions/arm_conv_partial_q7.obj" \
"./Sources/Cortex-M4-M3/FilteringFunctions/arm_conv_q15.obj" \
"./Sources/Cortex-M4-M3/FilteringFunctions/arm_conv_q31.obj" \
"./Sources/Cortex-M4-M3/FilteringFunctions/arm_conv_q7.obj" \
"./Sources/Cortex-M4-M3/FilteringFunctions/arm_correlate_f32.obj" \
"./Sources/Cortex-M4-M3/FilteringFunctions/arm_correlate_fast_q15.obj" \
"./Sources/Cortex-M4-M3/FilteringFunctions/arm_correlate_fast_q31.obj" \
"./Sources/Cortex-M4-M3/FilteringFunctions/arm_correlate_q15.obj" \
"./Sources/Cortex-M4-M3/FilteringFunctions/arm_correlate_q31.obj" \
"./Sources/Cortex-M4-M3/FilteringFunctions/arm_correlate_q7.obj" \
"./Sources/Cortex-M4-M3/FilteringFunctions/arm_fir_decimate_f32.obj" \
"./Sources/Cortex-M4-M3/FilteringFunctions/arm_fir_decimate_fast_q15.obj" \
"./Sources/Cortex-M4-M3/FilteringFunctions/arm_fir_decimate_fast_q31.obj" \
"./Sources/Cortex-M4-M3/FilteringFunctions/arm_fir_decimate_init_f32.obj" \
"./Sources/Cortex-M4-M3/FilteringFunctions/arm_fir_decimate_init_q15.obj" \
"./Sources/Cortex-M4-M3/FilteringFunctions/arm_fir_decimate_init_q31.obj" \
"./Sources/Cortex-M4-M3/FilteringFunctions/arm_fir_decimate_q15.obj" \
"./Sources/Cortex-M4-M3/FilteringFunctions/arm_fir_decimate_q31.obj" \
"./Sources/Cortex-M4-M3/FilteringFunctions/arm_fir_f32.obj" \
"./Sources/Cortex-M4-M3/FilteringFunctions/arm_fir_fast_q15.obj" \
"./Sources/Cortex-M4-M3/FilteringFunctions/arm_fir_fast_q31.obj" \
"./Sources/Cortex-M4-M3/FilteringFunctions/arm_fir_init_f32.obj" \
"./Sources/Cortex-M4-M3/FilteringFunctions/arm_fir_init_q15.obj" \
"./Sources/Cortex-M4-M3/FilteringFunctions/arm_fir_init_q31.obj" \
"./Sources/Cortex-M4-M3/FilteringFunctions/arm_fir_init_q7.obj" \
"./Sources/Cortex-M4-M3/FilteringFunctions/arm_fir_interpolate_f32.obj" \
"./Sources/Cortex-M4-M3/FilteringFunctions/arm_fir_interpolate_init_f32.obj" \
"./Sources/Cortex-M4-M3/FilteringFunctions/arm_fir_interpolate_init_q15.obj" \
"./Sources/Cortex-M4-M3/FilteringFunctions/arm_fir_interpolate_init_q31.obj" \
"./Sources/Cortex-M4-M3/FilteringFunctions/arm_fir_interpolate_q15.obj" \
"./Sources/Cortex-M4-M3/FilteringFunctions/arm_fir_interpolate_q31.obj" \
"./Sources/Cortex-M4-M3/FilteringFunctions/arm_fir_lattice_f32.obj" \
"./Sources/Cortex-M4-M3/FilteringFunctions/arm_fir_lattice_init_f32.obj" \
"./Sources/Cortex-M4-M3/FilteringFunctions/arm_fir_lattice_init_q15.obj" \
"./Sources/Cortex-M4-M3/FilteringFunctions/arm_fir_lattice_init_q31.obj" \
"./Sources/Cortex-M4-M3/FilteringFunctions/arm_fir_lattice_q15.obj" \
"./Sources/Cortex-M4-M3/FilteringFunctions/arm_fir_lattice_q31.obj" \
"./Sources/Cortex-M4-M3/FilteringFunctions/arm_fir_q15.obj" \
"./Sources/Cortex-M4-M3/FilteringFunctions/arm_fir_q31.obj" \
"./Sources/Cortex-M4-M3/FilteringFunctions/arm_fir_q7.obj" \
"./Sources/Cortex-M4-M3/FilteringFunctions/arm_fir_sparse_f32.obj" \
"./Sources/Cortex-M4-M3/FilteringFunctions/arm_fir_sparse_init_f32.obj" \
"./Sources/Cortex-M4-M3/FilteringFunctions/arm_fir_sparse_init_q15.obj" \
"./Sources/Cortex-M4-M3/FilteringFunctions/arm_fir_sparse_init_q31.obj" \
"./Sources/Cortex-M4-M3/FilteringFunctions/arm_fir_sparse_init_q7.obj" \
"./Sources/Cortex-M4-M3/FilteringFunctions/arm_fir_sparse_q15.obj" \
"./Sources/Cortex-M4-M3/FilteringFunctions/arm_fir_sparse_q31.obj" \
"./Sources/Cortex-M4-M3/FilteringFunctions/arm_fir_sparse_q7.obj" \
"./Sources/Cortex-M4-M3/FilteringFunctions/arm_iir_lattice_f32.obj" \
"./Sources/Cortex-M4-M3/FilteringFunctions/arm_iir_lattice_init_f32.obj" \
"./Sources/Cortex-M4-M3/FilteringFunctions/arm_iir_lattice_init_q15.obj" \
"./Sources/Cortex-M4-M3/FilteringFunctions/arm_iir_lattice_init_q31.obj" \
"./Sources/Cortex-M4-M3/FilteringFunctions/arm_iir_lattice_q15.obj" \
"./Sources/Cortex-M4-M3/FilteringFunctions/arm_iir_lattice_q31.obj" \
"./Sources/Cortex-M4-M3/FilteringFunctions/arm_lms_f32.obj" \
"./Sources/Cortex-M4-M3/FilteringFunctions/arm_lms_init_f32.obj" \
"./Sources/Cortex-M4-M3/FilteringFunctions/arm_lms_init_q15.obj" \
"./Sources/Cortex-M4-M3/FilteringFunctions/arm_lms_init_q31.obj" \
"./Sources/Cortex-M4-M3/FilteringFunctions/arm_lms_norm_f32.obj" \
"./Sources/Cortex-M4-M3/FilteringFunctions/arm_lms_norm_init_f32.obj" \
"./Sources/Cortex-M4-M3/FilteringFunctions/arm_lms_norm_init_q15.obj" \
"./Sources/Cortex-M4-M3/FilteringFunctions/arm_lms_norm_init_q31.obj" \
"./Sources/Cortex-M4-M3/FilteringFunctions/arm_lms_norm_q15.obj" \
"./Sources/Cortex-M4-M3/FilteringFunctions/arm_lms_norm_q31.obj" \
"./Sources/Cortex-M4-M3/FilteringFunctions/arm_lms_q15.obj" \
"./Sources/Cortex-M4-M3/FilteringFunctions/arm_lms_q31.obj" \

C_DEPS += \
./Sources/Cortex-M4-M3/FilteringFunctions/arm_biquad_cascade_df1_32x64_init_q31.d \
./Sources/Cortex-M4-M3/FilteringFunctions/arm_biquad_cascade_df1_32x64_q31.d \
./Sources/Cortex-M4-M3/FilteringFunctions/arm_biquad_cascade_df1_f32.d \
./Sources/Cortex-M4-M3/FilteringFunctions/arm_biquad_cascade_df1_fast_q15.d \
./Sources/Cortex-M4-M3/FilteringFunctions/arm_biquad_cascade_df1_fast_q31.d \
./Sources/Cortex-M4-M3/FilteringFunctions/arm_biquad_cascade_df1_init_f32.d \
./Sources/Cortex-M4-M3/FilteringFunctions/arm_biquad_cascade_df1_init_q15.d \
./Sources/Cortex-M4-M3/FilteringFunctions/arm_biquad_cascade_df1_init_q31.d \
./Sources/Cortex-M4-M3/FilteringFunctions/arm_biquad_cascade_df1_q15.d \
./Sources/Cortex-M4-M3/FilteringFunctions/arm_biquad_cascade_df1_q31.d \
./Sources/Cortex-M4-M3/FilteringFunctions/arm_biquad_cascade_df2T_f32.d \
./Sources/Cortex-M4-M3/FilteringFunctions/arm_biquad_cascade_df2T_init_f32.d \
./Sources/Cortex-M4-M3/FilteringFunctions/arm_conv_f32.d \
./Sources/Cortex-M4-M3/FilteringFunctions/arm_conv_fast_q15.d \
./Sources/Cortex-M4-M3/FilteringFunctions/arm_conv_fast_q31.d \
./Sources/Cortex-M4-M3/FilteringFunctions/arm_conv_partial_f32.d \
./Sources/Cortex-M4-M3/FilteringFunctions/arm_conv_partial_fast_q15.d \
./Sources/Cortex-M4-M3/FilteringFunctions/arm_conv_partial_fast_q31.d \
./Sources/Cortex-M4-M3/FilteringFunctions/arm_conv_partial_q15.d \
./Sources/Cortex-M4-M3/FilteringFunctions/arm_conv_partial_q31.d \
./Sources/Cortex-M4-M3/FilteringFunctions/arm_conv_partial_q7.d \
./Sources/Cortex-M4-M3/FilteringFunctions/arm_conv_q15.d \
./Sources/Cortex-M4-M3/FilteringFunctions/arm_conv_q31.d \
./Sources/Cortex-M4-M3/FilteringFunctions/arm_conv_q7.d \
./Sources/Cortex-M4-M3/FilteringFunctions/arm_correlate_f32.d \
./Sources/Cortex-M4-M3/FilteringFunctions/arm_correlate_fast_q15.d \
./Sources/Cortex-M4-M3/FilteringFunctions/arm_correlate_fast_q31.d \
./Sources/Cortex-M4-M3/FilteringFunctions/arm_correlate_q15.d \
./Sources/Cortex-M4-M3/FilteringFunctions/arm_correlate_q31.d \
./Sources/Cortex-M4-M3/FilteringFunctions/arm_correlate_q7.d \
./Sources/Cortex-M4-M3/FilteringFunctions/arm_fir_decimate_f32.d \
./Sources/Cortex-M4-M3/FilteringFunctions/arm_fir_decimate_fast_q15.d \
./Sources/Cortex-M4-M3/FilteringFunctions/arm_fir_decimate_fast_q31.d \
./Sources/Cortex-M4-M3/FilteringFunctions/arm_fir_decimate_init_f32.d \
./Sources/Cortex-M4-M3/FilteringFunctions/arm_fir_decimate_init_q15.d \
./Sources/Cortex-M4-M3/FilteringFunctions/arm_fir_decimate_init_q31.d \
./Sources/Cortex-M4-M3/FilteringFunctions/arm_fir_decimate_q15.d \
./Sources/Cortex-M4-M3/FilteringFunctions/arm_fir_decimate_q31.d \
./Sources/Cortex-M4-M3/FilteringFunctions/arm_fir_f32.d \
./Sources/Cortex-M4-M3/FilteringFunctions/arm_fir_fast_q15.d \
./Sources/Cortex-M4-M3/FilteringFunctions/arm_fir_fast_q31.d \
./Sources/Cortex-M4-M3/FilteringFunctions/arm_fir_init_f32.d \
./Sources/Cortex-M4-M3/FilteringFunctions/arm_fir_init_q15.d \
./Sources/Cortex-M4-M3/FilteringFunctions/arm_fir_init_q31.d \
./Sources/Cortex-M4-M3/FilteringFunctions/arm_fir_init_q7.d \
./Sources/Cortex-M4-M3/FilteringFunctions/arm_fir_interpolate_f32.d \
./Sources/Cortex-M4-M3/FilteringFunctions/arm_fir_interpolate_init_f32.d \
./Sources/Cortex-M4-M3/FilteringFunctions/arm_fir_interpolate_init_q15.d \
./Sources/Cortex-M4-M3/FilteringFunctions/arm_fir_interpolate_init_q31.d \
./Sources/Cortex-M4-M3/FilteringFunctions/arm_fir_interpolate_q15.d \
./Sources/Cortex-M4-M3/FilteringFunctions/arm_fir_interpolate_q31.d \
./Sources/Cortex-M4-M3/FilteringFunctions/arm_fir_lattice_f32.d \
./Sources/Cortex-M4-M3/FilteringFunctions/arm_fir_lattice_init_f32.d \
./Sources/Cortex-M4-M3/FilteringFunctions/arm_fir_lattice_init_q15.d \
./Sources/Cortex-M4-M3/FilteringFunctions/arm_fir_lattice_init_q31.d \
./Sources/Cortex-M4-M3/FilteringFunctions/arm_fir_lattice_q15.d \
./Sources/Cortex-M4-M3/FilteringFunctions/arm_fir_lattice_q31.d \
./Sources/Cortex-M4-M3/FilteringFunctions/arm_fir_q15.d \
./Sources/Cortex-M4-M3/FilteringFunctions/arm_fir_q31.d \
./Sources/Cortex-M4-M3/FilteringFunctions/arm_fir_q7.d \
./Sources/Cortex-M4-M3/FilteringFunctions/arm_fir_sparse_f32.d \
./Sources/Cortex-M4-M3/FilteringFunctions/arm_fir_sparse_init_f32.d \
./Sources/Cortex-M4-M3/FilteringFunctions/arm_fir_sparse_init_q15.d \
./Sources/Cortex-M4-M3/FilteringFunctions/arm_fir_sparse_init_q31.d \
./Sources/Cortex-M4-M3/FilteringFunctions/arm_fir_sparse_init_q7.d \
./Sources/Cortex-M4-M3/FilteringFunctions/arm_fir_sparse_q15.d \
./Sources/Cortex-M4-M3/FilteringFunctions/arm_fir_sparse_q31.d \
./Sources/Cortex-M4-M3/FilteringFunctions/arm_fir_sparse_q7.d \
./Sources/Cortex-M4-M3/FilteringFunctions/arm_iir_lattice_f32.d \
./Sources/Cortex-M4-M3/FilteringFunctions/arm_iir_lattice_init_f32.d \
./Sources/Cortex-M4-M3/FilteringFunctions/arm_iir_lattice_init_q15.d \
./Sources/Cortex-M4-M3/FilteringFunctions/arm_iir_lattice_init_q31.d \
./Sources/Cortex-M4-M3/FilteringFunctions/arm_iir_lattice_q15.d \
./Sources/Cortex-M4-M3/FilteringFunctions/arm_iir_lattice_q31.d \
./Sources/Cortex-M4-M3/FilteringFunctions/arm_lms_f32.d \
./Sources/Cortex-M4-M3/FilteringFunctions/arm_lms_init_f32.d \
./Sources/Cortex-M4-M3/FilteringFunctions/arm_lms_init_q15.d \
./Sources/Cortex-M4-M3/FilteringFunctions/arm_lms_init_q31.d \
./Sources/Cortex-M4-M3/FilteringFunctions/arm_lms_norm_f32.d \
./Sources/Cortex-M4-M3/FilteringFunctions/arm_lms_norm_init_f32.d \
./Sources/Cortex-M4-M3/FilteringFunctions/arm_lms_norm_init_q15.d \
./Sources/Cortex-M4-M3/FilteringFunctions/arm_lms_norm_init_q31.d \
./Sources/Cortex-M4-M3/FilteringFunctions/arm_lms_norm_q15.d \
./Sources/Cortex-M4-M3/FilteringFunctions/arm_lms_norm_q31.d \
./Sources/Cortex-M4-M3/FilteringFunctions/arm_lms_q15.d \
./Sources/Cortex-M4-M3/FilteringFunctions/arm_lms_q31.d \

C_DEPS_QUOTED += \
"./Sources/Cortex-M4-M3/FilteringFunctions/arm_biquad_cascade_df1_32x64_init_q31.d" \
"./Sources/Cortex-M4-M3/FilteringFunctions/arm_biquad_cascade_df1_32x64_q31.d" \
"./Sources/Cortex-M4-M3/FilteringFunctions/arm_biquad_cascade_df1_f32.d" \
"./Sources/Cortex-M4-M3/FilteringFunctions/arm_biquad_cascade_df1_fast_q15.d" \
"./Sources/Cortex-M4-M3/FilteringFunctions/arm_biquad_cascade_df1_fast_q31.d" \
"./Sources/Cortex-M4-M3/FilteringFunctions/arm_biquad_cascade_df1_init_f32.d" \
"./Sources/Cortex-M4-M3/FilteringFunctions/arm_biquad_cascade_df1_init_q15.d" \
"./Sources/Cortex-M4-M3/FilteringFunctions/arm_biquad_cascade_df1_init_q31.d" \
"./Sources/Cortex-M4-M3/FilteringFunctions/arm_biquad_cascade_df1_q15.d" \
"./Sources/Cortex-M4-M3/FilteringFunctions/arm_biquad_cascade_df1_q31.d" \
"./Sources/Cortex-M4-M3/FilteringFunctions/arm_biquad_cascade_df2T_f32.d" \
"./Sources/Cortex-M4-M3/FilteringFunctions/arm_biquad_cascade_df2T_init_f32.d" \
"./Sources/Cortex-M4-M3/FilteringFunctions/arm_conv_f32.d" \
"./Sources/Cortex-M4-M3/FilteringFunctions/arm_conv_fast_q15.d" \
"./Sources/Cortex-M4-M3/FilteringFunctions/arm_conv_fast_q31.d" \
"./Sources/Cortex-M4-M3/FilteringFunctions/arm_conv_partial_f32.d" \
"./Sources/Cortex-M4-M3/FilteringFunctions/arm_conv_partial_fast_q15.d" \
"./Sources/Cortex-M4-M3/FilteringFunctions/arm_conv_partial_fast_q31.d" \
"./Sources/Cortex-M4-M3/FilteringFunctions/arm_conv_partial_q15.d" \
"./Sources/Cortex-M4-M3/FilteringFunctions/arm_conv_partial_q31.d" \
"./Sources/Cortex-M4-M3/FilteringFunctions/arm_conv_partial_q7.d" \
"./Sources/Cortex-M4-M3/FilteringFunctions/arm_conv_q15.d" \
"./Sources/Cortex-M4-M3/FilteringFunctions/arm_conv_q31.d" \
"./Sources/Cortex-M4-M3/FilteringFunctions/arm_conv_q7.d" \
"./Sources/Cortex-M4-M3/FilteringFunctions/arm_correlate_f32.d" \
"./Sources/Cortex-M4-M3/FilteringFunctions/arm_correlate_fast_q15.d" \
"./Sources/Cortex-M4-M3/FilteringFunctions/arm_correlate_fast_q31.d" \
"./Sources/Cortex-M4-M3/FilteringFunctions/arm_correlate_q15.d" \
"./Sources/Cortex-M4-M3/FilteringFunctions/arm_correlate_q31.d" \
"./Sources/Cortex-M4-M3/FilteringFunctions/arm_correlate_q7.d" \
"./Sources/Cortex-M4-M3/FilteringFunctions/arm_fir_decimate_f32.d" \
"./Sources/Cortex-M4-M3/FilteringFunctions/arm_fir_decimate_fast_q15.d" \
"./Sources/Cortex-M4-M3/FilteringFunctions/arm_fir_decimate_fast_q31.d" \
"./Sources/Cortex-M4-M3/FilteringFunctions/arm_fir_decimate_init_f32.d" \
"./Sources/Cortex-M4-M3/FilteringFunctions/arm_fir_decimate_init_q15.d" \
"./Sources/Cortex-M4-M3/FilteringFunctions/arm_fir_decimate_init_q31.d" \
"./Sources/Cortex-M4-M3/FilteringFunctions/arm_fir_decimate_q15.d" \
"./Sources/Cortex-M4-M3/FilteringFunctions/arm_fir_decimate_q31.d" \
"./Sources/Cortex-M4-M3/FilteringFunctions/arm_fir_f32.d" \
"./Sources/Cortex-M4-M3/FilteringFunctions/arm_fir_fast_q15.d" \
"./Sources/Cortex-M4-M3/FilteringFunctions/arm_fir_fast_q31.d" \
"./Sources/Cortex-M4-M3/FilteringFunctions/arm_fir_init_f32.d" \
"./Sources/Cortex-M4-M3/FilteringFunctions/arm_fir_init_q15.d" \
"./Sources/Cortex-M4-M3/FilteringFunctions/arm_fir_init_q31.d" \
"./Sources/Cortex-M4-M3/FilteringFunctions/arm_fir_init_q7.d" \
"./Sources/Cortex-M4-M3/FilteringFunctions/arm_fir_interpolate_f32.d" \
"./Sources/Cortex-M4-M3/FilteringFunctions/arm_fir_interpolate_init_f32.d" \
"./Sources/Cortex-M4-M3/FilteringFunctions/arm_fir_interpolate_init_q15.d" \
"./Sources/Cortex-M4-M3/FilteringFunctions/arm_fir_interpolate_init_q31.d" \
"./Sources/Cortex-M4-M3/FilteringFunctions/arm_fir_interpolate_q15.d" \
"./Sources/Cortex-M4-M3/FilteringFunctions/arm_fir_interpolate_q31.d" \
"./Sources/Cortex-M4-M3/FilteringFunctions/arm_fir_lattice_f32.d" \
"./Sources/Cortex-M4-M3/FilteringFunctions/arm_fir_lattice_init_f32.d" \
"./Sources/Cortex-M4-M3/FilteringFunctions/arm_fir_lattice_init_q15.d" \
"./Sources/Cortex-M4-M3/FilteringFunctions/arm_fir_lattice_init_q31.d" \
"./Sources/Cortex-M4-M3/FilteringFunctions/arm_fir_lattice_q15.d" \
"./Sources/Cortex-M4-M3/FilteringFunctions/arm_fir_lattice_q31.d" \
"./Sources/Cortex-M4-M3/FilteringFunctions/arm_fir_q15.d" \
"./Sources/Cortex-M4-M3/FilteringFunctions/arm_fir_q31.d" \
"./Sources/Cortex-M4-M3/FilteringFunctions/arm_fir_q7.d" \
"./Sources/Cortex-M4-M3/FilteringFunctions/arm_fir_sparse_f32.d" \
"./Sources/Cortex-M4-M3/FilteringFunctions/arm_fir_sparse_init_f32.d" \
"./Sources/Cortex-M4-M3/FilteringFunctions/arm_fir_sparse_init_q15.d" \
"./Sources/Cortex-M4-M3/FilteringFunctions/arm_fir_sparse_init_q31.d" \
"./Sources/Cortex-M4-M3/FilteringFunctions/arm_fir_sparse_init_q7.d" \
"./Sources/Cortex-M4-M3/FilteringFunctions/arm_fir_sparse_q15.d" \
"./Sources/Cortex-M4-M3/FilteringFunctions/arm_fir_sparse_q31.d" \
"./Sources/Cortex-M4-M3/FilteringFunctions/arm_fir_sparse_q7.d" \
"./Sources/Cortex-M4-M3/FilteringFunctions/arm_iir_lattice_f32.d" \
"./Sources/Cortex-M4-M3/FilteringFunctions/arm_iir_lattice_init_f32.d" \
"./Sources/Cortex-M4-M3/FilteringFunctions/arm_iir_lattice_init_q15.d" \
"./Sources/Cortex-M4-M3/FilteringFunctions/arm_iir_lattice_init_q31.d" \
"./Sources/Cortex-M4-M3/FilteringFunctions/arm_iir_lattice_q15.d" \
"./Sources/Cortex-M4-M3/FilteringFunctions/arm_iir_lattice_q31.d" \
"./Sources/Cortex-M4-M3/FilteringFunctions/arm_lms_f32.d" \
"./Sources/Cortex-M4-M3/FilteringFunctions/arm_lms_init_f32.d" \
"./Sources/Cortex-M4-M3/FilteringFunctions/arm_lms_init_q15.d" \
"./Sources/Cortex-M4-M3/FilteringFunctions/arm_lms_init_q31.d" \
"./Sources/Cortex-M4-M3/FilteringFunctions/arm_lms_norm_f32.d" \
"./Sources/Cortex-M4-M3/FilteringFunctions/arm_lms_norm_init_f32.d" \
"./Sources/Cortex-M4-M3/FilteringFunctions/arm_lms_norm_init_q15.d" \
"./Sources/Cortex-M4-M3/FilteringFunctions/arm_lms_norm_init_q31.d" \
"./Sources/Cortex-M4-M3/FilteringFunctions/arm_lms_norm_q15.d" \
"./Sources/Cortex-M4-M3/FilteringFunctions/arm_lms_norm_q31.d" \
"./Sources/Cortex-M4-M3/FilteringFunctions/arm_lms_q15.d" \
"./Sources/Cortex-M4-M3/FilteringFunctions/arm_lms_q31.d" \

OBJS_OS_FORMAT += \
./Sources/Cortex-M4-M3/FilteringFunctions/arm_biquad_cascade_df1_32x64_init_q31.obj \
./Sources/Cortex-M4-M3/FilteringFunctions/arm_biquad_cascade_df1_32x64_q31.obj \
./Sources/Cortex-M4-M3/FilteringFunctions/arm_biquad_cascade_df1_f32.obj \
./Sources/Cortex-M4-M3/FilteringFunctions/arm_biquad_cascade_df1_fast_q15.obj \
./Sources/Cortex-M4-M3/FilteringFunctions/arm_biquad_cascade_df1_fast_q31.obj \
./Sources/Cortex-M4-M3/FilteringFunctions/arm_biquad_cascade_df1_init_f32.obj \
./Sources/Cortex-M4-M3/FilteringFunctions/arm_biquad_cascade_df1_init_q15.obj \
./Sources/Cortex-M4-M3/FilteringFunctions/arm_biquad_cascade_df1_init_q31.obj \
./Sources/Cortex-M4-M3/FilteringFunctions/arm_biquad_cascade_df1_q15.obj \
./Sources/Cortex-M4-M3/FilteringFunctions/arm_biquad_cascade_df1_q31.obj \
./Sources/Cortex-M4-M3/FilteringFunctions/arm_biquad_cascade_df2T_f32.obj \
./Sources/Cortex-M4-M3/FilteringFunctions/arm_biquad_cascade_df2T_init_f32.obj \
./Sources/Cortex-M4-M3/FilteringFunctions/arm_conv_f32.obj \
./Sources/Cortex-M4-M3/FilteringFunctions/arm_conv_fast_q15.obj \
./Sources/Cortex-M4-M3/FilteringFunctions/arm_conv_fast_q31.obj \
./Sources/Cortex-M4-M3/FilteringFunctions/arm_conv_partial_f32.obj \
./Sources/Cortex-M4-M3/FilteringFunctions/arm_conv_partial_fast_q15.obj \
./Sources/Cortex-M4-M3/FilteringFunctions/arm_conv_partial_fast_q31.obj \
./Sources/Cortex-M4-M3/FilteringFunctions/arm_conv_partial_q15.obj \
./Sources/Cortex-M4-M3/FilteringFunctions/arm_conv_partial_q31.obj \
./Sources/Cortex-M4-M3/FilteringFunctions/arm_conv_partial_q7.obj \
./Sources/Cortex-M4-M3/FilteringFunctions/arm_conv_q15.obj \
./Sources/Cortex-M4-M3/FilteringFunctions/arm_conv_q31.obj \
./Sources/Cortex-M4-M3/FilteringFunctions/arm_conv_q7.obj \
./Sources/Cortex-M4-M3/FilteringFunctions/arm_correlate_f32.obj \
./Sources/Cortex-M4-M3/FilteringFunctions/arm_correlate_fast_q15.obj \
./Sources/Cortex-M4-M3/FilteringFunctions/arm_correlate_fast_q31.obj \
./Sources/Cortex-M4-M3/FilteringFunctions/arm_correlate_q15.obj \
./Sources/Cortex-M4-M3/FilteringFunctions/arm_correlate_q31.obj \
./Sources/Cortex-M4-M3/FilteringFunctions/arm_correlate_q7.obj \
./Sources/Cortex-M4-M3/FilteringFunctions/arm_fir_decimate_f32.obj \
./Sources/Cortex-M4-M3/FilteringFunctions/arm_fir_decimate_fast_q15.obj \
./Sources/Cortex-M4-M3/FilteringFunctions/arm_fir_decimate_fast_q31.obj \
./Sources/Cortex-M4-M3/FilteringFunctions/arm_fir_decimate_init_f32.obj \
./Sources/Cortex-M4-M3/FilteringFunctions/arm_fir_decimate_init_q15.obj \
./Sources/Cortex-M4-M3/FilteringFunctions/arm_fir_decimate_init_q31.obj \
./Sources/Cortex-M4-M3/FilteringFunctions/arm_fir_decimate_q15.obj \
./Sources/Cortex-M4-M3/FilteringFunctions/arm_fir_decimate_q31.obj \
./Sources/Cortex-M4-M3/FilteringFunctions/arm_fir_f32.obj \
./Sources/Cortex-M4-M3/FilteringFunctions/arm_fir_fast_q15.obj \
./Sources/Cortex-M4-M3/FilteringFunctions/arm_fir_fast_q31.obj \
./Sources/Cortex-M4-M3/FilteringFunctions/arm_fir_init_f32.obj \
./Sources/Cortex-M4-M3/FilteringFunctions/arm_fir_init_q15.obj \
./Sources/Cortex-M4-M3/FilteringFunctions/arm_fir_init_q31.obj \
./Sources/Cortex-M4-M3/FilteringFunctions/arm_fir_init_q7.obj \
./Sources/Cortex-M4-M3/FilteringFunctions/arm_fir_interpolate_f32.obj \
./Sources/Cortex-M4-M3/FilteringFunctions/arm_fir_interpolate_init_f32.obj \
./Sources/Cortex-M4-M3/FilteringFunctions/arm_fir_interpolate_init_q15.obj \
./Sources/Cortex-M4-M3/FilteringFunctions/arm_fir_interpolate_init_q31.obj \
./Sources/Cortex-M4-M3/FilteringFunctions/arm_fir_interpolate_q15.obj \
./Sources/Cortex-M4-M3/FilteringFunctions/arm_fir_interpolate_q31.obj \
./Sources/Cortex-M4-M3/FilteringFunctions/arm_fir_lattice_f32.obj \
./Sources/Cortex-M4-M3/FilteringFunctions/arm_fir_lattice_init_f32.obj \
./Sources/Cortex-M4-M3/FilteringFunctions/arm_fir_lattice_init_q15.obj \
./Sources/Cortex-M4-M3/FilteringFunctions/arm_fir_lattice_init_q31.obj \
./Sources/Cortex-M4-M3/FilteringFunctions/arm_fir_lattice_q15.obj \
./Sources/Cortex-M4-M3/FilteringFunctions/arm_fir_lattice_q31.obj \
./Sources/Cortex-M4-M3/FilteringFunctions/arm_fir_q15.obj \
./Sources/Cortex-M4-M3/FilteringFunctions/arm_fir_q31.obj \
./Sources/Cortex-M4-M3/FilteringFunctions/arm_fir_q7.obj \
./Sources/Cortex-M4-M3/FilteringFunctions/arm_fir_sparse_f32.obj \
./Sources/Cortex-M4-M3/FilteringFunctions/arm_fir_sparse_init_f32.obj \
./Sources/Cortex-M4-M3/FilteringFunctions/arm_fir_sparse_init_q15.obj \
./Sources/Cortex-M4-M3/FilteringFunctions/arm_fir_sparse_init_q31.obj \
./Sources/Cortex-M4-M3/FilteringFunctions/arm_fir_sparse_init_q7.obj \
./Sources/Cortex-M4-M3/FilteringFunctions/arm_fir_sparse_q15.obj \
./Sources/Cortex-M4-M3/FilteringFunctions/arm_fir_sparse_q31.obj \
./Sources/Cortex-M4-M3/FilteringFunctions/arm_fir_sparse_q7.obj \
./Sources/Cortex-M4-M3/FilteringFunctions/arm_iir_lattice_f32.obj \
./Sources/Cortex-M4-M3/FilteringFunctions/arm_iir_lattice_init_f32.obj \
./Sources/Cortex-M4-M3/FilteringFunctions/arm_iir_lattice_init_q15.obj \
./Sources/Cortex-M4-M3/FilteringFunctions/arm_iir_lattice_init_q31.obj \
./Sources/Cortex-M4-M3/FilteringFunctions/arm_iir_lattice_q15.obj \
./Sources/Cortex-M4-M3/FilteringFunctions/arm_iir_lattice_q31.obj \
./Sources/Cortex-M4-M3/FilteringFunctions/arm_lms_f32.obj \
./Sources/Cortex-M4-M3/FilteringFunctions/arm_lms_init_f32.obj \
./Sources/Cortex-M4-M3/FilteringFunctions/arm_lms_init_q15.obj \
./Sources/Cortex-M4-M3/FilteringFunctions/arm_lms_init_q31.obj \
./Sources/Cortex-M4-M3/FilteringFunctions/arm_lms_norm_f32.obj \
./Sources/Cortex-M4-M3/FilteringFunctions/arm_lms_norm_init_f32.obj \
./Sources/Cortex-M4-M3/FilteringFunctions/arm_lms_norm_init_q15.obj \
./Sources/Cortex-M4-M3/FilteringFunctions/arm_lms_norm_init_q31.obj \
./Sources/Cortex-M4-M3/FilteringFunctions/arm_lms_norm_q15.obj \
./Sources/Cortex-M4-M3/FilteringFunctions/arm_lms_norm_q31.obj \
./Sources/Cortex-M4-M3/FilteringFunctions/arm_lms_q15.obj \
./Sources/Cortex-M4-M3/FilteringFunctions/arm_lms_q31.obj \


# Each subdirectory must supply rules for building sources it contributes
Sources/Cortex-M4-M3/FilteringFunctions/arm_biquad_cascade_df1_32x64_init_q31.obj: ../Sources/Cortex-M4-M3/FilteringFunctions/arm_biquad_cascade_df1_32x64_init_q31.c
	@echo 'Building file: $<'
	@echo 'Executing target #85 $<'
	@echo 'Invoking: ARM Compiler'
	"$(ARM_ToolsDirEnv)/mwccarm" -gccinc @@"Sources/Cortex-M4-M3/FilteringFunctions/arm_biquad_cascade_df1_32x64_init_q31.args" -o "Sources/Cortex-M4-M3/FilteringFunctions/arm_biquad_cascade_df1_32x64_init_q31.obj" -c "$<" -MD -gccdep
	@echo 'Finished building: $<'
	@echo ' '

Sources/Cortex-M4-M3/FilteringFunctions/%.d: ../Sources/Cortex-M4-M3/FilteringFunctions/%.c
	@echo 'Regenerating dependency file: $@'
	
	@echo ' '

Sources/Cortex-M4-M3/FilteringFunctions/arm_biquad_cascade_df1_32x64_q31.obj: ../Sources/Cortex-M4-M3/FilteringFunctions/arm_biquad_cascade_df1_32x64_q31.c
	@echo 'Building file: $<'
	@echo 'Executing target #86 $<'
	@echo 'Invoking: ARM Compiler'
	"$(ARM_ToolsDirEnv)/mwccarm" -gccinc @@"Sources/Cortex-M4-M3/FilteringFunctions/arm_biquad_cascade_df1_32x64_q31.args" -o "Sources/Cortex-M4-M3/FilteringFunctions/arm_biquad_cascade_df1_32x64_q31.obj" -c "$<" -MD -gccdep
	@echo 'Finished building: $<'
	@echo ' '

Sources/Cortex-M4-M3/FilteringFunctions/arm_biquad_cascade_df1_f32.obj: ../Sources/Cortex-M4-M3/FilteringFunctions/arm_biquad_cascade_df1_f32.c
	@echo 'Building file: $<'
	@echo 'Executing target #87 $<'
	@echo 'Invoking: ARM Compiler'
	"$(ARM_ToolsDirEnv)/mwccarm" -gccinc @@"Sources/Cortex-M4-M3/FilteringFunctions/arm_biquad_cascade_df1_f32.args" -o "Sources/Cortex-M4-M3/FilteringFunctions/arm_biquad_cascade_df1_f32.obj" -c "$<" -MD -gccdep
	@echo 'Finished building: $<'
	@echo ' '

Sources/Cortex-M4-M3/FilteringFunctions/arm_biquad_cascade_df1_fast_q15.obj: ../Sources/Cortex-M4-M3/FilteringFunctions/arm_biquad_cascade_df1_fast_q15.c
	@echo 'Building file: $<'
	@echo 'Executing target #88 $<'
	@echo 'Invoking: ARM Compiler'
	"$(ARM_ToolsDirEnv)/mwccarm" -gccinc @@"Sources/Cortex-M4-M3/FilteringFunctions/arm_biquad_cascade_df1_fast_q15.args" -o "Sources/Cortex-M4-M3/FilteringFunctions/arm_biquad_cascade_df1_fast_q15.obj" -c "$<" -MD -gccdep
	@echo 'Finished building: $<'
	@echo ' '

Sources/Cortex-M4-M3/FilteringFunctions/arm_biquad_cascade_df1_fast_q31.obj: ../Sources/Cortex-M4-M3/FilteringFunctions/arm_biquad_cascade_df1_fast_q31.c
	@echo 'Building file: $<'
	@echo 'Executing target #89 $<'
	@echo 'Invoking: ARM Compiler'
	"$(ARM_ToolsDirEnv)/mwccarm" -gccinc @@"Sources/Cortex-M4-M3/FilteringFunctions/arm_biquad_cascade_df1_fast_q31.args" -o "Sources/Cortex-M4-M3/FilteringFunctions/arm_biquad_cascade_df1_fast_q31.obj" -c "$<" -MD -gccdep
	@echo 'Finished building: $<'
	@echo ' '

Sources/Cortex-M4-M3/FilteringFunctions/arm_biquad_cascade_df1_init_f32.obj: ../Sources/Cortex-M4-M3/FilteringFunctions/arm_biquad_cascade_df1_init_f32.c
	@echo 'Building file: $<'
	@echo 'Executing target #90 $<'
	@echo 'Invoking: ARM Compiler'
	"$(ARM_ToolsDirEnv)/mwccarm" -gccinc @@"Sources/Cortex-M4-M3/FilteringFunctions/arm_biquad_cascade_df1_init_f32.args" -o "Sources/Cortex-M4-M3/FilteringFunctions/arm_biquad_cascade_df1_init_f32.obj" -c "$<" -MD -gccdep
	@echo 'Finished building: $<'
	@echo ' '

Sources/Cortex-M4-M3/FilteringFunctions/arm_biquad_cascade_df1_init_q15.obj: ../Sources/Cortex-M4-M3/FilteringFunctions/arm_biquad_cascade_df1_init_q15.c
	@echo 'Building file: $<'
	@echo 'Executing target #91 $<'
	@echo 'Invoking: ARM Compiler'
	"$(ARM_ToolsDirEnv)/mwccarm" -gccinc @@"Sources/Cortex-M4-M3/FilteringFunctions/arm_biquad_cascade_df1_init_q15.args" -o "Sources/Cortex-M4-M3/FilteringFunctions/arm_biquad_cascade_df1_init_q15.obj" -c "$<" -MD -gccdep
	@echo 'Finished building: $<'
	@echo ' '

Sources/Cortex-M4-M3/FilteringFunctions/arm_biquad_cascade_df1_init_q31.obj: ../Sources/Cortex-M4-M3/FilteringFunctions/arm_biquad_cascade_df1_init_q31.c
	@echo 'Building file: $<'
	@echo 'Executing target #92 $<'
	@echo 'Invoking: ARM Compiler'
	"$(ARM_ToolsDirEnv)/mwccarm" -gccinc @@"Sources/Cortex-M4-M3/FilteringFunctions/arm_biquad_cascade_df1_init_q31.args" -o "Sources/Cortex-M4-M3/FilteringFunctions/arm_biquad_cascade_df1_init_q31.obj" -c "$<" -MD -gccdep
	@echo 'Finished building: $<'
	@echo ' '

Sources/Cortex-M4-M3/FilteringFunctions/arm_biquad_cascade_df1_q15.obj: ../Sources/Cortex-M4-M3/FilteringFunctions/arm_biquad_cascade_df1_q15.c
	@echo 'Building file: $<'
	@echo 'Executing target #93 $<'
	@echo 'Invoking: ARM Compiler'
	"$(ARM_ToolsDirEnv)/mwccarm" -gccinc @@"Sources/Cortex-M4-M3/FilteringFunctions/arm_biquad_cascade_df1_q15.args" -o "Sources/Cortex-M4-M3/FilteringFunctions/arm_biquad_cascade_df1_q15.obj" -c "$<" -MD -gccdep
	@echo 'Finished building: $<'
	@echo ' '

Sources/Cortex-M4-M3/FilteringFunctions/arm_biquad_cascade_df1_q31.obj: ../Sources/Cortex-M4-M3/FilteringFunctions/arm_biquad_cascade_df1_q31.c
	@echo 'Building file: $<'
	@echo 'Executing target #94 $<'
	@echo 'Invoking: ARM Compiler'
	"$(ARM_ToolsDirEnv)/mwccarm" -gccinc @@"Sources/Cortex-M4-M3/FilteringFunctions/arm_biquad_cascade_df1_q31.args" -o "Sources/Cortex-M4-M3/FilteringFunctions/arm_biquad_cascade_df1_q31.obj" -c "$<" -MD -gccdep
	@echo 'Finished building: $<'
	@echo ' '

Sources/Cortex-M4-M3/FilteringFunctions/arm_biquad_cascade_df2T_f32.obj: ../Sources/Cortex-M4-M3/FilteringFunctions/arm_biquad_cascade_df2T_f32.c
	@echo 'Building file: $<'
	@echo 'Executing target #95 $<'
	@echo 'Invoking: ARM Compiler'
	"$(ARM_ToolsDirEnv)/mwccarm" -gccinc @@"Sources/Cortex-M4-M3/FilteringFunctions/arm_biquad_cascade_df2T_f32.args" -o "Sources/Cortex-M4-M3/FilteringFunctions/arm_biquad_cascade_df2T_f32.obj" -c "$<" -MD -gccdep
	@echo 'Finished building: $<'
	@echo ' '

Sources/Cortex-M4-M3/FilteringFunctions/arm_biquad_cascade_df2T_init_f32.obj: ../Sources/Cortex-M4-M3/FilteringFunctions/arm_biquad_cascade_df2T_init_f32.c
	@echo 'Building file: $<'
	@echo 'Executing target #96 $<'
	@echo 'Invoking: ARM Compiler'
	"$(ARM_ToolsDirEnv)/mwccarm" -gccinc @@"Sources/Cortex-M4-M3/FilteringFunctions/arm_biquad_cascade_df2T_init_f32.args" -o "Sources/Cortex-M4-M3/FilteringFunctions/arm_biquad_cascade_df2T_init_f32.obj" -c "$<" -MD -gccdep
	@echo 'Finished building: $<'
	@echo ' '

Sources/Cortex-M4-M3/FilteringFunctions/arm_conv_f32.obj: ../Sources/Cortex-M4-M3/FilteringFunctions/arm_conv_f32.c
	@echo 'Building file: $<'
	@echo 'Executing target #97 $<'
	@echo 'Invoking: ARM Compiler'
	"$(ARM_ToolsDirEnv)/mwccarm" -gccinc @@"Sources/Cortex-M4-M3/FilteringFunctions/arm_conv_f32.args" -o "Sources/Cortex-M4-M3/FilteringFunctions/arm_conv_f32.obj" -c "$<" -MD -gccdep
	@echo 'Finished building: $<'
	@echo ' '

Sources/Cortex-M4-M3/FilteringFunctions/arm_conv_fast_q15.obj: ../Sources/Cortex-M4-M3/FilteringFunctions/arm_conv_fast_q15.c
	@echo 'Building file: $<'
	@echo 'Executing target #98 $<'
	@echo 'Invoking: ARM Compiler'
	"$(ARM_ToolsDirEnv)/mwccarm" -gccinc @@"Sources/Cortex-M4-M3/FilteringFunctions/arm_conv_fast_q15.args" -o "Sources/Cortex-M4-M3/FilteringFunctions/arm_conv_fast_q15.obj" -c "$<" -MD -gccdep
	@echo 'Finished building: $<'
	@echo ' '

Sources/Cortex-M4-M3/FilteringFunctions/arm_conv_fast_q31.obj: ../Sources/Cortex-M4-M3/FilteringFunctions/arm_conv_fast_q31.c
	@echo 'Building file: $<'
	@echo 'Executing target #99 $<'
	@echo 'Invoking: ARM Compiler'
	"$(ARM_ToolsDirEnv)/mwccarm" -gccinc @@"Sources/Cortex-M4-M3/FilteringFunctions/arm_conv_fast_q31.args" -o "Sources/Cortex-M4-M3/FilteringFunctions/arm_conv_fast_q31.obj" -c "$<" -MD -gccdep
	@echo 'Finished building: $<'
	@echo ' '

Sources/Cortex-M4-M3/FilteringFunctions/arm_conv_partial_f32.obj: ../Sources/Cortex-M4-M3/FilteringFunctions/arm_conv_partial_f32.c
	@echo 'Building file: $<'
	@echo 'Executing target #100 $<'
	@echo 'Invoking: ARM Compiler'
	"$(ARM_ToolsDirEnv)/mwccarm" -gccinc @@"Sources/Cortex-M4-M3/FilteringFunctions/arm_conv_partial_f32.args" -o "Sources/Cortex-M4-M3/FilteringFunctions/arm_conv_partial_f32.obj" -c "$<" -MD -gccdep
	@echo 'Finished building: $<'
	@echo ' '

Sources/Cortex-M4-M3/FilteringFunctions/arm_conv_partial_fast_q15.obj: ../Sources/Cortex-M4-M3/FilteringFunctions/arm_conv_partial_fast_q15.c
	@echo 'Building file: $<'
	@echo 'Executing target #101 $<'
	@echo 'Invoking: ARM Compiler'
	"$(ARM_ToolsDirEnv)/mwccarm" -gccinc @@"Sources/Cortex-M4-M3/FilteringFunctions/arm_conv_partial_fast_q15.args" -o "Sources/Cortex-M4-M3/FilteringFunctions/arm_conv_partial_fast_q15.obj" -c "$<" -MD -gccdep
	@echo 'Finished building: $<'
	@echo ' '

Sources/Cortex-M4-M3/FilteringFunctions/arm_conv_partial_fast_q31.obj: ../Sources/Cortex-M4-M3/FilteringFunctions/arm_conv_partial_fast_q31.c
	@echo 'Building file: $<'
	@echo 'Executing target #102 $<'
	@echo 'Invoking: ARM Compiler'
	"$(ARM_ToolsDirEnv)/mwccarm" -gccinc @@"Sources/Cortex-M4-M3/FilteringFunctions/arm_conv_partial_fast_q31.args" -o "Sources/Cortex-M4-M3/FilteringFunctions/arm_conv_partial_fast_q31.obj" -c "$<" -MD -gccdep
	@echo 'Finished building: $<'
	@echo ' '

Sources/Cortex-M4-M3/FilteringFunctions/arm_conv_partial_q15.obj: ../Sources/Cortex-M4-M3/FilteringFunctions/arm_conv_partial_q15.c
	@echo 'Building file: $<'
	@echo 'Executing target #103 $<'
	@echo 'Invoking: ARM Compiler'
	"$(ARM_ToolsDirEnv)/mwccarm" -gccinc @@"Sources/Cortex-M4-M3/FilteringFunctions/arm_conv_partial_q15.args" -o "Sources/Cortex-M4-M3/FilteringFunctions/arm_conv_partial_q15.obj" -c "$<" -MD -gccdep
	@echo 'Finished building: $<'
	@echo ' '

Sources/Cortex-M4-M3/FilteringFunctions/arm_conv_partial_q31.obj: ../Sources/Cortex-M4-M3/FilteringFunctions/arm_conv_partial_q31.c
	@echo 'Building file: $<'
	@echo 'Executing target #104 $<'
	@echo 'Invoking: ARM Compiler'
	"$(ARM_ToolsDirEnv)/mwccarm" -gccinc @@"Sources/Cortex-M4-M3/FilteringFunctions/arm_conv_partial_q31.args" -o "Sources/Cortex-M4-M3/FilteringFunctions/arm_conv_partial_q31.obj" -c "$<" -MD -gccdep
	@echo 'Finished building: $<'
	@echo ' '

Sources/Cortex-M4-M3/FilteringFunctions/arm_conv_partial_q7.obj: ../Sources/Cortex-M4-M3/FilteringFunctions/arm_conv_partial_q7.c
	@echo 'Building file: $<'
	@echo 'Executing target #105 $<'
	@echo 'Invoking: ARM Compiler'
	"$(ARM_ToolsDirEnv)/mwccarm" -gccinc @@"Sources/Cortex-M4-M3/FilteringFunctions/arm_conv_partial_q7.args" -o "Sources/Cortex-M4-M3/FilteringFunctions/arm_conv_partial_q7.obj" -c "$<" -MD -gccdep
	@echo 'Finished building: $<'
	@echo ' '

Sources/Cortex-M4-M3/FilteringFunctions/arm_conv_q15.obj: ../Sources/Cortex-M4-M3/FilteringFunctions/arm_conv_q15.c
	@echo 'Building file: $<'
	@echo 'Executing target #106 $<'
	@echo 'Invoking: ARM Compiler'
	"$(ARM_ToolsDirEnv)/mwccarm" -gccinc @@"Sources/Cortex-M4-M3/FilteringFunctions/arm_conv_q15.args" -o "Sources/Cortex-M4-M3/FilteringFunctions/arm_conv_q15.obj" -c "$<" -MD -gccdep
	@echo 'Finished building: $<'
	@echo ' '

Sources/Cortex-M4-M3/FilteringFunctions/arm_conv_q31.obj: ../Sources/Cortex-M4-M3/FilteringFunctions/arm_conv_q31.c
	@echo 'Building file: $<'
	@echo 'Executing target #107 $<'
	@echo 'Invoking: ARM Compiler'
	"$(ARM_ToolsDirEnv)/mwccarm" -gccinc @@"Sources/Cortex-M4-M3/FilteringFunctions/arm_conv_q31.args" -o "Sources/Cortex-M4-M3/FilteringFunctions/arm_conv_q31.obj" -c "$<" -MD -gccdep
	@echo 'Finished building: $<'
	@echo ' '

Sources/Cortex-M4-M3/FilteringFunctions/arm_conv_q7.obj: ../Sources/Cortex-M4-M3/FilteringFunctions/arm_conv_q7.c
	@echo 'Building file: $<'
	@echo 'Executing target #108 $<'
	@echo 'Invoking: ARM Compiler'
	"$(ARM_ToolsDirEnv)/mwccarm" -gccinc @@"Sources/Cortex-M4-M3/FilteringFunctions/arm_conv_q7.args" -o "Sources/Cortex-M4-M3/FilteringFunctions/arm_conv_q7.obj" -c "$<" -MD -gccdep
	@echo 'Finished building: $<'
	@echo ' '

Sources/Cortex-M4-M3/FilteringFunctions/arm_correlate_f32.obj: ../Sources/Cortex-M4-M3/FilteringFunctions/arm_correlate_f32.c
	@echo 'Building file: $<'
	@echo 'Executing target #109 $<'
	@echo 'Invoking: ARM Compiler'
	"$(ARM_ToolsDirEnv)/mwccarm" -gccinc @@"Sources/Cortex-M4-M3/FilteringFunctions/arm_correlate_f32.args" -o "Sources/Cortex-M4-M3/FilteringFunctions/arm_correlate_f32.obj" -c "$<" -MD -gccdep
	@echo 'Finished building: $<'
	@echo ' '

Sources/Cortex-M4-M3/FilteringFunctions/arm_correlate_fast_q15.obj: ../Sources/Cortex-M4-M3/FilteringFunctions/arm_correlate_fast_q15.c
	@echo 'Building file: $<'
	@echo 'Executing target #110 $<'
	@echo 'Invoking: ARM Compiler'
	"$(ARM_ToolsDirEnv)/mwccarm" -gccinc @@"Sources/Cortex-M4-M3/FilteringFunctions/arm_correlate_fast_q15.args" -o "Sources/Cortex-M4-M3/FilteringFunctions/arm_correlate_fast_q15.obj" -c "$<" -MD -gccdep
	@echo 'Finished building: $<'
	@echo ' '

Sources/Cortex-M4-M3/FilteringFunctions/arm_correlate_fast_q31.obj: ../Sources/Cortex-M4-M3/FilteringFunctions/arm_correlate_fast_q31.c
	@echo 'Building file: $<'
	@echo 'Executing target #111 $<'
	@echo 'Invoking: ARM Compiler'
	"$(ARM_ToolsDirEnv)/mwccarm" -gccinc @@"Sources/Cortex-M4-M3/FilteringFunctions/arm_correlate_fast_q31.args" -o "Sources/Cortex-M4-M3/FilteringFunctions/arm_correlate_fast_q31.obj" -c "$<" -MD -gccdep
	@echo 'Finished building: $<'
	@echo ' '

Sources/Cortex-M4-M3/FilteringFunctions/arm_correlate_q15.obj: ../Sources/Cortex-M4-M3/FilteringFunctions/arm_correlate_q15.c
	@echo 'Building file: $<'
	@echo 'Executing target #112 $<'
	@echo 'Invoking: ARM Compiler'
	"$(ARM_ToolsDirEnv)/mwccarm" -gccinc @@"Sources/Cortex-M4-M3/FilteringFunctions/arm_correlate_q15.args" -o "Sources/Cortex-M4-M3/FilteringFunctions/arm_correlate_q15.obj" -c "$<" -MD -gccdep
	@echo 'Finished building: $<'
	@echo ' '

Sources/Cortex-M4-M3/FilteringFunctions/arm_correlate_q31.obj: ../Sources/Cortex-M4-M3/FilteringFunctions/arm_correlate_q31.c
	@echo 'Building file: $<'
	@echo 'Executing target #113 $<'
	@echo 'Invoking: ARM Compiler'
	"$(ARM_ToolsDirEnv)/mwccarm" -gccinc @@"Sources/Cortex-M4-M3/FilteringFunctions/arm_correlate_q31.args" -o "Sources/Cortex-M4-M3/FilteringFunctions/arm_correlate_q31.obj" -c "$<" -MD -gccdep
	@echo 'Finished building: $<'
	@echo ' '

Sources/Cortex-M4-M3/FilteringFunctions/arm_correlate_q7.obj: ../Sources/Cortex-M4-M3/FilteringFunctions/arm_correlate_q7.c
	@echo 'Building file: $<'
	@echo 'Executing target #114 $<'
	@echo 'Invoking: ARM Compiler'
	"$(ARM_ToolsDirEnv)/mwccarm" -gccinc @@"Sources/Cortex-M4-M3/FilteringFunctions/arm_correlate_q7.args" -o "Sources/Cortex-M4-M3/FilteringFunctions/arm_correlate_q7.obj" -c "$<" -MD -gccdep
	@echo 'Finished building: $<'
	@echo ' '

Sources/Cortex-M4-M3/FilteringFunctions/arm_fir_decimate_f32.obj: ../Sources/Cortex-M4-M3/FilteringFunctions/arm_fir_decimate_f32.c
	@echo 'Building file: $<'
	@echo 'Executing target #115 $<'
	@echo 'Invoking: ARM Compiler'
	"$(ARM_ToolsDirEnv)/mwccarm" -gccinc @@"Sources/Cortex-M4-M3/FilteringFunctions/arm_fir_decimate_f32.args" -o "Sources/Cortex-M4-M3/FilteringFunctions/arm_fir_decimate_f32.obj" -c "$<" -MD -gccdep
	@echo 'Finished building: $<'
	@echo ' '

Sources/Cortex-M4-M3/FilteringFunctions/arm_fir_decimate_fast_q15.obj: ../Sources/Cortex-M4-M3/FilteringFunctions/arm_fir_decimate_fast_q15.c
	@echo 'Building file: $<'
	@echo 'Executing target #116 $<'
	@echo 'Invoking: ARM Compiler'
	"$(ARM_ToolsDirEnv)/mwccarm" -gccinc @@"Sources/Cortex-M4-M3/FilteringFunctions/arm_fir_decimate_fast_q15.args" -o "Sources/Cortex-M4-M3/FilteringFunctions/arm_fir_decimate_fast_q15.obj" -c "$<" -MD -gccdep
	@echo 'Finished building: $<'
	@echo ' '

Sources/Cortex-M4-M3/FilteringFunctions/arm_fir_decimate_fast_q31.obj: ../Sources/Cortex-M4-M3/FilteringFunctions/arm_fir_decimate_fast_q31.c
	@echo 'Building file: $<'
	@echo 'Executing target #117 $<'
	@echo 'Invoking: ARM Compiler'
	"$(ARM_ToolsDirEnv)/mwccarm" -gccinc @@"Sources/Cortex-M4-M3/FilteringFunctions/arm_fir_decimate_fast_q31.args" -o "Sources/Cortex-M4-M3/FilteringFunctions/arm_fir_decimate_fast_q31.obj" -c "$<" -MD -gccdep
	@echo 'Finished building: $<'
	@echo ' '

Sources/Cortex-M4-M3/FilteringFunctions/arm_fir_decimate_init_f32.obj: ../Sources/Cortex-M4-M3/FilteringFunctions/arm_fir_decimate_init_f32.c
	@echo 'Building file: $<'
	@echo 'Executing target #118 $<'
	@echo 'Invoking: ARM Compiler'
	"$(ARM_ToolsDirEnv)/mwccarm" -gccinc @@"Sources/Cortex-M4-M3/FilteringFunctions/arm_fir_decimate_init_f32.args" -o "Sources/Cortex-M4-M3/FilteringFunctions/arm_fir_decimate_init_f32.obj" -c "$<" -MD -gccdep
	@echo 'Finished building: $<'
	@echo ' '

Sources/Cortex-M4-M3/FilteringFunctions/arm_fir_decimate_init_q15.obj: ../Sources/Cortex-M4-M3/FilteringFunctions/arm_fir_decimate_init_q15.c
	@echo 'Building file: $<'
	@echo 'Executing target #119 $<'
	@echo 'Invoking: ARM Compiler'
	"$(ARM_ToolsDirEnv)/mwccarm" -gccinc @@"Sources/Cortex-M4-M3/FilteringFunctions/arm_fir_decimate_init_q15.args" -o "Sources/Cortex-M4-M3/FilteringFunctions/arm_fir_decimate_init_q15.obj" -c "$<" -MD -gccdep
	@echo 'Finished building: $<'
	@echo ' '

Sources/Cortex-M4-M3/FilteringFunctions/arm_fir_decimate_init_q31.obj: ../Sources/Cortex-M4-M3/FilteringFunctions/arm_fir_decimate_init_q31.c
	@echo 'Building file: $<'
	@echo 'Executing target #120 $<'
	@echo 'Invoking: ARM Compiler'
	"$(ARM_ToolsDirEnv)/mwccarm" -gccinc @@"Sources/Cortex-M4-M3/FilteringFunctions/arm_fir_decimate_init_q31.args" -o "Sources/Cortex-M4-M3/FilteringFunctions/arm_fir_decimate_init_q31.obj" -c "$<" -MD -gccdep
	@echo 'Finished building: $<'
	@echo ' '

Sources/Cortex-M4-M3/FilteringFunctions/arm_fir_decimate_q15.obj: ../Sources/Cortex-M4-M3/FilteringFunctions/arm_fir_decimate_q15.c
	@echo 'Building file: $<'
	@echo 'Executing target #121 $<'
	@echo 'Invoking: ARM Compiler'
	"$(ARM_ToolsDirEnv)/mwccarm" -gccinc @@"Sources/Cortex-M4-M3/FilteringFunctions/arm_fir_decimate_q15.args" -o "Sources/Cortex-M4-M3/FilteringFunctions/arm_fir_decimate_q15.obj" -c "$<" -MD -gccdep
	@echo 'Finished building: $<'
	@echo ' '

Sources/Cortex-M4-M3/FilteringFunctions/arm_fir_decimate_q31.obj: ../Sources/Cortex-M4-M3/FilteringFunctions/arm_fir_decimate_q31.c
	@echo 'Building file: $<'
	@echo 'Executing target #122 $<'
	@echo 'Invoking: ARM Compiler'
	"$(ARM_ToolsDirEnv)/mwccarm" -gccinc @@"Sources/Cortex-M4-M3/FilteringFunctions/arm_fir_decimate_q31.args" -o "Sources/Cortex-M4-M3/FilteringFunctions/arm_fir_decimate_q31.obj" -c "$<" -MD -gccdep
	@echo 'Finished building: $<'
	@echo ' '

Sources/Cortex-M4-M3/FilteringFunctions/arm_fir_f32.obj: ../Sources/Cortex-M4-M3/FilteringFunctions/arm_fir_f32.c
	@echo 'Building file: $<'
	@echo 'Executing target #123 $<'
	@echo 'Invoking: ARM Compiler'
	"$(ARM_ToolsDirEnv)/mwccarm" -gccinc @@"Sources/Cortex-M4-M3/FilteringFunctions/arm_fir_f32.args" -o "Sources/Cortex-M4-M3/FilteringFunctions/arm_fir_f32.obj" -c "$<" -MD -gccdep
	@echo 'Finished building: $<'
	@echo ' '

Sources/Cortex-M4-M3/FilteringFunctions/arm_fir_fast_q15.obj: ../Sources/Cortex-M4-M3/FilteringFunctions/arm_fir_fast_q15.c
	@echo 'Building file: $<'
	@echo 'Executing target #124 $<'
	@echo 'Invoking: ARM Compiler'
	"$(ARM_ToolsDirEnv)/mwccarm" -gccinc @@"Sources/Cortex-M4-M3/FilteringFunctions/arm_fir_fast_q15.args" -o "Sources/Cortex-M4-M3/FilteringFunctions/arm_fir_fast_q15.obj" -c "$<" -MD -gccdep
	@echo 'Finished building: $<'
	@echo ' '

Sources/Cortex-M4-M3/FilteringFunctions/arm_fir_fast_q31.obj: ../Sources/Cortex-M4-M3/FilteringFunctions/arm_fir_fast_q31.c
	@echo 'Building file: $<'
	@echo 'Executing target #125 $<'
	@echo 'Invoking: ARM Compiler'
	"$(ARM_ToolsDirEnv)/mwccarm" -gccinc @@"Sources/Cortex-M4-M3/FilteringFunctions/arm_fir_fast_q31.args" -o "Sources/Cortex-M4-M3/FilteringFunctions/arm_fir_fast_q31.obj" -c "$<" -MD -gccdep
	@echo 'Finished building: $<'
	@echo ' '

Sources/Cortex-M4-M3/FilteringFunctions/arm_fir_init_f32.obj: ../Sources/Cortex-M4-M3/FilteringFunctions/arm_fir_init_f32.c
	@echo 'Building file: $<'
	@echo 'Executing target #126 $<'
	@echo 'Invoking: ARM Compiler'
	"$(ARM_ToolsDirEnv)/mwccarm" -gccinc @@"Sources/Cortex-M4-M3/FilteringFunctions/arm_fir_init_f32.args" -o "Sources/Cortex-M4-M3/FilteringFunctions/arm_fir_init_f32.obj" -c "$<" -MD -gccdep
	@echo 'Finished building: $<'
	@echo ' '

Sources/Cortex-M4-M3/FilteringFunctions/arm_fir_init_q15.obj: ../Sources/Cortex-M4-M3/FilteringFunctions/arm_fir_init_q15.c
	@echo 'Building file: $<'
	@echo 'Executing target #127 $<'
	@echo 'Invoking: ARM Compiler'
	"$(ARM_ToolsDirEnv)/mwccarm" -gccinc @@"Sources/Cortex-M4-M3/FilteringFunctions/arm_fir_init_q15.args" -o "Sources/Cortex-M4-M3/FilteringFunctions/arm_fir_init_q15.obj" -c "$<" -MD -gccdep
	@echo 'Finished building: $<'
	@echo ' '

Sources/Cortex-M4-M3/FilteringFunctions/arm_fir_init_q31.obj: ../Sources/Cortex-M4-M3/FilteringFunctions/arm_fir_init_q31.c
	@echo 'Building file: $<'
	@echo 'Executing target #128 $<'
	@echo 'Invoking: ARM Compiler'
	"$(ARM_ToolsDirEnv)/mwccarm" -gccinc @@"Sources/Cortex-M4-M3/FilteringFunctions/arm_fir_init_q31.args" -o "Sources/Cortex-M4-M3/FilteringFunctions/arm_fir_init_q31.obj" -c "$<" -MD -gccdep
	@echo 'Finished building: $<'
	@echo ' '

Sources/Cortex-M4-M3/FilteringFunctions/arm_fir_init_q7.obj: ../Sources/Cortex-M4-M3/FilteringFunctions/arm_fir_init_q7.c
	@echo 'Building file: $<'
	@echo 'Executing target #129 $<'
	@echo 'Invoking: ARM Compiler'
	"$(ARM_ToolsDirEnv)/mwccarm" -gccinc @@"Sources/Cortex-M4-M3/FilteringFunctions/arm_fir_init_q7.args" -o "Sources/Cortex-M4-M3/FilteringFunctions/arm_fir_init_q7.obj" -c "$<" -MD -gccdep
	@echo 'Finished building: $<'
	@echo ' '

Sources/Cortex-M4-M3/FilteringFunctions/arm_fir_interpolate_f32.obj: ../Sources/Cortex-M4-M3/FilteringFunctions/arm_fir_interpolate_f32.c
	@echo 'Building file: $<'
	@echo 'Executing target #130 $<'
	@echo 'Invoking: ARM Compiler'
	"$(ARM_ToolsDirEnv)/mwccarm" -gccinc @@"Sources/Cortex-M4-M3/FilteringFunctions/arm_fir_interpolate_f32.args" -o "Sources/Cortex-M4-M3/FilteringFunctions/arm_fir_interpolate_f32.obj" -c "$<" -MD -gccdep
	@echo 'Finished building: $<'
	@echo ' '

Sources/Cortex-M4-M3/FilteringFunctions/arm_fir_interpolate_init_f32.obj: ../Sources/Cortex-M4-M3/FilteringFunctions/arm_fir_interpolate_init_f32.c
	@echo 'Building file: $<'
	@echo 'Executing target #131 $<'
	@echo 'Invoking: ARM Compiler'
	"$(ARM_ToolsDirEnv)/mwccarm" -gccinc @@"Sources/Cortex-M4-M3/FilteringFunctions/arm_fir_interpolate_init_f32.args" -o "Sources/Cortex-M4-M3/FilteringFunctions/arm_fir_interpolate_init_f32.obj" -c "$<" -MD -gccdep
	@echo 'Finished building: $<'
	@echo ' '

Sources/Cortex-M4-M3/FilteringFunctions/arm_fir_interpolate_init_q15.obj: ../Sources/Cortex-M4-M3/FilteringFunctions/arm_fir_interpolate_init_q15.c
	@echo 'Building file: $<'
	@echo 'Executing target #132 $<'
	@echo 'Invoking: ARM Compiler'
	"$(ARM_ToolsDirEnv)/mwccarm" -gccinc @@"Sources/Cortex-M4-M3/FilteringFunctions/arm_fir_interpolate_init_q15.args" -o "Sources/Cortex-M4-M3/FilteringFunctions/arm_fir_interpolate_init_q15.obj" -c "$<" -MD -gccdep
	@echo 'Finished building: $<'
	@echo ' '

Sources/Cortex-M4-M3/FilteringFunctions/arm_fir_interpolate_init_q31.obj: ../Sources/Cortex-M4-M3/FilteringFunctions/arm_fir_interpolate_init_q31.c
	@echo 'Building file: $<'
	@echo 'Executing target #133 $<'
	@echo 'Invoking: ARM Compiler'
	"$(ARM_ToolsDirEnv)/mwccarm" -gccinc @@"Sources/Cortex-M4-M3/FilteringFunctions/arm_fir_interpolate_init_q31.args" -o "Sources/Cortex-M4-M3/FilteringFunctions/arm_fir_interpolate_init_q31.obj" -c "$<" -MD -gccdep
	@echo 'Finished building: $<'
	@echo ' '

Sources/Cortex-M4-M3/FilteringFunctions/arm_fir_interpolate_q15.obj: ../Sources/Cortex-M4-M3/FilteringFunctions/arm_fir_interpolate_q15.c
	@echo 'Building file: $<'
	@echo 'Executing target #134 $<'
	@echo 'Invoking: ARM Compiler'
	"$(ARM_ToolsDirEnv)/mwccarm" -gccinc @@"Sources/Cortex-M4-M3/FilteringFunctions/arm_fir_interpolate_q15.args" -o "Sources/Cortex-M4-M3/FilteringFunctions/arm_fir_interpolate_q15.obj" -c "$<" -MD -gccdep
	@echo 'Finished building: $<'
	@echo ' '

Sources/Cortex-M4-M3/FilteringFunctions/arm_fir_interpolate_q31.obj: ../Sources/Cortex-M4-M3/FilteringFunctions/arm_fir_interpolate_q31.c
	@echo 'Building file: $<'
	@echo 'Executing target #135 $<'
	@echo 'Invoking: ARM Compiler'
	"$(ARM_ToolsDirEnv)/mwccarm" -gccinc @@"Sources/Cortex-M4-M3/FilteringFunctions/arm_fir_interpolate_q31.args" -o "Sources/Cortex-M4-M3/FilteringFunctions/arm_fir_interpolate_q31.obj" -c "$<" -MD -gccdep
	@echo 'Finished building: $<'
	@echo ' '

Sources/Cortex-M4-M3/FilteringFunctions/arm_fir_lattice_f32.obj: ../Sources/Cortex-M4-M3/FilteringFunctions/arm_fir_lattice_f32.c
	@echo 'Building file: $<'
	@echo 'Executing target #136 $<'
	@echo 'Invoking: ARM Compiler'
	"$(ARM_ToolsDirEnv)/mwccarm" -gccinc @@"Sources/Cortex-M4-M3/FilteringFunctions/arm_fir_lattice_f32.args" -o "Sources/Cortex-M4-M3/FilteringFunctions/arm_fir_lattice_f32.obj" -c "$<" -MD -gccdep
	@echo 'Finished building: $<'
	@echo ' '

Sources/Cortex-M4-M3/FilteringFunctions/arm_fir_lattice_init_f32.obj: ../Sources/Cortex-M4-M3/FilteringFunctions/arm_fir_lattice_init_f32.c
	@echo 'Building file: $<'
	@echo 'Executing target #137 $<'
	@echo 'Invoking: ARM Compiler'
	"$(ARM_ToolsDirEnv)/mwccarm" -gccinc @@"Sources/Cortex-M4-M3/FilteringFunctions/arm_fir_lattice_init_f32.args" -o "Sources/Cortex-M4-M3/FilteringFunctions/arm_fir_lattice_init_f32.obj" -c "$<" -MD -gccdep
	@echo 'Finished building: $<'
	@echo ' '

Sources/Cortex-M4-M3/FilteringFunctions/arm_fir_lattice_init_q15.obj: ../Sources/Cortex-M4-M3/FilteringFunctions/arm_fir_lattice_init_q15.c
	@echo 'Building file: $<'
	@echo 'Executing target #138 $<'
	@echo 'Invoking: ARM Compiler'
	"$(ARM_ToolsDirEnv)/mwccarm" -gccinc @@"Sources/Cortex-M4-M3/FilteringFunctions/arm_fir_lattice_init_q15.args" -o "Sources/Cortex-M4-M3/FilteringFunctions/arm_fir_lattice_init_q15.obj" -c "$<" -MD -gccdep
	@echo 'Finished building: $<'
	@echo ' '

Sources/Cortex-M4-M3/FilteringFunctions/arm_fir_lattice_init_q31.obj: ../Sources/Cortex-M4-M3/FilteringFunctions/arm_fir_lattice_init_q31.c
	@echo 'Building file: $<'
	@echo 'Executing target #139 $<'
	@echo 'Invoking: ARM Compiler'
	"$(ARM_ToolsDirEnv)/mwccarm" -gccinc @@"Sources/Cortex-M4-M3/FilteringFunctions/arm_fir_lattice_init_q31.args" -o "Sources/Cortex-M4-M3/FilteringFunctions/arm_fir_lattice_init_q31.obj" -c "$<" -MD -gccdep
	@echo 'Finished building: $<'
	@echo ' '

Sources/Cortex-M4-M3/FilteringFunctions/arm_fir_lattice_q15.obj: ../Sources/Cortex-M4-M3/FilteringFunctions/arm_fir_lattice_q15.c
	@echo 'Building file: $<'
	@echo 'Executing target #140 $<'
	@echo 'Invoking: ARM Compiler'
	"$(ARM_ToolsDirEnv)/mwccarm" -gccinc @@"Sources/Cortex-M4-M3/FilteringFunctions/arm_fir_lattice_q15.args" -o "Sources/Cortex-M4-M3/FilteringFunctions/arm_fir_lattice_q15.obj" -c "$<" -MD -gccdep
	@echo 'Finished building: $<'
	@echo ' '

Sources/Cortex-M4-M3/FilteringFunctions/arm_fir_lattice_q31.obj: ../Sources/Cortex-M4-M3/FilteringFunctions/arm_fir_lattice_q31.c
	@echo 'Building file: $<'
	@echo 'Executing target #141 $<'
	@echo 'Invoking: ARM Compiler'
	"$(ARM_ToolsDirEnv)/mwccarm" -gccinc @@"Sources/Cortex-M4-M3/FilteringFunctions/arm_fir_lattice_q31.args" -o "Sources/Cortex-M4-M3/FilteringFunctions/arm_fir_lattice_q31.obj" -c "$<" -MD -gccdep
	@echo 'Finished building: $<'
	@echo ' '

Sources/Cortex-M4-M3/FilteringFunctions/arm_fir_q15.obj: ../Sources/Cortex-M4-M3/FilteringFunctions/arm_fir_q15.c
	@echo 'Building file: $<'
	@echo 'Executing target #142 $<'
	@echo 'Invoking: ARM Compiler'
	"$(ARM_ToolsDirEnv)/mwccarm" -gccinc @@"Sources/Cortex-M4-M3/FilteringFunctions/arm_fir_q15.args" -o "Sources/Cortex-M4-M3/FilteringFunctions/arm_fir_q15.obj" -c "$<" -MD -gccdep
	@echo 'Finished building: $<'
	@echo ' '

Sources/Cortex-M4-M3/FilteringFunctions/arm_fir_q31.obj: ../Sources/Cortex-M4-M3/FilteringFunctions/arm_fir_q31.c
	@echo 'Building file: $<'
	@echo 'Executing target #143 $<'
	@echo 'Invoking: ARM Compiler'
	"$(ARM_ToolsDirEnv)/mwccarm" -gccinc @@"Sources/Cortex-M4-M3/FilteringFunctions/arm_fir_q31.args" -o "Sources/Cortex-M4-M3/FilteringFunctions/arm_fir_q31.obj" -c "$<" -MD -gccdep
	@echo 'Finished building: $<'
	@echo ' '

Sources/Cortex-M4-M3/FilteringFunctions/arm_fir_q7.obj: ../Sources/Cortex-M4-M3/FilteringFunctions/arm_fir_q7.c
	@echo 'Building file: $<'
	@echo 'Executing target #144 $<'
	@echo 'Invoking: ARM Compiler'
	"$(ARM_ToolsDirEnv)/mwccarm" -gccinc @@"Sources/Cortex-M4-M3/FilteringFunctions/arm_fir_q7.args" -o "Sources/Cortex-M4-M3/FilteringFunctions/arm_fir_q7.obj" -c "$<" -MD -gccdep
	@echo 'Finished building: $<'
	@echo ' '

Sources/Cortex-M4-M3/FilteringFunctions/arm_fir_sparse_f32.obj: ../Sources/Cortex-M4-M3/FilteringFunctions/arm_fir_sparse_f32.c
	@echo 'Building file: $<'
	@echo 'Executing target #145 $<'
	@echo 'Invoking: ARM Compiler'
	"$(ARM_ToolsDirEnv)/mwccarm" -gccinc @@"Sources/Cortex-M4-M3/FilteringFunctions/arm_fir_sparse_f32.args" -o "Sources/Cortex-M4-M3/FilteringFunctions/arm_fir_sparse_f32.obj" -c "$<" -MD -gccdep
	@echo 'Finished building: $<'
	@echo ' '

Sources/Cortex-M4-M3/FilteringFunctions/arm_fir_sparse_init_f32.obj: ../Sources/Cortex-M4-M3/FilteringFunctions/arm_fir_sparse_init_f32.c
	@echo 'Building file: $<'
	@echo 'Executing target #146 $<'
	@echo 'Invoking: ARM Compiler'
	"$(ARM_ToolsDirEnv)/mwccarm" -gccinc @@"Sources/Cortex-M4-M3/FilteringFunctions/arm_fir_sparse_init_f32.args" -o "Sources/Cortex-M4-M3/FilteringFunctions/arm_fir_sparse_init_f32.obj" -c "$<" -MD -gccdep
	@echo 'Finished building: $<'
	@echo ' '

Sources/Cortex-M4-M3/FilteringFunctions/arm_fir_sparse_init_q15.obj: ../Sources/Cortex-M4-M3/FilteringFunctions/arm_fir_sparse_init_q15.c
	@echo 'Building file: $<'
	@echo 'Executing target #147 $<'
	@echo 'Invoking: ARM Compiler'
	"$(ARM_ToolsDirEnv)/mwccarm" -gccinc @@"Sources/Cortex-M4-M3/FilteringFunctions/arm_fir_sparse_init_q15.args" -o "Sources/Cortex-M4-M3/FilteringFunctions/arm_fir_sparse_init_q15.obj" -c "$<" -MD -gccdep
	@echo 'Finished building: $<'
	@echo ' '

Sources/Cortex-M4-M3/FilteringFunctions/arm_fir_sparse_init_q31.obj: ../Sources/Cortex-M4-M3/FilteringFunctions/arm_fir_sparse_init_q31.c
	@echo 'Building file: $<'
	@echo 'Executing target #148 $<'
	@echo 'Invoking: ARM Compiler'
	"$(ARM_ToolsDirEnv)/mwccarm" -gccinc @@"Sources/Cortex-M4-M3/FilteringFunctions/arm_fir_sparse_init_q31.args" -o "Sources/Cortex-M4-M3/FilteringFunctions/arm_fir_sparse_init_q31.obj" -c "$<" -MD -gccdep
	@echo 'Finished building: $<'
	@echo ' '

Sources/Cortex-M4-M3/FilteringFunctions/arm_fir_sparse_init_q7.obj: ../Sources/Cortex-M4-M3/FilteringFunctions/arm_fir_sparse_init_q7.c
	@echo 'Building file: $<'
	@echo 'Executing target #149 $<'
	@echo 'Invoking: ARM Compiler'
	"$(ARM_ToolsDirEnv)/mwccarm" -gccinc @@"Sources/Cortex-M4-M3/FilteringFunctions/arm_fir_sparse_init_q7.args" -o "Sources/Cortex-M4-M3/FilteringFunctions/arm_fir_sparse_init_q7.obj" -c "$<" -MD -gccdep
	@echo 'Finished building: $<'
	@echo ' '

Sources/Cortex-M4-M3/FilteringFunctions/arm_fir_sparse_q15.obj: ../Sources/Cortex-M4-M3/FilteringFunctions/arm_fir_sparse_q15.c
	@echo 'Building file: $<'
	@echo 'Executing target #150 $<'
	@echo 'Invoking: ARM Compiler'
	"$(ARM_ToolsDirEnv)/mwccarm" -gccinc @@"Sources/Cortex-M4-M3/FilteringFunctions/arm_fir_sparse_q15.args" -o "Sources/Cortex-M4-M3/FilteringFunctions/arm_fir_sparse_q15.obj" -c "$<" -MD -gccdep
	@echo 'Finished building: $<'
	@echo ' '

Sources/Cortex-M4-M3/FilteringFunctions/arm_fir_sparse_q31.obj: ../Sources/Cortex-M4-M3/FilteringFunctions/arm_fir_sparse_q31.c
	@echo 'Building file: $<'
	@echo 'Executing target #151 $<'
	@echo 'Invoking: ARM Compiler'
	"$(ARM_ToolsDirEnv)/mwccarm" -gccinc @@"Sources/Cortex-M4-M3/FilteringFunctions/arm_fir_sparse_q31.args" -o "Sources/Cortex-M4-M3/FilteringFunctions/arm_fir_sparse_q31.obj" -c "$<" -MD -gccdep
	@echo 'Finished building: $<'
	@echo ' '

Sources/Cortex-M4-M3/FilteringFunctions/arm_fir_sparse_q7.obj: ../Sources/Cortex-M4-M3/FilteringFunctions/arm_fir_sparse_q7.c
	@echo 'Building file: $<'
	@echo 'Executing target #152 $<'
	@echo 'Invoking: ARM Compiler'
	"$(ARM_ToolsDirEnv)/mwccarm" -gccinc @@"Sources/Cortex-M4-M3/FilteringFunctions/arm_fir_sparse_q7.args" -o "Sources/Cortex-M4-M3/FilteringFunctions/arm_fir_sparse_q7.obj" -c "$<" -MD -gccdep
	@echo 'Finished building: $<'
	@echo ' '

Sources/Cortex-M4-M3/FilteringFunctions/arm_iir_lattice_f32.obj: ../Sources/Cortex-M4-M3/FilteringFunctions/arm_iir_lattice_f32.c
	@echo 'Building file: $<'
	@echo 'Executing target #153 $<'
	@echo 'Invoking: ARM Compiler'
	"$(ARM_ToolsDirEnv)/mwccarm" -gccinc @@"Sources/Cortex-M4-M3/FilteringFunctions/arm_iir_lattice_f32.args" -o "Sources/Cortex-M4-M3/FilteringFunctions/arm_iir_lattice_f32.obj" -c "$<" -MD -gccdep
	@echo 'Finished building: $<'
	@echo ' '

Sources/Cortex-M4-M3/FilteringFunctions/arm_iir_lattice_init_f32.obj: ../Sources/Cortex-M4-M3/FilteringFunctions/arm_iir_lattice_init_f32.c
	@echo 'Building file: $<'
	@echo 'Executing target #154 $<'
	@echo 'Invoking: ARM Compiler'
	"$(ARM_ToolsDirEnv)/mwccarm" -gccinc @@"Sources/Cortex-M4-M3/FilteringFunctions/arm_iir_lattice_init_f32.args" -o "Sources/Cortex-M4-M3/FilteringFunctions/arm_iir_lattice_init_f32.obj" -c "$<" -MD -gccdep
	@echo 'Finished building: $<'
	@echo ' '

Sources/Cortex-M4-M3/FilteringFunctions/arm_iir_lattice_init_q15.obj: ../Sources/Cortex-M4-M3/FilteringFunctions/arm_iir_lattice_init_q15.c
	@echo 'Building file: $<'
	@echo 'Executing target #155 $<'
	@echo 'Invoking: ARM Compiler'
	"$(ARM_ToolsDirEnv)/mwccarm" -gccinc @@"Sources/Cortex-M4-M3/FilteringFunctions/arm_iir_lattice_init_q15.args" -o "Sources/Cortex-M4-M3/FilteringFunctions/arm_iir_lattice_init_q15.obj" -c "$<" -MD -gccdep
	@echo 'Finished building: $<'
	@echo ' '

Sources/Cortex-M4-M3/FilteringFunctions/arm_iir_lattice_init_q31.obj: ../Sources/Cortex-M4-M3/FilteringFunctions/arm_iir_lattice_init_q31.c
	@echo 'Building file: $<'
	@echo 'Executing target #156 $<'
	@echo 'Invoking: ARM Compiler'
	"$(ARM_ToolsDirEnv)/mwccarm" -gccinc @@"Sources/Cortex-M4-M3/FilteringFunctions/arm_iir_lattice_init_q31.args" -o "Sources/Cortex-M4-M3/FilteringFunctions/arm_iir_lattice_init_q31.obj" -c "$<" -MD -gccdep
	@echo 'Finished building: $<'
	@echo ' '

Sources/Cortex-M4-M3/FilteringFunctions/arm_iir_lattice_q15.obj: ../Sources/Cortex-M4-M3/FilteringFunctions/arm_iir_lattice_q15.c
	@echo 'Building file: $<'
	@echo 'Executing target #157 $<'
	@echo 'Invoking: ARM Compiler'
	"$(ARM_ToolsDirEnv)/mwccarm" -gccinc @@"Sources/Cortex-M4-M3/FilteringFunctions/arm_iir_lattice_q15.args" -o "Sources/Cortex-M4-M3/FilteringFunctions/arm_iir_lattice_q15.obj" -c "$<" -MD -gccdep
	@echo 'Finished building: $<'
	@echo ' '

Sources/Cortex-M4-M3/FilteringFunctions/arm_iir_lattice_q31.obj: ../Sources/Cortex-M4-M3/FilteringFunctions/arm_iir_lattice_q31.c
	@echo 'Building file: $<'
	@echo 'Executing target #158 $<'
	@echo 'Invoking: ARM Compiler'
	"$(ARM_ToolsDirEnv)/mwccarm" -gccinc @@"Sources/Cortex-M4-M3/FilteringFunctions/arm_iir_lattice_q31.args" -o "Sources/Cortex-M4-M3/FilteringFunctions/arm_iir_lattice_q31.obj" -c "$<" -MD -gccdep
	@echo 'Finished building: $<'
	@echo ' '

Sources/Cortex-M4-M3/FilteringFunctions/arm_lms_f32.obj: ../Sources/Cortex-M4-M3/FilteringFunctions/arm_lms_f32.c
	@echo 'Building file: $<'
	@echo 'Executing target #159 $<'
	@echo 'Invoking: ARM Compiler'
	"$(ARM_ToolsDirEnv)/mwccarm" -gccinc @@"Sources/Cortex-M4-M3/FilteringFunctions/arm_lms_f32.args" -o "Sources/Cortex-M4-M3/FilteringFunctions/arm_lms_f32.obj" -c "$<" -MD -gccdep
	@echo 'Finished building: $<'
	@echo ' '

Sources/Cortex-M4-M3/FilteringFunctions/arm_lms_init_f32.obj: ../Sources/Cortex-M4-M3/FilteringFunctions/arm_lms_init_f32.c
	@echo 'Building file: $<'
	@echo 'Executing target #160 $<'
	@echo 'Invoking: ARM Compiler'
	"$(ARM_ToolsDirEnv)/mwccarm" -gccinc @@"Sources/Cortex-M4-M3/FilteringFunctions/arm_lms_init_f32.args" -o "Sources/Cortex-M4-M3/FilteringFunctions/arm_lms_init_f32.obj" -c "$<" -MD -gccdep
	@echo 'Finished building: $<'
	@echo ' '

Sources/Cortex-M4-M3/FilteringFunctions/arm_lms_init_q15.obj: ../Sources/Cortex-M4-M3/FilteringFunctions/arm_lms_init_q15.c
	@echo 'Building file: $<'
	@echo 'Executing target #161 $<'
	@echo 'Invoking: ARM Compiler'
	"$(ARM_ToolsDirEnv)/mwccarm" -gccinc @@"Sources/Cortex-M4-M3/FilteringFunctions/arm_lms_init_q15.args" -o "Sources/Cortex-M4-M3/FilteringFunctions/arm_lms_init_q15.obj" -c "$<" -MD -gccdep
	@echo 'Finished building: $<'
	@echo ' '

Sources/Cortex-M4-M3/FilteringFunctions/arm_lms_init_q31.obj: ../Sources/Cortex-M4-M3/FilteringFunctions/arm_lms_init_q31.c
	@echo 'Building file: $<'
	@echo 'Executing target #162 $<'
	@echo 'Invoking: ARM Compiler'
	"$(ARM_ToolsDirEnv)/mwccarm" -gccinc @@"Sources/Cortex-M4-M3/FilteringFunctions/arm_lms_init_q31.args" -o "Sources/Cortex-M4-M3/FilteringFunctions/arm_lms_init_q31.obj" -c "$<" -MD -gccdep
	@echo 'Finished building: $<'
	@echo ' '

Sources/Cortex-M4-M3/FilteringFunctions/arm_lms_norm_f32.obj: ../Sources/Cortex-M4-M3/FilteringFunctions/arm_lms_norm_f32.c
	@echo 'Building file: $<'
	@echo 'Executing target #163 $<'
	@echo 'Invoking: ARM Compiler'
	"$(ARM_ToolsDirEnv)/mwccarm" -gccinc @@"Sources/Cortex-M4-M3/FilteringFunctions/arm_lms_norm_f32.args" -o "Sources/Cortex-M4-M3/FilteringFunctions/arm_lms_norm_f32.obj" -c "$<" -MD -gccdep
	@echo 'Finished building: $<'
	@echo ' '

Sources/Cortex-M4-M3/FilteringFunctions/arm_lms_norm_init_f32.obj: ../Sources/Cortex-M4-M3/FilteringFunctions/arm_lms_norm_init_f32.c
	@echo 'Building file: $<'
	@echo 'Executing target #164 $<'
	@echo 'Invoking: ARM Compiler'
	"$(ARM_ToolsDirEnv)/mwccarm" -gccinc @@"Sources/Cortex-M4-M3/FilteringFunctions/arm_lms_norm_init_f32.args" -o "Sources/Cortex-M4-M3/FilteringFunctions/arm_lms_norm_init_f32.obj" -c "$<" -MD -gccdep
	@echo 'Finished building: $<'
	@echo ' '

Sources/Cortex-M4-M3/FilteringFunctions/arm_lms_norm_init_q15.obj: ../Sources/Cortex-M4-M3/FilteringFunctions/arm_lms_norm_init_q15.c
	@echo 'Building file: $<'
	@echo 'Executing target #165 $<'
	@echo 'Invoking: ARM Compiler'
	"$(ARM_ToolsDirEnv)/mwccarm" -gccinc @@"Sources/Cortex-M4-M3/FilteringFunctions/arm_lms_norm_init_q15.args" -o "Sources/Cortex-M4-M3/FilteringFunctions/arm_lms_norm_init_q15.obj" -c "$<" -MD -gccdep
	@echo 'Finished building: $<'
	@echo ' '

Sources/Cortex-M4-M3/FilteringFunctions/arm_lms_norm_init_q31.obj: ../Sources/Cortex-M4-M3/FilteringFunctions/arm_lms_norm_init_q31.c
	@echo 'Building file: $<'
	@echo 'Executing target #166 $<'
	@echo 'Invoking: ARM Compiler'
	"$(ARM_ToolsDirEnv)/mwccarm" -gccinc @@"Sources/Cortex-M4-M3/FilteringFunctions/arm_lms_norm_init_q31.args" -o "Sources/Cortex-M4-M3/FilteringFunctions/arm_lms_norm_init_q31.obj" -c "$<" -MD -gccdep
	@echo 'Finished building: $<'
	@echo ' '

Sources/Cortex-M4-M3/FilteringFunctions/arm_lms_norm_q15.obj: ../Sources/Cortex-M4-M3/FilteringFunctions/arm_lms_norm_q15.c
	@echo 'Building file: $<'
	@echo 'Executing target #167 $<'
	@echo 'Invoking: ARM Compiler'
	"$(ARM_ToolsDirEnv)/mwccarm" -gccinc @@"Sources/Cortex-M4-M3/FilteringFunctions/arm_lms_norm_q15.args" -o "Sources/Cortex-M4-M3/FilteringFunctions/arm_lms_norm_q15.obj" -c "$<" -MD -gccdep
	@echo 'Finished building: $<'
	@echo ' '

Sources/Cortex-M4-M3/FilteringFunctions/arm_lms_norm_q31.obj: ../Sources/Cortex-M4-M3/FilteringFunctions/arm_lms_norm_q31.c
	@echo 'Building file: $<'
	@echo 'Executing target #168 $<'
	@echo 'Invoking: ARM Compiler'
	"$(ARM_ToolsDirEnv)/mwccarm" -gccinc @@"Sources/Cortex-M4-M3/FilteringFunctions/arm_lms_norm_q31.args" -o "Sources/Cortex-M4-M3/FilteringFunctions/arm_lms_norm_q31.obj" -c "$<" -MD -gccdep
	@echo 'Finished building: $<'
	@echo ' '

Sources/Cortex-M4-M3/FilteringFunctions/arm_lms_q15.obj: ../Sources/Cortex-M4-M3/FilteringFunctions/arm_lms_q15.c
	@echo 'Building file: $<'
	@echo 'Executing target #169 $<'
	@echo 'Invoking: ARM Compiler'
	"$(ARM_ToolsDirEnv)/mwccarm" -gccinc @@"Sources/Cortex-M4-M3/FilteringFunctions/arm_lms_q15.args" -o "Sources/Cortex-M4-M3/FilteringFunctions/arm_lms_q15.obj" -c "$<" -MD -gccdep
	@echo 'Finished building: $<'
	@echo ' '

Sources/Cortex-M4-M3/FilteringFunctions/arm_lms_q31.obj: ../Sources/Cortex-M4-M3/FilteringFunctions/arm_lms_q31.c
	@echo 'Building file: $<'
	@echo 'Executing target #170 $<'
	@echo 'Invoking: ARM Compiler'
	"$(ARM_ToolsDirEnv)/mwccarm" -gccinc @@"Sources/Cortex-M4-M3/FilteringFunctions/arm_lms_q31.args" -o "Sources/Cortex-M4-M3/FilteringFunctions/arm_lms_q31.obj" -c "$<" -MD -gccdep
	@echo 'Finished building: $<'
	@echo ' '



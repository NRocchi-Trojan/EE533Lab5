/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                         */
/*  \   \        Copyright (c) 2003-2007 Xilinx, Inc.                 */
/*  /   /        All Right Reserved.                                  */
/* /---/   /\                                                         */
/* \   \  /  \                                                        */
/*  \___\/\___\                                                       */
/**********************************************************************/

/* This file is designed for use with ISim build 0x734844ce */

#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "//vmware-host/Shared Folders/shared/SharedProjects/EE533Lab5-main/PipelinedDatapath/PipelineDatpath.ant";
static unsigned int ng1[] = {0U, 0U};
static unsigned int ng2[] = {1U, 0U};
static const char *ng3 = "\\\\vmware-host\\shared folders\\shared\\SharedProjects\\EE533Lab5-main\\PipelinedDatapath\\PipelineDatpath.ano";
static const char *ng4 = "Success! Annotation Simulation Complete.";
static const char *ng5 = "Total[%d]";



static void I31_0(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;

LAB0:    t1 = (t0 + 1864U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(32, ng0);

LAB4:    xsi_set_current_line(33, ng0);
    t2 = (t0 + 1780);
    xsi_process_wait(t2, 0LL);
    *((char **)t1) = &&LAB5;

LAB1:    return;
LAB5:    xsi_set_current_line(34, ng0);

LAB6:    xsi_set_current_line(35, ng0);

LAB7:    xsi_set_current_line(36, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 928);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(37, ng0);
    t2 = (t0 + 1780);
    xsi_process_wait(t2, 10000000LL);
    *((char **)t1) = &&LAB8;
    goto LAB1;

LAB8:    xsi_set_current_line(37, ng0);
    t3 = ((char*)((ng2)));
    t4 = (t0 + 928);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 1);
    xsi_set_current_line(38, ng0);
    t2 = (t0 + 1780);
    xsi_process_wait(t2, 10000000LL);
    *((char **)t1) = &&LAB9;
    goto LAB1;

LAB9:    goto LAB6;

LAB10:    goto LAB1;

}

static void I51_1(char *t0)
{
    char t3[8];
    char *t1;
    char *t2;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;

LAB0:    t1 = (t0 + 1992U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(51, ng0);

LAB4:    xsi_set_current_line(52, ng0);
    *((int *)t3) = xsi_vlogfile_file_open_of_cname(ng3);
    t2 = (t3 + 4);
    *((int *)t2) = 0;
    t4 = (t0 + 1296);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 32);
    xsi_set_current_line(53, ng0);
    t2 = (t0 + 1908);
    xsi_process_wait(t2, 1020000000LL);
    *((char **)t1) = &&LAB5;

LAB1:    return;
LAB5:    xsi_set_current_line(54, ng0);
    xsi_vlogfile_write(1, 0, ng4, 1, t0);
    xsi_set_current_line(55, ng0);
    t2 = (t0 + 1296);
    t4 = (t2 + 32U);
    t5 = *((char **)t4);
    t6 = (t0 + 1388);
    t7 = (t6 + 32U);
    t8 = *((char **)t7);
    xsi_vlogfile_fwrite(*((unsigned int *)t5), 1, 0, ng5, 2, t0, (char)119, t8, 32);
    xsi_set_current_line(56, ng0);
    t2 = (t0 + 1296);
    t4 = (t2 + 32U);
    t5 = *((char **)t4);
    xsi_vlogfile_fclose(*((unsigned int *)t5));
    xsi_set_current_line(57, ng0);
    xsi_vlog_finish(1);
    goto LAB1;

}

static void I60_2(char *t0)
{

LAB0:    xsi_set_current_line(60, ng0);

LAB2:
LAB1:    return;
}


extern void work_m_00000000002688018844_3701960831_init()
{
	static char *pe[] = {(void *)I31_0,(void *)I51_1,(void *)I60_2};
	xsi_register_didat("work_m_00000000002688018844_3701960831", "isim/_tmp/work/m_00000000002688018844_3701960831.didat");
	xsi_register_executes(pe);
}

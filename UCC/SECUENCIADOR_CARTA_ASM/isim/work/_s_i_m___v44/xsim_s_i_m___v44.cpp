#include "isim/work/_s_i_m___v44/_s_i_m___v44.h"
#include "isim/work/glbl/glbl.h"
static const char * HSimCopyRightNotice = "Copyright 2004-2005, Xilinx Inc. All rights reserved.";
#include "C:/Xilinx/vhdl/hdp/nt/ieee/std_logic_1164/std_logic_1164.h"
#include "C:/Xilinx/vhdl/hdp/nt/ieee/std_logic_arith/std_logic_arith.h"
#include "C:/Xilinx/vhdl/hdp/nt/ieee/std_logic_unsigned/std_logic_unsigned.h"


#include "work/_s_i_m___v44/_s_i_m___v44.h"
static HSim__s6* IF0(HSim__s6 *Arch,const char* label,int nGenerics, 
va_list vap)
{
    HSim__s6 *blk = new workM_s_i_m___v44(label); 
    return blk;
}


#include "work/_r_e_g__3_e_r___e_s_t_a_d_o/_r_e_g__3_e_r___e_s_t_a_d_o.h"
static HSim__s6* IF1(HSim__s6 *Arch,const char* label,int nGenerics, 
va_list vap)
{
    HSim__s6 *blk = new workM_r_e_g__3_e_r___e_s_t_a_d_o(label); 
    return blk;
}


#include "unisim_ver.auxlib/_g_n_d/_g_n_d.h"
static HSim__s6* IF2(HSim__s6 *Arch,const char* label,int nGenerics, 
va_list vap)
{
    HSim__s6 *blk = new unisim_ver_auxlibM_g_n_d(label); 
    return blk;
}


#include "unisim_ver.auxlib/_a_n_d2/_a_n_d2.h"
static HSim__s6* IF3(HSim__s6 *Arch,const char* label,int nGenerics, 
va_list vap)
{
    HSim__s6 *blk = new unisim_ver_auxlibM_a_n_d2(label); 
    return blk;
}


#include "work/_t_r_a_n_s_e_i_v_e_r/_t_r_a_n_s_e_i_v_e_r.h"
static HSim__s6* IF4(HSim__s6 *Arch,const char* label,int nGenerics, 
va_list vap)
{
    HSim__s6 *blk = new workM_t_r_a_n_s_e_i_v_e_r(label); 
    return blk;
}


#include "unisim_ver.auxlib/_g_n_d/_g_n_d.h"
static HSim__s6* IF5(HSim__s6 *Arch,const char* label,int nGenerics, 
va_list vap)
{
    HSim__s6 *blk = new unisim_ver_auxlibM_g_n_d(label); 
    return blk;
}


#include "work/_arquitectura_compuesta/_arquitectura_compuesta.h"
static HSim__s6* IF6(HSim__s6 *Arch,const char* label,int nGenerics, 
va_list vap)
{
    HSim__s6 *blk = new workM_arquitectura_compuesta(label); 
    return blk;
}


#include "unisim_ver.auxlib/_a_n_d2/_a_n_d2.h"
static HSim__s6* IF7(HSim__s6 *Arch,const char* label,int nGenerics, 
va_list vap)
{
    HSim__s6 *blk = new unisim_ver_auxlibM_a_n_d2(label); 
    return blk;
}


#include "work/_u_p_a/_u_p_a.h"
static HSim__s6* IF8(HSim__s6 *Arch,const char* label,int nGenerics, 
va_list vap)
{
    HSim__s6 *blk = new workM_u_p_a(label); 
    return blk;
}


#include "work/_m_u_l_t_i_p_l_i_c_a_c_i_o_n/_m_u_l_t_i_p_l_i_c_a_c_i_o_n.h"
static HSim__s6* IF9(HSim__s6 *Arch,const char* label,int nGenerics, 
va_list vap)
{
    HSim__s6 *blk = new workM_m_u_l_t_i_p_l_i_c_a_c_i_o_n(label); 
    return blk;
}


#include "unisim_ver.auxlib/_g_n_d/_g_n_d.h"
static HSim__s6* IF10(HSim__s6 *Arch,const char* label,int nGenerics, 
va_list vap)
{
    HSim__s6 *blk = new unisim_ver_auxlibM_g_n_d(label); 
    return blk;
}


#include "work/_u_c_c___t_r_a_n_s/_u_c_c___t_r_a_n_s.h"
static HSim__s6* IF11(HSim__s6 *Arch,const char* label,int nGenerics, 
va_list vap)
{
    HSim__s6 *blk = new workM_u_c_c___t_r_a_n_s(label); 
    return blk;
}


#include "work/glbl/glbl.h"
static HSim__s6* IF12(HSim__s6 *Arch,const char* label,int nGenerics, 
va_list vap)
{
    HSim__s6 *blk = new workMglbl(label); 
    return blk;
}


static HSim__s6* IF13(HSim__s6 *Arch,const char* label,int nGenerics,va_list vap)
{
    extern HSim__s6* createWork_secuenciador_behavioral(const char*);
    HSim__s6 *blk = createWork_secuenciador_behavioral(label);
    return blk;
}


static HSim__s6* IF14(HSim__s6 *Arch,const char* label,int nGenerics,va_list vap)
{
    extern HSim__s6* createWork_memoria_behavioral(const char*);
    HSim__s6 *blk = createWork_memoria_behavioral(label);
    return blk;
}


static HSim__s6* IF15(HSim__s6 *Arch,const char* label,int nGenerics,va_list vap)
{
    extern HSim__s6* createWork_mux_4_1_behavioral(const char*);
    HSim__s6 *blk = createWork_mux_4_1_behavioral(label);
    return blk;
}


static HSim__s6* IF16(HSim__s6 *Arch,const char* label,int nGenerics,va_list vap)
{
    extern HSim__s6* createWork_logica_behavioral(const char*);
    HSim__s6 *blk = createWork_logica_behavioral(label);
    return blk;
}


static HSim__s6* IF17(HSim__s6 *Arch,const char* label,int nGenerics,va_list vap)
{
    extern HSim__s6* createWork_upa_out_behavioral(const char*);
    HSim__s6 *blk = createWork_upa_out_behavioral(label);
    return blk;
}


static HSim__s6* IF18(HSim__s6 *Arch,const char* label,int nGenerics,va_list vap)
{
    extern HSim__s6* createWork_upa_in_behavioral(const char*);
    HSim__s6 *blk = createWork_upa_in_behavioral(label);
    return blk;
}


static HSim__s6* IF19(HSim__s6 *Arch,const char* label,int nGenerics,va_list vap)
{
    extern HSim__s6* createWork_reg_flags_behavioral(const char*);
    HSim__s6 *blk = createWork_reg_flags_behavioral(label);
    return blk;
}


static HSim__s6* IF20(HSim__s6 *Arch,const char* label,int nGenerics,va_list vap)
{
    extern HSim__s6* createWork_contador_1s_behavioral(const char*);
    HSim__s6 *blk = createWork_contador_1s_behavioral(label);
    return blk;
}


static HSim__s6* IF21(HSim__s6 *Arch,const char* label,int nGenerics,va_list vap)
{
    extern HSim__s6* createWork_contador_behavioral(const char*);
    HSim__s6 *blk = createWork_contador_behavioral(label);
    return blk;
}


static HSim__s6* IF22(HSim__s6 *Arch,const char* label,int nGenerics,va_list vap)
{
    extern HSim__s6* createWork_alu_behavioral(const char*);
    HSim__s6 *blk = createWork_alu_behavioral(label);
    return blk;
}


static HSim__s6* IF23(HSim__s6 *Arch,const char* label,int nGenerics,va_list vap)
{
    extern HSim__s6* createWork_ind_fisica_behavioral(const char*);
    HSim__s6 *blk = createWork_ind_fisica_behavioral(label);
    return blk;
}


static HSim__s6* IF24(HSim__s6 *Arch,const char* label,int nGenerics,va_list vap)
{
    extern HSim__s6* createWork_acc_behavioral(const char*);
    HSim__s6 *blk = createWork_acc_behavioral(label);
    return blk;
}


static HSim__s6* IF25(HSim__s6 *Arch,const char* label,int nGenerics,va_list vap)
{
    extern HSim__s6* createWork_secuenciador_behavioral(const char*);
    HSim__s6 *blk = createWork_secuenciador_behavioral(label);
    return blk;
}


static HSim__s6* IF26(HSim__s6 *Arch,const char* label,int nGenerics,va_list vap)
{
    extern HSim__s6* createWork_memoria_behavioral(const char*);
    HSim__s6 *blk = createWork_memoria_behavioral(label);
    return blk;
}


static HSim__s6* IF27(HSim__s6 *Arch,const char* label,int nGenerics,va_list vap)
{
    extern HSim__s6* createWork_mux_4_1_behavioral(const char*);
    HSim__s6 *blk = createWork_mux_4_1_behavioral(label);
    return blk;
}


static HSim__s6* IF28(HSim__s6 *Arch,const char* label,int nGenerics,va_list vap)
{
    extern HSim__s6* createWork_logica_behavioral(const char*);
    HSim__s6 *blk = createWork_logica_behavioral(label);
    return blk;
}


static HSim__s6* IF29(HSim__s6 *Arch,const char* label,int nGenerics,va_list vap)
{
    extern HSim__s6* createWork_upa_out_behavioral(const char*);
    HSim__s6 *blk = createWork_upa_out_behavioral(label);
    return blk;
}


static HSim__s6* IF30(HSim__s6 *Arch,const char* label,int nGenerics,va_list vap)
{
    extern HSim__s6* createWork_upa_in_behavioral(const char*);
    HSim__s6 *blk = createWork_upa_in_behavioral(label);
    return blk;
}


static HSim__s6* IF31(HSim__s6 *Arch,const char* label,int nGenerics,va_list vap)
{
    extern HSim__s6* createWork_reg_flags_behavioral(const char*);
    HSim__s6 *blk = createWork_reg_flags_behavioral(label);
    return blk;
}


static HSim__s6* IF32(HSim__s6 *Arch,const char* label,int nGenerics,va_list vap)
{
    extern HSim__s6* createWork_contador_1s_behavioral(const char*);
    HSim__s6 *blk = createWork_contador_1s_behavioral(label);
    return blk;
}


static HSim__s6* IF33(HSim__s6 *Arch,const char* label,int nGenerics,va_list vap)
{
    extern HSim__s6* createWork_contador_behavioral(const char*);
    HSim__s6 *blk = createWork_contador_behavioral(label);
    return blk;
}


static HSim__s6* IF34(HSim__s6 *Arch,const char* label,int nGenerics,va_list vap)
{
    extern HSim__s6* createWork_alu_behavioral(const char*);
    HSim__s6 *blk = createWork_alu_behavioral(label);
    return blk;
}


static HSim__s6* IF35(HSim__s6 *Arch,const char* label,int nGenerics,va_list vap)
{
    extern HSim__s6* createWork_ind_fisica_behavioral(const char*);
    HSim__s6 *blk = createWork_ind_fisica_behavioral(label);
    return blk;
}


static HSim__s6* IF36(HSim__s6 *Arch,const char* label,int nGenerics,va_list vap)
{
    extern HSim__s6* createWork_acc_behavioral(const char*);
    HSim__s6 *blk = createWork_acc_behavioral(label);
    return blk;
}

class _top : public HSim__s6 {
public:
    _top() : HSim__s6(false, "_top", "_top", 0, 0, HSim::VerilogModule) {}
    HSimConfigDecl * topModuleInstantiate() {
        HSimConfigDecl * cfgvh = 0;
        cfgvh = new HSimConfigDecl("default");
        (*cfgvh).addVlogModule("SIM_V44", (HSimInstFactoryPtr)IF0);
        (*cfgvh).addVlogModule("REG_3ER_ESTADO", (HSimInstFactoryPtr)IF1);
        (*cfgvh).addVlogModule("GND", (HSimInstFactoryPtr)IF2);
        (*cfgvh).addVlogModule("AND2", (HSimInstFactoryPtr)IF3);
        (*cfgvh).addVlogModule("TRANSEIVER", (HSimInstFactoryPtr)IF4);
        (*cfgvh).addVlogModule("GND", (HSimInstFactoryPtr)IF5);
        (*cfgvh).addVlogModule("ArquitecturaCompuesta", (HSimInstFactoryPtr)IF6);
        (*cfgvh).addVlogModule("AND2", (HSimInstFactoryPtr)IF7);
        (*cfgvh).addVlogModule("UPA", (HSimInstFactoryPtr)IF8);
        (*cfgvh).addVlogModule("MULTIPLICACION", (HSimInstFactoryPtr)IF9);
        (*cfgvh).addVlogModule("GND", (HSimInstFactoryPtr)IF10);
        (*cfgvh).addVlogModule("UCC_TRANS", (HSimInstFactoryPtr)IF11);
        (*cfgvh).addVlogModule("glbl", (HSimInstFactoryPtr)IF12);
        (*cfgvh).addVlogModule("secuenciador/behavioral", (HSimInstFactoryPtr)IF13, true);
        (*cfgvh).addVlogModule("memoria/behavioral", (HSimInstFactoryPtr)IF14, true);
        (*cfgvh).addVlogModule("mux_4_1/behavioral", (HSimInstFactoryPtr)IF15, true);
        (*cfgvh).addVlogModule("logica/behavioral", (HSimInstFactoryPtr)IF16, true);
        (*cfgvh).addVlogModule("upa_out/behavioral", (HSimInstFactoryPtr)IF17, true);
        (*cfgvh).addVlogModule("upa_in/behavioral", (HSimInstFactoryPtr)IF18, true);
        (*cfgvh).addVlogModule("reg_flags/behavioral", (HSimInstFactoryPtr)IF19, true);
        (*cfgvh).addVlogModule("contador_1s/behavioral", (HSimInstFactoryPtr)IF20, true);
        (*cfgvh).addVlogModule("contador/behavioral", (HSimInstFactoryPtr)IF21, true);
        (*cfgvh).addVlogModule("alu/behavioral", (HSimInstFactoryPtr)IF22, true);
        (*cfgvh).addVlogModule("ind_fisica/behavioral", (HSimInstFactoryPtr)IF23, true);
        (*cfgvh).addVlogModule("acc/behavioral", (HSimInstFactoryPtr)IF24, true);
        (*cfgvh).addVlogModule("secuenciador", (HSimInstFactoryPtr)IF25, true);
        (*cfgvh).addVlogModule("memoria", (HSimInstFactoryPtr)IF26, true);
        (*cfgvh).addVlogModule("mux_4_1", (HSimInstFactoryPtr)IF27, true);
        (*cfgvh).addVlogModule("logica", (HSimInstFactoryPtr)IF28, true);
        (*cfgvh).addVlogModule("upa_out", (HSimInstFactoryPtr)IF29, true);
        (*cfgvh).addVlogModule("upa_in", (HSimInstFactoryPtr)IF30, true);
        (*cfgvh).addVlogModule("reg_flags", (HSimInstFactoryPtr)IF31, true);
        (*cfgvh).addVlogModule("contador_1s", (HSimInstFactoryPtr)IF32, true);
        (*cfgvh).addVlogModule("contador", (HSimInstFactoryPtr)IF33, true);
        (*cfgvh).addVlogModule("alu", (HSimInstFactoryPtr)IF34, true);
        (*cfgvh).addVlogModule("ind_fisica", (HSimInstFactoryPtr)IF35, true);
        (*cfgvh).addVlogModule("acc", (HSimInstFactoryPtr)IF36, true);
        HSim__s5 * topvl = 0;
        topvl = new workM_s_i_m___v44("SIM_V44");
        topvl->moduleInstantiate(cfgvh);
        addChild(topvl);
        topvl = new workMglbl("glbl");
        topvl->moduleInstantiate(cfgvh);
        addChild(topvl);
        return cfgvh;
}
};

main(int argc, char **argv) {
  HSimDesign::initDesign();
  globalKernel->getOptions(argc,argv);
  HSim__s6 * _top_i = 0;
  try {
    IeeeStd_logic_1164=new Ieee_std_logic_1164("Std_logic_1164");
    IeeeStd_logic_arith=new Ieee_std_logic_arith("Std_logic_arith");
    IeeeStd_logic_unsigned=new Ieee_std_logic_unsigned("Std_logic_unsigned");
    HSimConfigDecl *cfg;
 _top_i = new _top();
  cfg =  _top_i->topModuleInstantiate();
    return globalKernel->runTcl(cfg, _top_i, "_top", argc, argv);
  }
  catch (HSimError& msg){
    try {
      globalKernel->error(msg.ErrMsg);
      return 1;
    }
    catch(...) {}
      return 1;
  }
  catch (...){
    globalKernel->fatalError();
    return 1;
  }
}

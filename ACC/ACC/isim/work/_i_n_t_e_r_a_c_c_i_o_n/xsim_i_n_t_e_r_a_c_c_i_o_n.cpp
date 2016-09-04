#include "isim/work/_i_n_t_e_r_a_c_c_i_o_n/_i_n_t_e_r_a_c_c_i_o_n.h"
#include "isim/work/glbl/glbl.h"
static const char * HSimCopyRightNotice = "Copyright 2004-2005, Xilinx Inc. All rights reserved.";
#include "C:/Xilinx/vhdl/hdp/nt/ieee/std_logic_1164/std_logic_1164.h"
#include "C:/Xilinx/vhdl/hdp/nt/ieee/std_logic_arith/std_logic_arith.h"
#include "C:/Xilinx/vhdl/hdp/nt/ieee/std_logic_unsigned/std_logic_unsigned.h"


#include "work/_i_n_t_e_r_a_c_c_i_o_n/_i_n_t_e_r_a_c_c_i_o_n.h"
static HSim__s6* IF0(HSim__s6 *Arch,const char* label,int nGenerics, 
va_list vap)
{
    HSim__s6 *blk = new workM_i_n_t_e_r_a_c_c_i_o_n(label); 
    return blk;
}


#include "work/_i_n_t_e_r_a_c_c_i_o_n___a_c_c/_i_n_t_e_r_a_c_c_i_o_n___a_c_c.h"
static HSim__s6* IF1(HSim__s6 *Arch,const char* label,int nGenerics, 
va_list vap)
{
    HSim__s6 *blk = new workM_i_n_t_e_r_a_c_c_i_o_n___a_c_c(label); 
    return blk;
}


#include "work/glbl/glbl.h"
static HSim__s6* IF2(HSim__s6 *Arch,const char* label,int nGenerics, 
va_list vap)
{
    HSim__s6 *blk = new workMglbl(label); 
    return blk;
}


static HSim__s6* IF3(HSim__s6 *Arch,const char* label,int nGenerics,va_list vap)
{
    extern HSim__s6* createWork_acc_behavioral(const char*);
    HSim__s6 *blk = createWork_acc_behavioral(label);
    return blk;
}


static HSim__s6* IF4(HSim__s6 *Arch,const char* label,int nGenerics,va_list vap)
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
        (*cfgvh).addVlogModule("INTERACCION", (HSimInstFactoryPtr)IF0);
        (*cfgvh).addVlogModule("INTERACCION_ACC", (HSimInstFactoryPtr)IF1);
        (*cfgvh).addVlogModule("glbl", (HSimInstFactoryPtr)IF2);
        (*cfgvh).addVlogModule("acc/behavioral", (HSimInstFactoryPtr)IF3, true);
        (*cfgvh).addVlogModule("acc", (HSimInstFactoryPtr)IF4, true);
        HSim__s5 * topvl = 0;
        topvl = new workM_i_n_t_e_r_a_c_c_i_o_n("INTERACCION");
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

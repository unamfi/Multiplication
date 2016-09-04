////////////////////////////////////////////////////////////////////////////////
//   ____  ____  
//  /   /\/   /  
// /___/  \  /   
// \   \   \/    
//  \   \        Copyright (c) 2003-2004 Xilinx, Inc.
//  /   /        All Right Reserved. 
// /___/   /\   
// \   \  /  \  
//  \___\/\___\ 
////////////////////////////////////////////////////////////////////////////////

#ifndef H_workM_i_n_t_e_r_a_c_c_i_o_n___a_c_c_H
#define H_workM_i_n_t_e_r_a_c_c_i_o_n___a_c_c_H

#ifdef _MSC_VER
#pragma warning(disable: 4355)
#endif

#ifdef __MINGW32__
#include "xsimMinGW.h"
#else
#include "xsim.h"
#endif

class workM_i_n_t_e_r_a_c_c_i_o_n___a_c_c : public HSim__s5{
public: 
    workM_i_n_t_e_r_a_c_c_i_o_n___a_c_c(const char *instname);
    ~workM_i_n_t_e_r_a_c_c_i_o_n___a_c_c();
    void setDefparam();
    void constructObject();
    void moduleInstantiate(HSimConfigDecl *cfg);
    void connectSigs();
    void reset();
    virtual void archImplement();
    HSim__s1 us[15];
};

#endif

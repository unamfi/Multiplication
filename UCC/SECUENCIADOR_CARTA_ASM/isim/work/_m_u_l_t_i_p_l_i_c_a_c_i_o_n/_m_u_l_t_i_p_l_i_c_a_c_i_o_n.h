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

#ifndef H_workM_m_u_l_t_i_p_l_i_c_a_c_i_o_n_H
#define H_workM_m_u_l_t_i_p_l_i_c_a_c_i_o_n_H

#ifdef _MSC_VER
#pragma warning(disable: 4355)
#endif

#ifdef __MINGW32__
#include "xsimMinGW.h"
#else
#include "xsim.h"
#endif

class workM_m_u_l_t_i_p_l_i_c_a_c_i_o_n : public HSim__s5{
public: 
    workM_m_u_l_t_i_p_l_i_c_a_c_i_o_n(const char *instname);
    ~workM_m_u_l_t_i_p_l_i_c_a_c_i_o_n();
    void setDefparam();
    void constructObject();
    void moduleInstantiate(HSimConfigDecl *cfg);
    void connectSigs();
    void reset();
    virtual void archImplement();
    HSim__s1 us[22];
};

#endif

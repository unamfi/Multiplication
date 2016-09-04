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

#ifndef H_workM_i_n_t_e_r_a_c_c_i_o_n_H
#define H_workM_i_n_t_e_r_a_c_c_i_o_n_H

#ifdef _MSC_VER
#pragma warning(disable: 4355)
#endif

#ifdef __MINGW32__
#include "xsimMinGW.h"
#else
#include "xsim.h"
#endif

class workM_i_n_t_e_r_a_c_c_i_o_n : public HSim__s5{
public: 
    workM_i_n_t_e_r_a_c_c_i_o_n(const char *instname);
    ~workM_i_n_t_e_r_a_c_c_i_o_n();
    void setDefparam();
    void constructObject();
    void moduleInstantiate(HSimConfigDecl *cfg);
    void connectSigs();
    void reset();
    virtual void archImplement();
    class cu0 : public HSimVlogTask{
    public: 
        HSim__s3 uv[1];
        cu0(workM_i_n_t_e_r_a_c_c_i_o_n* arch );
        HSimVlogTaskCall * createTaskCall(HSim__s7 * process );
        void deleteTaskCall(HSimVlogTaskCall *p );
        void reset();
        void constructObject();
        int getSizeForArg(int argNumber);
        workM_i_n_t_e_r_a_c_c_i_o_n* Arch ;
        HSimVector<HSimRegion *> activeInstanceList ;
        HSimVector<HSimRegion *>  availableTaskCallObjList ;
        ~cu0();
        bool disable(HSim__s7* proc);
    };
    cu0 u0;
    class cu1 : public HSimVlogTask{
    public: 
        HSim__s3 uv[1];
        cu1(workM_i_n_t_e_r_a_c_c_i_o_n* arch );
        HSimVlogTaskCall * createTaskCall(HSim__s7 * process );
        void deleteTaskCall(HSimVlogTaskCall *p );
        void reset();
        void constructObject();
        int getSizeForArg(int argNumber);
        workM_i_n_t_e_r_a_c_c_i_o_n* Arch ;
        HSimVector<HSimRegion *> activeInstanceList ;
        HSimVector<HSimRegion *>  availableTaskCallObjList ;
        ~cu1();
        bool disable(HSim__s7* proc);
    };
    cu1 u1;
    class cu2 : public HSimVlogTask{
    public: 
        HSim__s3 uv[1];
        cu2(workM_i_n_t_e_r_a_c_c_i_o_n* arch );
        HSimVlogTaskCall * createTaskCall(HSim__s7 * process );
        void deleteTaskCall(HSimVlogTaskCall *p );
        void reset();
        void constructObject();
        int getSizeForArg(int argNumber);
        workM_i_n_t_e_r_a_c_c_i_o_n* Arch ;
        HSimVector<HSimRegion *> activeInstanceList ;
        HSimVector<HSimRegion *>  availableTaskCallObjList ;
        ~cu2();
        bool disable(HSim__s7* proc);
    };
    cu2 u2;
    class cu3 : public HSimVlogTask{
    public: 
        HSim__s3 uv[1];
        cu3(workM_i_n_t_e_r_a_c_c_i_o_n* arch );
        HSimVlogTaskCall * createTaskCall(HSim__s7 * process );
        void deleteTaskCall(HSimVlogTaskCall *p );
        void reset();
        void constructObject();
        int getSizeForArg(int argNumber);
        workM_i_n_t_e_r_a_c_c_i_o_n* Arch ;
        HSimVector<HSimRegion *> activeInstanceList ;
        HSimVector<HSimRegion *>  availableTaskCallObjList ;
        ~cu3();
        bool disable(HSim__s7* proc);
    };
    cu3 u3;
    HSim__s1 us[7];
    HSim__s3 uv[12];
};

#endif

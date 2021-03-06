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

#ifndef H_workM_s_i_m___v43_H
#define H_workM_s_i_m___v43_H

#ifdef _MSC_VER
#pragma warning(disable: 4355)
#endif

#ifdef __MINGW32__
#include "xsimMinGW.h"
#else
#include "xsim.h"
#endif

class workM_s_i_m___v43 : public HSim__s5{
public: 
    workM_s_i_m___v43(const char *instname);
    ~workM_s_i_m___v43();
    void setDefparam();
    void constructObject();
    void moduleInstantiate(HSimConfigDecl *cfg);
    void connectSigs();
    void reset();
    virtual void archImplement();
    class cu0 : public HSimVlogTask{
    public: 
        HSim__s3 uv[1];
        cu0(workM_s_i_m___v43* arch );
        HSimVlogTaskCall * createTaskCall(HSim__s7 * process );
        void deleteTaskCall(HSimVlogTaskCall *p );
        void reset();
        void constructObject();
        int getSizeForArg(int argNumber);
        workM_s_i_m___v43* Arch ;
        HSimVector<HSimRegion *> activeInstanceList ;
        HSimVector<HSimRegion *>  availableTaskCallObjList ;
        ~cu0();
        bool disable(HSim__s7* proc);
    };
    cu0 u0;
    class cu1 : public HSimVlogTask{
    public: 
        HSim__s3 uv[1];
        cu1(workM_s_i_m___v43* arch );
        HSimVlogTaskCall * createTaskCall(HSim__s7 * process );
        void deleteTaskCall(HSimVlogTaskCall *p );
        void reset();
        void constructObject();
        int getSizeForArg(int argNumber);
        workM_s_i_m___v43* Arch ;
        HSimVector<HSimRegion *> activeInstanceList ;
        HSimVector<HSimRegion *>  availableTaskCallObjList ;
        ~cu1();
        bool disable(HSim__s7* proc);
    };
    cu1 u1;
    class cu2 : public HSimVlogTask{
    public: 
        HSim__s3 uv[1];
        cu2(workM_s_i_m___v43* arch );
        HSimVlogTaskCall * createTaskCall(HSim__s7 * process );
        void deleteTaskCall(HSimVlogTaskCall *p );
        void reset();
        void constructObject();
        int getSizeForArg(int argNumber);
        workM_s_i_m___v43* Arch ;
        HSimVector<HSimRegion *> activeInstanceList ;
        HSimVector<HSimRegion *>  availableTaskCallObjList ;
        ~cu2();
        bool disable(HSim__s7* proc);
    };
    cu2 u2;
    class cu3 : public HSimVlogTask{
    public: 
        HSim__s3 uv[1];
        cu3(workM_s_i_m___v43* arch );
        HSimVlogTaskCall * createTaskCall(HSim__s7 * process );
        void deleteTaskCall(HSimVlogTaskCall *p );
        void reset();
        void constructObject();
        int getSizeForArg(int argNumber);
        workM_s_i_m___v43* Arch ;
        HSimVector<HSimRegion *> activeInstanceList ;
        HSimVector<HSimRegion *>  availableTaskCallObjList ;
        ~cu3();
        bool disable(HSim__s7* proc);
    };
    cu3 u3;
    class cu4 : public HSimVlogTask{
    public: 
        HSim__s3 uv[1];
        cu4(workM_s_i_m___v43* arch );
        HSimVlogTaskCall * createTaskCall(HSim__s7 * process );
        void deleteTaskCall(HSimVlogTaskCall *p );
        void reset();
        void constructObject();
        int getSizeForArg(int argNumber);
        workM_s_i_m___v43* Arch ;
        HSimVector<HSimRegion *> activeInstanceList ;
        HSimVector<HSimRegion *>  availableTaskCallObjList ;
        ~cu4();
        bool disable(HSim__s7* proc);
    };
    cu4 u4;
    class cu5 : public HSimVlogTask{
    public: 
        HSim__s3 uv[1];
        cu5(workM_s_i_m___v43* arch );
        HSimVlogTaskCall * createTaskCall(HSim__s7 * process );
        void deleteTaskCall(HSimVlogTaskCall *p );
        void reset();
        void constructObject();
        int getSizeForArg(int argNumber);
        workM_s_i_m___v43* Arch ;
        HSimVector<HSimRegion *> activeInstanceList ;
        HSimVector<HSimRegion *>  availableTaskCallObjList ;
        ~cu5();
        bool disable(HSim__s7* proc);
    };
    cu5 u5;
    class cu6 : public HSimVlogTask{
    public: 
        HSim__s3 uv[1];
        cu6(workM_s_i_m___v43* arch );
        HSimVlogTaskCall * createTaskCall(HSim__s7 * process );
        void deleteTaskCall(HSimVlogTaskCall *p );
        void reset();
        void constructObject();
        int getSizeForArg(int argNumber);
        workM_s_i_m___v43* Arch ;
        HSimVector<HSimRegion *> activeInstanceList ;
        HSimVector<HSimRegion *>  availableTaskCallObjList ;
        ~cu6();
        bool disable(HSim__s7* proc);
    };
    cu6 u6;
    class cu7 : public HSimVlogTask{
    public: 
        HSim__s3 uv[1];
        cu7(workM_s_i_m___v43* arch );
        HSimVlogTaskCall * createTaskCall(HSim__s7 * process );
        void deleteTaskCall(HSimVlogTaskCall *p );
        void reset();
        void constructObject();
        int getSizeForArg(int argNumber);
        workM_s_i_m___v43* Arch ;
        HSimVector<HSimRegion *> activeInstanceList ;
        HSimVector<HSimRegion *>  availableTaskCallObjList ;
        ~cu7();
        bool disable(HSim__s7* proc);
    };
    cu7 u7;
    class cu8 : public HSimVlogTask{
    public: 
        HSim__s3 uv[1];
        cu8(workM_s_i_m___v43* arch );
        HSimVlogTaskCall * createTaskCall(HSim__s7 * process );
        void deleteTaskCall(HSimVlogTaskCall *p );
        void reset();
        void constructObject();
        int getSizeForArg(int argNumber);
        workM_s_i_m___v43* Arch ;
        HSimVector<HSimRegion *> activeInstanceList ;
        HSimVector<HSimRegion *>  availableTaskCallObjList ;
        ~cu8();
        bool disable(HSim__s7* proc);
    };
    cu8 u8;
    class cu9 : public HSimVlogTask{
    public: 
        HSim__s3 uv[1];
        cu9(workM_s_i_m___v43* arch );
        HSimVlogTaskCall * createTaskCall(HSim__s7 * process );
        void deleteTaskCall(HSimVlogTaskCall *p );
        void reset();
        void constructObject();
        int getSizeForArg(int argNumber);
        workM_s_i_m___v43* Arch ;
        HSimVector<HSimRegion *> activeInstanceList ;
        HSimVector<HSimRegion *>  availableTaskCallObjList ;
        ~cu9();
        bool disable(HSim__s7* proc);
    };
    cu9 u9;
    class cu10 : public HSimVlogTask{
    public: 
        HSim__s3 uv[1];
        cu10(workM_s_i_m___v43* arch );
        HSimVlogTaskCall * createTaskCall(HSim__s7 * process );
        void deleteTaskCall(HSimVlogTaskCall *p );
        void reset();
        void constructObject();
        int getSizeForArg(int argNumber);
        workM_s_i_m___v43* Arch ;
        HSimVector<HSimRegion *> activeInstanceList ;
        HSimVector<HSimRegion *>  availableTaskCallObjList ;
        ~cu10();
        bool disable(HSim__s7* proc);
    };
    cu10 u10;
    class cu11 : public HSimVlogTask{
    public: 
        HSim__s3 uv[1];
        cu11(workM_s_i_m___v43* arch );
        HSimVlogTaskCall * createTaskCall(HSim__s7 * process );
        void deleteTaskCall(HSimVlogTaskCall *p );
        void reset();
        void constructObject();
        int getSizeForArg(int argNumber);
        workM_s_i_m___v43* Arch ;
        HSimVector<HSimRegion *> activeInstanceList ;
        HSimVector<HSimRegion *>  availableTaskCallObjList ;
        ~cu11();
        bool disable(HSim__s7* proc);
    };
    cu11 u11;
    HSim__s1 us[12];
    HSim__s3 uv[9];
};

#endif

function H_MAG = calcH_MAG(magX,magY,magZ,q0,q1,q2,q3)
%CALCH_MAG
%    H_MAG = CALCH_MAG(MAGX,MAGY,MAGZ,Q0,Q1,Q2,Q3)

%    This function was generated by the Symbolic Math Toolbox version 5.8.
%    14-Jan-2015 11:09:09

t2 = q0.^2;
t3 = q1.^2;
t4 = q2.^2;
t5 = q3.^2;
t6 = q0.*q3.*2.0;
t8 = t2+t3-t4-t5;
t9 = magX.*t8;
t10 = q1.*q2.*2.0;
t11 = q0.*q2.*2.0;
t12 = q1.*q3.*2.0;
t13 = t11+t12;
t14 = magZ.*t13;
t17 = t2-t3+t4-t5;
t18 = magY.*t17;
t19 = t6+t10;
t20 = magX.*t19;
t21 = q0.*q1.*2.0;
t22 = q2.*q3.*2.0;
t23 = t21-t22;
t24 = magZ.*t23;
t25 = t18+t20-t24;
t7 = tan(t25./(t9+t14-magY.*(t6-q1.*q2.*2.0)));
t15 = t6-t10;
t26 = magY.*t15;
t16 = t9+t14-t26;
t27 = 1.0./t16;
t30 = t25.*t27;
t28 = tan(t30);
t29 = 1.0./t16.^2;
t31 = t28.^2;
t32 = t31+1.0;
t33 = magX.*q1.*2.0;
t34 = magY.*q2.*2.0;
t35 = magZ.*q3.*2.0;
t36 = t33+t34+t35;
t37 = magY.*q1.*2.0;
t38 = magZ.*q0.*2.0;
t39 = t37+t38-magX.*q2.*2.0;
t40 = magX.*q0.*2.0;
t41 = magZ.*q2.*2.0;
t42 = t40+t41-magY.*q3.*2.0;
t43 = magY.*q0.*2.0;
t44 = magX.*q3.*2.0;
t45 = t43+t44-magZ.*q1.*2.0;
H_MAG = [(t7.^2+1.0).*(t27.*t45-t25.*t29.*t42),-t32.*(t27.*t39+t25.*t29.*t36),t32.*(t27.*t36-t25.*t29.*t39),t32.*(t27.*t42+t25.*t29.*t45),0.0,0.0,0.0,0.0,0.0,0.0];
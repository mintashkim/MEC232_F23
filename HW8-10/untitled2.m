A = [1 0 2;
     4 1 6;
     -3 0 -4;];
B = [-1; 1; 1];
C = [2 1 3];
D = [0];

M = [-1 1 1;
     1 3 1;
     1 -1 1];
disp(inv(M)*A*M);
disp(inv(M)*B);
disp(C*M);

Ac = [0 1;
      1 0];
Bc = [1; 0];
Cc = [2 2];
disp(obsv(Ac, Cc));
% disp(ctrb(A, B));
% Ob = obsv(A, C);
% disp(Ob);
% disp(Ob\[0; 0; 0]);


[Abar,Bbar,Cbar,M,k]=obsvf(A,B,C);
% disp(Abar);
% disp(Bbar);
% disp(Cbar);

% disp(eig([-0.2143 3.5053;
%           0.6186 -0.7857]));

ltisys = ss(A,B,C,D);
sys = tf(ltisys);
% disp(sys);

[z,p,k] = tf2zp([2 -0.2 -0.12], [1 0.8 0.17 0.01]);
% disp(z);
% disp(p);

Ac = [0 1 0;
     0 0 1;
     -0.01 -0.17 -0.8];
Bc = [0; 0; 1;];
Cc = [-0.12 -0.2 2];

% disp(eig(Ac));
% disp(rank(obsv(Ac, Cc)));

Ao = [-0.8 1 0;
     -0.17 0 1;
     -0.01 0 0];
Bo = [2; -0.2; -0.12;];
Co = [-0.12 -0.2 2];

% disp(eig(Ao));
% disp(rank(ctrb(Ao, Bo)));

A = [0 1;
    -0.05 -0.6];
B = [0; 1];
C = [-0.6 2];
% disp(rank(obsv(A, C)));

A = [-0.6 1;
    -0.05 0];
B = [2; -0.6];
C = [1 0];
% disp(rank(ctrb(A, B)));
%% HW0 Serial Chain Robot - Forward Kinematics
clear workspace

%% Forward Kinematics
L = [3,2]; %linkage lengths
t = (0:1:360);

[Xe,Ye,X1,Y1] = RR_ForwardPosKin(L,t);

plotting the results
subplot(2,1,1)
plot(t,Xe,'c.');
hold on
plot(t,Ye,'k.');
legend('End effector X-coordinate','End effector Y-coordinate');
title('Forward Kinematics - 2R Serial chain');
xlabel('t in deg');
ylabel('End effector coordinate (cm)');

subplot(2,1,2)
plot(Xe,Ye,'r.');
axis equal
legend('End effector trajectory');
xlabel('Xe (cm)');
ylabel('Ye (cm)');
title('End effector trajectory');
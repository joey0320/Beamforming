traindata_size = 1;
lamda = 1;
%num = input('order of your square matrix for aperture field: ');
num=32;

[ data, labels_E, labels_ab, labels_mode, labels_phase ] ...
         = DL_generate_traindata_1(traindata_size, lamda, num)


filename = 'C:\Users\User\Documents\MATLAB\DL_data\train_data2.xlsx';
writematrix(data, filename, 'Sheet', 1);
writematrix(labels_ab, filename, 'Sheet', 2);
writematrix(labels_mode, filename, 'Sheet', 3);
writematrix(labels_phase, filename, 'Sheet', 4);
writematrix(labels_E, filename, 'Sheet', 5);

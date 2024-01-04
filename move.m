init = imread('Fig3.tif'); % ��ȡͼ��
[R, C] = size(init); % ��ȡͼ���С 
timesX = 0.7; % X�������� 
timesY = 1.3; % Y�������� 
res = zeros(timesX * R, timesY * C); % ����������ÿ�����ص�Ĭ�ϳ�ʼ��Ϊ0����ɫ�� 
tras = [1/timesX 0 0; 0 1/timesY 0; 0 0 1]; % ���ŵı任���� 
for i = 1 : timesX * R for j = 1 : timesY * C temp = [i; j; 1]; temp = tras * temp; % ����˷� 
        x = uint8(temp(1, 1)); 
        y = uint8(temp(2, 1)); % �任���λ���ж��Ƿ�Խ�� 
        if (x <= R) & (y <= C) & (x >= 1) & (y >= 1) res(i, j) = init(x, y); 
        end
    end
end; 
imshow(uint8(res)); % ��ʾͼ��
title('ͼ������');


            
            
            
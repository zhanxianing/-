init = imread('Fig3.tif');% ��ȡͼ��
[R, C] = size(init); % ��ȡͼ���С 
res = zeros( R, C); % ����������ÿ�����ص�Ĭ�ϳ�ʼ��Ϊ0����ɫ�� 
alfa = -15 * 3.1415926 / 180.0; % ��ת�Ƕ� 
tras = [cos(alfa) sin(alfa) 0; -sin(alfa) cos(alfa) 0; 0 0 1]; % ��ת�ı任���� 
for i = 1 : R 
    for j = 1 : C 
        temp = [i; j; 1]; 
        temp = tras * temp;% ����˷� 
        x = uint16(temp(1, 1)); 
        y = uint16(temp(2, 1)); % �任���λ���ж��Ƿ�Խ�� 
        if (x <= R) & (y <= C) & (x >= 1) & (y >= 1) 
            res(i, j) = init(x, y); 
        end
    end
end; 
imshow(uint8(res)); % ��ʾͼ��
title('ͼ����ת�任1');

res2 = zeros( R, C); % ����������ÿ�����ص�Ĭ�ϳ�ʼ��Ϊ0����ɫ�� 
alfa = 15 * 3.1415926 / 180.0; % ��ת�Ƕ� 
tras = [cos(alfa) sin(alfa) 0; -sin(alfa) cos(alfa) 0; 0 0 1]; % ��ת�ı任���� 
for i = 1 : R 
    for j = 1 : C 
        temp = [i; j; 1]; 
        temp = tras * temp;% ����˷� 
        x = uint16(temp(1, 1)); 
        y = uint16(temp(2, 1)); % �任���λ���ж��Ƿ�Խ�� 
        if (x <= R) & (y <= C) & (x >= 1) & (y >= 1) 
            res2(i, j) = init(x, y); 
        end
    end
end; 
imshow(uint8(res2)); % ��ʾͼ��
title('ͼ����ת�任2');





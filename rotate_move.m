imagedata = imread('Fig3.tif');
%figure
%imshow(imagedata);
%[m,n]=size(imagedata);

%����:�任����translationM����ת�Ƕ�Ϊ30��=pi/6
init = imread('Fig3.tif'); % ��ȡͼ��
[R, C] = size(init); % ��ȡͼ���С 
res1 = zeros(R, C); % ����������ÿ�����ص�Ĭ�ϳ�ʼ��Ϊ0����ɫ�� 
delX = -50; % ƽ����X 
delY = -50; % ƽ����Y 
tras = [1 0 delX; 0 1 delY; 0 0 1]; % ƽ�Ƶı任����
for i = 1 : R 
    for j = 1 : C 
        temp = [i; j; 1]; 
        temp = tras * temp; % ����˷� 
        x = temp(1, 1); 
        y = temp(2, 1); % �任���λ���ж��Ƿ�Խ�� 
        if (x <= R) & (y <= C) & (x >= 1) & (y >= 1) 
            res1(x, y) = init(i, j); 
        end
    end
end; 
imshow(uint8(res1)); % ��ʾͼ��
title('ƽ��ͼ��');

























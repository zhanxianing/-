%ͼ��ƽ�ƣ���дƽ�ƺ���immove.m
function outImage=immove(inImage,Tx,Ty)
[m, n] = size(inImage);%����ͼ���С
outImage = uint8(zeros(m+abs(Ty), n+abs(Tx)));
if(Tx>0&&Ty>0) %�����½�ƽ�Ƶ����
outImage(1+Ty:m+Ty,1+Tx:n+Tx) = inImage;
   else if(Tx<0&&Ty<0) %�����Ͻ�ƽ�Ƶ����
      outImage(1:m,1:n) = inImage;
         else if (Tx<0&&Ty>0)  %�����½�ƽ�Ƶ����
            outImage(1+Ty:m+Ty,1:n) = inImage;
                else % �����Ͻ�ƽ�Ƶ����
                   outImage(1:m,1+Tx:n+Tx) = inImage;
             end
       end
end

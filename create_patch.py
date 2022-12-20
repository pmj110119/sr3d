import cv2
import glob,os

img_paths = glob.glob('data2/*.png')

for img_path in img_paths:
    img_name = os.path.basename(img_path.split('.')[0])
    img = cv2.imread(img_path)

    H,W,_ = img.shape
    # H,W = H//2, W//2
    print((W, H))
    # # import ipdb;ipdb.set_trace()
    # img = cv2.resize(img, (W, H))
    print(img.shape)

    for i in range(H//256):
        for j in range(W//256):
            y0,y1 = i*256, i*256+256
            x0,x1 = j*256, j*256+256
            print(y0,x0,'data3/'+img_name+'_'+str(i)+'_'+str(j)+'.png')
            patch = img[y0:y1, x0:x1,:]
            cv2.imwrite('data3/'+img_name+'_'+str(i)+'_'+str(j)+'.png', patch)


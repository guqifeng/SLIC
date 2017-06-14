Input_file_path =  '.\images\';% input image file path

img_path_list = dir(strcat(Input_file_path,'*.jpg'));
img_num = length(img_path_list);
if img_num > 0 
        for j = 1:img_num 
            image_name = img_path_list(j).name;
            image_name = strcat(Input_file_path,image_name);
            image = imread(image_name);
            [L,N] = superpixels(image,500);
            BW = boundarymask(L);
            Output_file_path=strrep(image_name,'images','results');
            imwrite(imoverlay(image,BW,'cyan'),Output_file_path);
        end  
end  
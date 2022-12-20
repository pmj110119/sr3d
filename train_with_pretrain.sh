python image_train.py --data_dir data/ \
    --image_size 256 --num_channels 256 --num_res_blocks 2 --num_head_channels 64 --num_heads 4 --resblock_updown False\
    --diffusion_steps 1000 --noise_schedule linear \
    --lr 1e-4 --batch_size 4
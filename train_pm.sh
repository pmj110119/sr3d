# CUDA_VISIBLE_DEVICES=1,2 mpiexec -n 2 python image_train.py --data_dir data/ \
#     --image_size 256 --num_channels 128 --num_res_blocks 3 \
#     --diffusion_steps 1000 --noise_schedule linear \
#     --lr 1e-4 --batch_size 8


mpiexec -n 8 \
python image_train.py --data_dir data/ \
    --image_size 256 --num_channels 128 --num_res_blocks 3 \
    --diffusion_steps 1000 --noise_schedule linear \
    --lr 1e-4 --batch_size 8 \
    # --resume_checkpoint /data/pmj_work_dirs/guided-diffusion/openai-2022-11-16-09-36-28-188436/model002000.pt
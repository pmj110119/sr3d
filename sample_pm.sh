# CUDA_VISIBLE_DEVICES=1,2 mpiexec -n 2 python image_train.py --data_dir data/ \
#     --image_size 256 --num_channels 128 --num_res_blocks 3 \
#     --diffusion_steps 1000 --noise_schedule linear \
#     --lr 1e-4 --batch_size 8


# # mpiexec -n 8 \
# python image_sample.py  \
#     --image_size 256 --num_channels 128 --num_res_blocks 3 \
#     --diffusion_steps 1000 --noise_schedule linear \
#     --batch_size 8 \
#     --model_path openai-2022-11-16-10-49-36-211255/model004000.pt \
#     --timestep_respacing ddim25 --use_ddim True
#     # --resume_checkpoint /data/pmj_work_dirs/guided-diffusion/openai-2022-11-16-09-36-28-188436/model002000.pt



python image_sample.py  \
    --image_size 256 --num_channels 128 --num_res_blocks 3 \
    --diffusion_steps 1000 --noise_schedule linear \
    --batch_size 8 \
    --model_path openai-2022-11-16-17-33-09-477487/model020000.pt \
    --timestep_respacing ddim25 --use_ddim True
    # --resume_checkpoint /data/pmj_work_dirs/guided-diffusion/openai-2022-11-16-09-36-28-188436/model002000.pt

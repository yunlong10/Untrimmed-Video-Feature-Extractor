# srun -p video -N1 -n8 --gres=gpu:8 --job-name=train_didemo --quotatype=reserved --cpus-per-task=16 \
python -u -m main_task_retrieval \
    --do_train \
    --num_thread_reader=8 \
    --n_display=50 \
    --epochs=5 \
    --lr=1e-3 \
    --coef_lr=2e-3 \
    --batch_size=16 \
    --batch_size_val=16 \
    --data_path="./data/DiDeMo/" \
    --features_path="" \
    --datatype="didemo" \
    --max_words=77 \
    --max_frames=32 \
    --feature_framerate=1 \
    --pretrained_clip_name="ViT-L/14" \
    --slice_framepos=2 \
    --loose_type \
    --linear_patch=2d \
    --sim_header=meanP \
    --freeze_layer_num=0 \
    --expand_msrvtt_sentences \
    --clip_evl \
    --output_dir="" \
    --pretrained_path="" \

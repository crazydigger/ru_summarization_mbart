onmt_train -save_model ../models/gazeta_onmt_v2/model \
  -data ../models/gazeta_onmt_v2/data/processed \
  -layers 3 \
  -rnn_size 512 \
  -word_vec_size 512 \
  -max_grad_norm 0 \
  -optim adam \
  -encoder_type transformer \
  -decoder_type transformer \
  -position_encoding \
  -dropout 0.2 \
  -param_init 0 \
  -warmup_steps 8000 \
  -learning_rate 2 \
  -decay_method noam \
  -label_smoothing 0.1 \
  -adam_beta2 0.998 \
  -batch_size 4096 \
  -batch_type tokens \
  -normalization tokens \
  -max_generator_batches 2 \
  -train_steps 50000 \
  -accum_count 4 \
  -share_embeddings \
  -copy_attn \
  -param_init_glorot \
  -gpu_ranks 0 \
  -valid_steps 5000

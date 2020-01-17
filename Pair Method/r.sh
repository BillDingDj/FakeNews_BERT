export BERT_BASE_DIR=uncased_L-12_H-768_A-12
export FakeNew_DIR=FakeNewsData/

python3 run_classifier1.py \
  --task_name=fakenews \
  --do_eval=true \
  --data_dir=$FakeNew_DIR \
  --vocab_file=$BERT_BASE_DIR/vocab.txt \
  --bert_config_file=$BERT_BASE_DIR/bert_config.json \
  --init_checkpoint=./output/claim/model.ckpt-7675 \
  --max_seq_length=128 \
  --train_batch_size=4 \
  --learning_rate=2e-5 \
  --num_train_epochs=3.0 \
  --output_dir=./output/claim\

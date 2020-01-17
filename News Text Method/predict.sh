export BERT_BASE_DIR=uncased_L-12_H-768_A-12
export FakeNew_DIR=FakeNewsData/
export TRAINED_CLASSIFIER=/path/to/fine/tuned/classifier

python3 run_classifier.py \
  --task_name=fakenews \
  --do_predict=true \
  --data_dir=$FakeNew_DIR \
  --vocab_file=$BERT_BASE_DIR/vocab.txt \
  --bert_config_file=$BERT_BASE_DIR/bert_config.json \
  --init_checkpoint=/tmp/fakenews_outpu2t/model.ckpt-20470 \
  --max_seq_length=128 \
  --output_dir=/tmp/fakenews_output/
import torch
from transformers import AutoModelForSequenceClassification, AutoTokenizer

model_name = "bert-base-uncased"
tokenizer = AutoTokenizer.from_pretrained(model_name)
model = AutoModelForSequenceClassification.from_pretrained(model_name)

# Move model to GPU
device = "cuda" if torch.cuda.is_available() else "cpu"
model.to(device)

# Move inputs to GPU
inputs = tokenizer("Hello world", return_tensors="pt").to(device)

# Run inference
outputs = model(**inputs)

print(outputs)
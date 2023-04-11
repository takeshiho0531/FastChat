from transformers import AutoModelForCausalLM
import torch

model = AutoModelForCausalLM.from_pretrained("lmsys/vicuna-13b-delta-v0")

torch.save(model.state_dict(), "vicuna_13b_delta_weights.pth")

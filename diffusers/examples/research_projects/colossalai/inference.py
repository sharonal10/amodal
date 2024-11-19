import torch
from utils.data_utils import transform_rgb, transform_resize, get_closest_int_multiple_of
from diffusers import StableDiffusionPipeline


model_id = "path-to-your-trained-model"
pipe = StableDiffusionPipeline.from_pretrained(model_id, torch_dtype=torch.float16).to("cuda")

prompt = "A photo of sks dog in a bucket"
image = pipe(prompt, num_inference_steps=50, guidance_scale=7.5).images[0]

image.save("dog-bucket.png")


Acknowledgement
Our code is based on Stable Diffusion and Custom Diffusion


<div align="center">

<h1>Customized Generation Reimagined: Fidelity and Editability Harmonized</h1>


[Jian Jin], [Yang Shen](https://aassxun.github.io/), [Zhenyong Fu]&#8224; [Jian Yang](https://zhenyangcs.github.io/](https://scholar.google.com.hk/citations?hl=zh-CN&user=6CIDtZQAAAAJ)&#8224; 

(&#8224;corresponding author)

PCA Lab, Key Lab of Intelligent Perception and Systems for High-Dimensional Information of Ministry of Education, and Jiangsu Key Lab of Image and Video Understanding for Social Security, School of Computer Science and Engineering, Nanjing University of Science and Technology

ECCV 2024

</div>

## 📖 Abstract
![results_of_multi_concept](figures/method_overview.png)
<p>
  Customized generation aims to incorporate a novel concept into a pre-trained text-to-image model, enabling new generations of the concept in novel contexts guided by textual prompts.
However, customized generation suffers from an inherent trade-off between concept fidelity and editability, i.e., between precisely modeling the concept and faithfully adhering to the prompts.
Previous methods reluctantly seek a compromise and struggle to achieve both high concept fidelity and ideal prompt alignment simultaneously.
In this paper, we propose a "Divide, Conquer, then Integrate" (DCI) framework, which performs a surgical adjustment in the early stage of denoising to liberate the fine-tuned model from the fidelity-editability trade-off at inference.
The two conflicting components in the trade-off are decoupled and individually conquered by two collaborative branches, which are then selectively integrated to preserve high concept fidelity while achieving faithful prompt adherence.
To obtain a better fine-tuned model, we introduce an Image-specific Context Optimization (ICO) strategy for model customization.
ICO replaces manual prompt templates with learnable image-specific contexts, providing an adaptive and precise fine-tuning direction to promote the overall performance.
Extensive experiments demonstrate the effectiveness of our method in reconciling the fidelity-editability trade-off.
</p>

## 🚀 Run
Note: The current version of the uploaded code is somewhat disorganized and still undergoing revisions. A cleaner, well-organized version will be uploaded once the final adjustments are made.

## 🖊️ BibTeX
If you find this project useful in your research, please consider cite:

```bibtex
@inproceedings{jin2024customized,
  title={customized generation reimagined: fidelity and editability harmonized}, 
  author={Jian Jin and Yang Shen and Zhenyong Fu and Jian Yang},
  booktitle={European Conference on Computer Vision},
  year={2024}
}
```

## 🙏 Acknowledgements
This code is based on the [Stable Diffusion](https://github.com/CompVis/stable-diffusion) and [Custom Diffusion](https://github.com/adobe-research/custom-diffusion). Thank them for their outstanding work.

## 📧 Contact
Should you have any question or suggestion, please contact <jinj@njust.edu.cn>.




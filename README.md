# JupyterLab kernel configuration for the LSST science pipelines

## Introduction
This repository contains a [kernel specification](https://jupyter-client.readthedocs.io/en/stable/kernels.html) for executing [JupyterLab](https://jupyterlab.readthedocs.io/en/stable/) notebooks which use the DESC science environment.

Once deployed in the host where your *JupyterLab notebook server executes* (e.g. your laptop or a remote server such as the ones at [CC-IN2P3](https://doc.lsst.eu), you will be able to launch notebooks which use a Python interpreter configured with all the packages specific to the DESC software distribution.

When you launch JupyterLab, you will see a screen similar to the one below:

![Jupyter Launcher](./launcher.png)

Push the `desc` button to launch a server already configured to use DESC science pipelines

## Dependencies
<!-- This kernel specification requires that the LSST science pipelines are installed on the host where JupyterLab executes, under `/cvmfs/sw.lsst.eu` (see [https://sw.lsst.eu](https://sw.lsst.eu) for more information). The hosts at the [CC-IN2P3 login farm](https://doc.lsst.eu/ccin2p3/ccin2p3.html#login-farm) are configured this way.
 -->
## Installation

Execute the instructions below in the computer where you run JupyterLab (e.g. your laptop or a server in CC-IN2P3 login farm).

```
git clone https://github.com/airnandez/desc-jupyter-kernel.git /tmp/desc-jupyter-kernel
cd /tmp/desc-jupyter-kernel
bash ./install.sh
```

After a successful installation, you will find a directory located according to the operating system you deploy on, as follows:

| Operating system   | Installation directory                            |
| ------------------ |:--------------------------------------------------|
| Linux              | `$HOME/.local/share/jupyter/kernels/desc` |
| macOS              | `$HOME/Library/Jupyter/kernels/desc`      |

This directory is populated with files needed by JupyterLab to launch your notebook.

## Credits

### Author
This tool was developed and are maintained by Fabio Hernandez at [IN2P3 / CNRS computing center](http://cc.in2p3.fr) (Lyon, France).

## License
Copyright 2020 Fabio Hernandez

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

[http://www.apache.org/licenses/LICENSE-2.0](http://www.apache.org/licenses/LICENSE-2.0)

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.


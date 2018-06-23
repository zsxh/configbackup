export JAVA_HOME=/usr/local/jdk
export MAVEN_HOME=/usr/local/maven
export PATH=$JAVA_HOME/bin:$MAVEN_HOME/bin:$PATH

export PYENV_ROOT=$HOME/.pyenv
export PYTHONUSERBASE=$HOME/.local
export PATH=$PYENV_ROOT/bin:$PYTHONUSERBASE/bin:$PATH

export CUDA_PATH=/usr/local/cuda
export LD_LIBRARY_PATH=/usr/local/cuda/lib64:/usr/local/cuda/extras/CUPTI/lib64
export PATH=$PATH:$CUDA_PATH:$CUDA_PATH/bin:$LD_LIBRARY_PATH

# 放在最后防止环境变量改变引起其他问题
if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
fi
if command -v pipenv 1>/dev/null 2>&1; then
  eval "$(pipenv --completion)"
fi

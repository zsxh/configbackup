export JAVA_HOME=/usr/local/jdk
export MAVEN_HOME=/usr/local/maven

export PYENV_ROOT=$HOME/.pyenv
export PYTHONUSERBASE=$HOME/.local

export CUDA_PATH=/opt/cuda
export LD_LIBRARY_PATH=$CUDA_PATH/lib64:$CUDA_PATH/extras/CUPTI/lib64

export PATH=$PYENV_ROOT/bin:$PYTHONUSERBASE/bin:$JAVA_HOME/bin:$MAVEN_HOME/bin:$CUDA_PATH:$CUDA_PATH/bin:$LD_LIBRARY_PATH:/usr/local/sbin:/usr/local/bin:/usr/bin:/usr/lib/jvm/default/bin:/usr/bin/site_perl:/usr/bin/vendor_perl:/usr/bin/core_perl

export LANG=en_US.UTF-8
export LANGUAGE=en_US.UTF-8

# 放在最后防止环境变量改变引起其他问题
if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
fi
if command -v pipenv 1>/dev/null 2>&1; then
  eval "$(pipenv --completion)"
fi

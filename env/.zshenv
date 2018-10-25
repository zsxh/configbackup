export JAVA_HOME=/usr/local/jdk
export MAVEN_HOME=/usr/local/maven

export PYENV_ROOT=$HOME/.pyenv
export PYTHONUSERBASE=$HOME/.local

export CUDA_PATH=/opt/cuda
export LD_LIBRARY_PATH=/usr/lib/openssl-1.0:$CUDA_PATH/lib64:$CUDA_PATH/extras/CUPTI/lib64

export JULIA_HOME=/usr/local/julia

export PATH=$PYENV_ROOT/bin:$PYTHONUSERBASE/bin:$JAVA_HOME/bin:$MAVEN_HOME/bin:$CUDA_PATH:$CUDA_PATH/bin:$LD_LIBRARY_PATH:$JULIA_HOME/bin:/usr/local/sbin:/usr/local/bin:/usr/bin:/usr/lib/jvm/default/bin:/usr/bin/site_perl:/usr/bin/vendor_perl:/usr/bin/core_perl

export LANG=en_US.UTF-8
export LANGUAGE=en_US.UTF-8

export GTK_IM_MODULE=ibus
export QT_IM_MODULE=ibus
export XMODIFIERS=@im=ibus

# 放在最后防止环境变量改变引起其他问题
if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
fi
if command -v pipenv 1>/dev/null 2>&1; then
  eval "$(pipenv --completion)"
fi

# 触摸板双指水平滑动
eval "$(gsettings set com.deepin.dde.touchpad horiz-scroll-enabled true)"

# TLDR settings
export TLDR_CACHE_ENABLED=1
export TLDR_CACHE_MAX_AGE=720 # hours

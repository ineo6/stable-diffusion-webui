#!/bin/bash

prefixUrl='ghproxy.com'

options=("ghproxy.com" "自营加速源" "ghps.cc" "gh.ddlc.top" "hub.gitmirror.com" "gh.con.sh")

echo '请选择一个加速源：'
select opt in "${options[@]}"
do
    case $opt in
        "自营加速源")
        prefixUrl='https://gh.idayer.com/'
        break
        ;;
        "ghproxy.com")
            prefixUrl='https://mirror.ghproxy.com/'
            break
            ;;
        "ghps.cc")
            prefixUrl='https://ghps.cc/'
            break
            ;;
        "gh.ddlc.top")
            prefixUrl='https://gh.ddlc.top/'
            break
            ;;
        "hub.gitmirror.com")
            prefixUrl='https://hub.gitmirror.com/'
            break
            ;;
        "gh.con.sh")
            prefixUrl='https://gh.con.sh/'
            break
            ;;
        *)
            echo "无效的选择！"
            exit 1
            ;;
    esac
done

export WEBUI_EXTENSIONS_INDEX="${prefixUrl}https://raw.githubusercontent.com/AUTOMATIC1111/stable-diffusion-webui-extensions/master/index.json"
export GFPGAN_PACKAGE="${prefixUrl}https://github.com/TencentARC/GFPGAN/archive/8d2447a2d918f8eba5a4a01463fd48e45126a379.zip"
export CLIP_PACKAGE=${prefixUrl}https://github.com/openai/CLIP/archive/d50d76daa670286dd6cacf3bcd80b5e4823fc8e1.zip
export OPENCLIP_PACKAGE="${prefixUrl}https://github.com/mlfoundations/open_clip/archive/bb6e834e9c70d9c27d0dc3ecedeebeaeb1ffad6b.zip"
export STABLE_DIFFUSION_REPO="${prefixUrl}https://github.com/Stability-AI/stablediffusion.git"
export STABLE_DIFFUSION_XL_REPO="${prefixUrl}https://github.com/Stability-AI/generative-models.git"
export K_DIFFUSION_REPO="${prefixUrl}https://github.com/brkirch/k-diffusion.git"
export K_DIFFUSION_COMMIT_HASH="51c9778f269cedb55a4d88c79c0246d35bdadb71"
export CODEFORMER_REPO="${prefixUrl}https://github.com/sczhou/CodeFormer.git"
export BLIP_REPO="${prefixUrl}https://github.com/salesforce/BLIP.git"


filename="webui-user.sh"
start_tag="# env start"
end_tag="# env end"

envStr="export WEBUI_EXTENSIONS_INDEX=${WEBUI_EXTENSIONS_INDEX}
export GFPGAN_PACKAGE=${GFPGAN_PACKAGE}
export CLIP_PACKAGE=${CLIP_PACKAGE}
export OPENCLIP_PACKAGE=${OPENCLIP_PACKAGE}
export STABLE_DIFFUSION_REPO=${STABLE_DIFFUSION_REPO}
export STABLE_DIFFUSION_XL_REPO=${STABLE_DIFFUSION_XL_REPO}
export K_DIFFUSION_REPO=${K_DIFFUSION_REPO}
export K_DIFFUSION_COMMIT_HASH=${K_DIFFUSION_COMMIT_HASH}
export CODEFORMER_REPO=${CODEFORMER_REPO}
export BLIP_REPO=${BLIP_REPO}"

# 判断文件是否存在
if [ -f "$filename" ]; then
    # 替换开始标记之后至结束标记之前的内容
    sed -i '' '/'"$start_tag"'/,/'"$end_tag"'/d' "$filename"

    # sed -i '' '
    # :a
    # N
    # $!ba
    # s/'"$start_tag"'.*'"$end_tag"'/g' "$filename"

    cat >> ${filename} <<EOS
$start_tag
$envStr
$end_tag
EOS

    echo "更新成功！"
else
  echo "未找到 $filename 文件，请在stable-diffusion-webui目录中执行本脚本！"
fi

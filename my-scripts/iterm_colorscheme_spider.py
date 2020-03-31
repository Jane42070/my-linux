#!/usr/bin/env python3.8
# -*- coding: utf-8 -*-
# 导入必要的包
import re
import requests
from progress.bar import Bar


def main():
    """
    新式类 main 实现模拟浏览器访问爬取 itermcolorschemes 网站的所有主题的 url
    写入到 itermcolor.txt 文件中
    通过 requests 请求模拟浏览器访问网站
    """
    # 注入 headers
    headers = {
        "user-agent":
        "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_3) Apple" +
        "WebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36"
    }

    # 通过 get 方式取得服务器响应，用 response 存储
    response = requests.get("https://iterm2colorschemes.com/", headers=headers)
    data = response.text
    with open("itermcolor.txt", mode="w+", encoding="UTF-8") as f:
        f.write(data)
        print("saving as text...")
        f.close()
    theme_https_list = re.findall(r'<p><a href="(.*?)"', data)
    theme_name_list = re.findall(r'<strong>(.*?)</strong>', data)
    # print(theme_name_list)
    # print(len(theme_name_list))
    # print(len(theme_https_list))
    bar = Bar('Downloading',
              max=len(theme_https_list),
              fill='#',
              suffix='%(percent)d%%')
    for i in range(len(theme_https_list)):
        # print(i)
        response = requests.get(theme_https_list[i], headers=headers)
        if response.status_code == 200:
            data = response.text
            with open(theme_name_list[i] + ".itermcolors",
                      mode="w+",
                      encoding="UTF-8") as f:
                f.write(data)
                # print("\rDownloading %s" % theme_name_list[i], end="")
                f.close()
        else:
            print("\rConnecting %s.itermcolors falied, skipping..." %
                  theme_name_list[i],
                  end="")
        bar.next()
    bar.finish()


if __name__ == '__main__':
    main()

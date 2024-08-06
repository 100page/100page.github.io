# GitHub Pages
: 깃허브에서 지원하는 정적 사이트 호스팅 서비스  

- jekyll
- hexo 
- next
- nuxt
- gatsbyjs


**guide**   
https://guides.github.com/features/pages/   
https://docs.github.com/en/github/working-with-github-pages/getting-started-with-github-pages



## jekyll
: 텍스트 변환 엔진  
: 마크업 언어나 마크다운으로 작성한 문서를 설정한 규칙에 맞춰 정적 사이트 생성

```bash
gem install jekyll bundler

# 블로그 생성
jekyll new example 

# 실행
cd example 
bundle exec jekyll serve


# 정적 사이트 생성
jekyll build

# 변화를 감지해 재생성
jekyll build --watch

# 실행
jekyll serve
localhost:4000
```
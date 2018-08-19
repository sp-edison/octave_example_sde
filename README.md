# SDE 형태의 1개 입력파일 읽기 Octave 언어

EDISON 시뮬레이션 SW 개발자를 위한 1개의 SDE 입력 파일 읽어, 입력파일안에 있는 변수값을 출력하는 octave언어 예제 파일입니다.

```
bin/
 - simrc
 - run.m     
inp/
 - input.dat 
```

simrc의 경우 EDISON 시스템에서 octave 모듈을 불러오는 명령어가 포함되어 있으며, bulb에서 해당 코드 실행시 ```source simrc``` 명령어를 통해 octave 모듈을 불러와야 합니다.

입력 파일의 경우에는 변수와 값 구분자를 ' '을 사용하였으며, 변수와 변수 사이를 구분하기 위해 ' \n '를 사용하였습니다. 파일로 입력을 받으며, 샘플 입력 파일은 아래와 같으며, **inp** 폴더에 **input.dat** 로 저장되어 있습니다.

```
INT1 42
REAL1 42.112
LIST1 a
VECTOR1 [ 1 0 0 ]
```



## 설치하기

zip 파일을 다운로드 받아 압축을 풀거나 ```git clone``` 명령어를 이용하여, 프로젝트를 가져올 수 있습니다.

```bash
$ git clone https://github.com/sp-edison/octave_example_sde.git
```

```bash
$ cd ../bin
$ ./run.r -i ../inp/input.dat
octave: X11 DISPLAY environment variable not set
octave: disabling GUI features
warning: docstring file '/SYSTEM/octave-4.0.3/share/octave/4.0.3/etc/built-in-docstrings' not found
warning: function ./test.m shadows a core library function
input.dat
 3232
 3424.2
a

{
  [1,1] = 0
  [2,1] = 0
  [3,1] =  1
}
```


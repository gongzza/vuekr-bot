# vuekr-bot

Vue.js 한국어 사용자 모임의 slack에서 돌아가고 있는 [Hubot][hubot]입니다.
[hubot]: http://hubot.github.com

## Running vuekr-bot Locally

Hubot은 로컬에서 실행하기 쉽습니다.

```
$ bin/hubot
vuekr-bot>
```

그리고 `vuekr-bot help`명령으로 실행 가능한 명령어들을 확인할 수 있습니다.

```
vuekr-bot> vuekr-bot help
unpkg -l, --list - return searched all packages
unpkg all -v, --version - get all watching packages version
unpkg package - get package's unpkg url of latest version
unpkg package -v, --version - get package version
vuekr-bot adapter - Reply with the adapter
vuekr-bot echo <text> - Reply back with <text>
vuekr-bot help - Displays all of the help commands that Hubot knows about.
vuekr-bot help <query> - Displays all help commands that match <query>.
vuekr-bot ping - Reply with pong
vuekr-bot the rules - Make sure hubot still knows the rules.
vuekr-bot time - Reply with current time
```

## Scripting
`scripts/example.coffee` 예제가 있습니다. 또는 [Scripting Guide][scripting-docs]를 참조하시면 도움이 될 겁니다.

[scripting-docs]: https://github.com/github/hubot/blob/master/docs/scripting.md

## external-scripts
플러그인을 추가할 경우 `external-scripts.json`에 추가해 주어야 합니다.

1. Use `npm install --save` to add the package to `package.json` and install it
```
$ npm install --save hubot-unpkg
```

2. Add the package name to `external-scripts.json` as a double quoted string
``` js
[
  ...
  "hubot-unpkg"
]
```

## Welcome
vuekr-bot 기능중 환영인사가 있습니다. #general채널에 입장할 경우 환영 메시지와 DM(Direct Message)으로 채널 설명 및 시작하기 사이트들을 보냅니다.

환영 메시지를 변경하고 싶으시거나, 채널이 추가되었거나, 시작하시는 분들에게 추천하고 싶은 좋은 사이트가 생길 경우 `welcome.json`을 수정하시면 됩니다.
